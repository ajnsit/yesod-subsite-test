{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell   #-}
{-# LANGUAGE TypeFamilies      #-}
{-# LANGUAGE ViewPatterns      #-}
module Foundation where

import Yesod.Core
import SubData

data App = App
    { getHelloSub :: HelloSub
    }

mkYesodData "App" $(parseRoutesFile "routes")

instance Yesod App
