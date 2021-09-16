# The code is test on Big Sur 11.5.2, 2018 MacBook Pro 15
# haskell-bug-macos11-can-not-load-opengl
# See cabal file

# resolver ghc-13.28
## diagram package is included
```
    stack build haskell-bug-macos11-can-not-load-cocoa
```

### ERROR:
```
    can not load framework: Cocoa (not found)
```
* diagram is using OpenGL too
[Haskell diagrams](https://hackage.haskell.org/package/diagrams)
[Same Bug Here](https://github.com/bravit/hid-examples/issues/7)
