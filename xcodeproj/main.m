//
//  main.m
//  CurrencyConverter
//
//  Created by jinjing on 10/22/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "HsFFI.h"

extern void __stginit_Convert ( void );

int main(int argc, char *argv[])
{
    hs_init(&argc, &argv);
    hs_add_root(__stginit_Convert);

    return NSApplicationMain(argc,  (const char **) argv);
    
    hs_exit();
}
