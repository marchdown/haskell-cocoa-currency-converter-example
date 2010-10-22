a work in progress

Current implementation (GHC output binary)
===========================================

OK, this method works. Here's the workflow:

* A normal xcode build is performed using `main` from `HSOBJC_dummy_C.m`.
* `HSOBJC_dummy_C.m` also defines symbol place holders for exported Haskell functions
* A custom script that
    * compile `Main.hs` with object code from XCode environment
    * replace the XCode binary with `GHC`'s output

Reference:

* <http://tscheff.blogspot.com/2010/02/currync-converter-using-haskell-with.html>

Alternative method (static shared library)
===========================================

I could not get shared library work using XCode and GHC, so ignored.

License: BSD.