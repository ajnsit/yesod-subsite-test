import Application () -- for YesodDispatch instance
import Foundation
import Yesod.Core
import SubData

main :: IO ()
main = warp 3000 $ App HelloSub
