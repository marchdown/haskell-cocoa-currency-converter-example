a work in progress

Current implementation (GHC output binary)
===========================================

OK, this method works. The steps run by XCode after you hit `Build`:

* A normal xcode build is performed with a `main` symbol from `HSOBJC_dummy_C.m`.
* `HSOBJC_dummy_C.m` also defines symbol place holders for exported Haskell functions
* Run a custom python script that
    * delete the object file generated from HSOBJC_dummy_C inside XCode environment
    * compile `Main.hs` with the rest of object files from XCode environment
    * replace the XCode generated binary with `GHC`'s output

Reference:

* <http://tscheff.blogspot.com/2010/02/currync-converter-using-haskell-with.html>

Alternative method (static shared library)
===========================================

I could not get shared library to work with XCode, ignored.

License: BSD.