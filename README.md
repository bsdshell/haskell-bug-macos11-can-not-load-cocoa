# The code is test on Big Sur 11.5.2, 2018 MacBook Pro 15
# haskell-bug-macos11-can-not-load-cocoa
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

### Saturday, 18 September 2021 14:15 PDT
## It seems to me there is NO Problem with OpenGL only code.
## PlotGeometry and many other OpenGL program are running OK
```
	rm -rf .stack-work
	stack build PlotGeometry
```
## But if I import AronHtml2.hs file "can not load framework Cocoa" error pops up again
## There is `TextRawString.QQ` in `AronHtml2.hs`, it might cause the error?
```
	stack ghci 
```
# `stack ghci` Error Message

```bash
Configuring GHCi with the following packages: PlotGeometry
GHCi, version 8.6.5: http://www.haskell.org/ghc/  :? for help
<command line>: can't load framework: Cocoa (not found)
```
