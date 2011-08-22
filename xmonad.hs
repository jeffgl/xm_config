import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import XMonad.Actions.GridSelect
import System.IO

main =
  do
    xmonad $ defaultConfig
      { manageHook = manageDocks <+> manageHook defaultConfig
      , layoutHook = avoidStruts  $  layoutHook defaultConfig
      , modMask = mod4Mask     -- Rebind Mod to the Windows key
	  , terminal = "gnome-terminal"
      }  `additionalKeys`
      [ ((mod4Mask, xK_g), goToSelected defaultGSConfig)
      ]
