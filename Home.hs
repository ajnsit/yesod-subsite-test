{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes       #-}
module Home where

import Foundation
import Yesod.Core
import SubData

getHomeR :: Handler Html
getHomeR = defaultLayout $ do
    setTitle "Minimal Multifile"
    [whamlet|
        <p>
            <a href=@{SubsiteOkR SubHomeR}>Subsite OK
        <p>
            <a href=@{SubR $ SubsiteNotOkR SubHomeR}>Subsite Not OK
    |]
