-- singularity color scheme for xmobar
Config { font = "xft:Ubuntu Mono:size=10:antialias=true:hinting=true"
       , borderColor = "#282c34"
       , border = NoBorder
       , bgColor = "#282c34"
       , fgColor = "#bbc2cf"
       , alpha = 255
       , position = TopSize C 100 25
       , textOffset = -1
       , iconOffset = -1
       , lowerOnStart = True
       , pickBroadest = False
       , persistent = True
       , hideOnStart = False
       , allDesktops = True
       , overrideRedirect = True
       , iconRoot = "."
       , commands = [ Run StdinReader
                    , Run Cpu ["-t", "cpu: <total>%"] 10
                    , Run Memory ["-t", "mem: <used>M (<usedratio>%)"] 20
                    , Run Network "enp5s0" ["-t", "net: <rx>k|<tx>k"
                                           , "-L","0","-H","10000000"
                                           , "--normal","#ecbe7b","--high","#ff6c6b"] 10
                    , Run Weather "KNYC" ["-t", "<station>: <tempF>F"] 36000
                    , Run Com "uname" ["-r", "-s"] "" 36000
                    , Run Date "%a %b %_d %Y %H:%M:%S" "date" 10
                    ]
       , sepChar = "%"
       , alignSep = "}{"
       , template = " %StdinReader% }\
                    \{ <fc=#ff6c6b>%cpu%</fc> | <fc=#98be65>%memory%</fc> | <fc=#ecbe7b>%enp5s0%</fc> | <fc=#51afef>%KNYC%</fc> | <fc=#c678dd>%uname%</fc> | <fc=#46d9ff>%date%</fc> "
       }
