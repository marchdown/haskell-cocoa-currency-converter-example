#!/usr/bin/python
# -*- coding: utf-8 -*-
import sys
import os
import shutil
from subprocess import call

env = os.environ.get

# Adjust these settings for your project!
# TODO: These settings can surely be extracted automatically from Xcode...
frameworks = ["Cocoa"]

# this object files will be replaced by Haskell
dummy_objectfiles = ["HSOBJC_dummy_C.o"]  

hssource = "Main.hs"




print "Starting Haskell build phase..."

# STEP 1
print "parsing filelist..."
filelist_path = os.path.join(env('OBJECT_FILE_DIR_normal'), env('CURRENT_ARCH'),  
                             env('EXECUTABLE_NAME') + ".LinkFileList")

with open(filelist_path, 'r') as f:
    stripped_lines = (x.strip() for x in f.readlines())
    filelist = [('"%s"' % line) for line in stripped_lines 
                if os.path.basename(line) not in dummy_objectfiles]
		 

# STEP 2
print "Building Haskell File(s)"
# TODO: Should be done with cabal? (But can cabal include *.o files??)
framework_args = " ".join("-framework " + x for x in frameworks)
objects_path = os.path.join(env('OBJECT_FILE_DIR_normal'),
                            env('CURRENT_ARCH'), 
                            "*.o")
args = " ".join(["-O", "--make", "-threaded",
                 hssource,
                 '-o "./' + env('EXECUTABLE_NAME') + '"',
                 " ".join(filelist),
                 framework_args])
                 
print "ghc " + args
                
retcode = call("ghc " + args, shell=True)
if retcode != 0:
    sys.exit(retcode)
    

# STEP 3
# (somehow building the executable directly in the target path
# seems not to overwrite the c-executable)
print "moving executable..."
exec_path = os.path.join(env('BUILT_PRODUCTS_DIR'),
                         env('EXECUTABLE_PATH'))
shutil.move(env('EXECUTABLE_NAME'), 
            exec_path)

