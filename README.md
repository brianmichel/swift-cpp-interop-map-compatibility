# Swift C++ Interop Map Compatibility

A sample project that let's us test how Swift brings in C++ maps.

## macOS

macOS seems to successfully allow for the calling of `__beginUnsafe()` and `__endUnsafe()` respectively, which allows us to build an iteration loop through all values.

There seems to be a bug where trying to run the package tests claims that a function which does exist does not exist.

## Windows

Windows does **not** allow us to call `__beginUnsafe()` or `__endUnsafe()` and similarly the simple conformance to `CxxDictionary` does not work either.
