{-# LANGUAGE QuasiQuotes       #-}

import Text.RawString.QQ (r)         -- Need QuasiQuotes too 

htmlBody::String -> String
htmlBody s  = [r| hello |]

{-|

* OpenGL in try.cabal
* Use template 

-}
main = do 
        print "Hello World"
        print $ htmlBody "hi"
