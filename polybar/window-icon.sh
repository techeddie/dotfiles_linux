#!/bin/bash
class=$(xdotool getactivewindow getwindowclassname 2>/dev/null)
case $class in
  # browsers
  Brave*|brave*)                echo "%{T2}$(printf '\uf268')%{T-}" ;;  # brave
  [Ff]irefox*|[Ff]loorp*)      echo "%{T2}$(printf '\uf269')%{T-}" ;;  # firefox
  [Cc]hromium*|Chrom*)          echo "%{T2}$(printf '\uf268')%{T-}" ;;  # chromium

  # terminals
  kitty*)                       echo "%{T2}$(printf '\ue7a2')%{T-}" ;;  # kitty
  [Gg]hostty*|[Ww]ezterm*)     echo "%{T2}$(printf '\uf489')%{T-}" ;;  # terminal
  *[Tt]erm*|[Gg]uake*)         echo "%{T2}$(printf '\uf489')%{T-}" ;;  # generic term

  # editors / IDE
  [Cc]ode*|sublime_text*)       echo "%{T2}$(printf '\uf121')%{T-}" ;;  # code
  [Nn]vim*|[Vv]im*)            echo "%{T2}$(printf '\ue62b')%{T-}" ;;  # neovim

  # file managers
  [Tt]hunar*|[Pp]cmanfm*)      echo "%{T2}$(printf '\uf07b')%{T-}" ;;  # folder
  [Yy]azi*)                     echo "%{T2}$(printf '\uf07c')%{T-}" ;;  # folder open

  # media
  mpv*|[Mm]pv*|[Vv]lc*)                 echo "%{T2}$(printf '\uf144')%{T-}" ;;  # play
  [Kk]denlive*|[Ss]hotcut*)    echo "%{T2}$(printf '\uf008')%{T-}" ;;  # film
  OBS*)                    echo "%{T2}$(printf '\uf03d')%{T-}" ;;  # video camera

  # graphics
  [Gg]imp*)                     echo "%{T2}$(printf '\uf1fc')%{T-}" ;;  # paint brush

  # communication
  [Tt]hunderbird*)              echo "%{T2}$(printf '\uf0e0')%{T-}" ;;  # envelope
  [Ss]ignal*)                   echo "%{T2}$(printf '\uf086')%{T-}" ;;  # speech bubble
  [Tt]elegram*)                 echo "%{T2}$(printf '\uf1d8')%{T-}" ;;  # paper plane
  [Hh]ex[Cc]hat*)               echo "%{T2}$(printf '\uf086')%{T-}" ;;  # speech bubble

  # passwords / security
  [Kk]ee*|[Bb]itwarden*)       echo "%{T2}$(printf '\uf084')%{T-}" ;;  # key

  # system tools
  [Gg]parted*|Gnome-disks*)    echo "%{T2}$(printf '\uf0a0')%{T-}" ;;  # hdd
  [Vv]irt*[Mm]anager*)          echo "%{T2}$(printf '\uf233')%{T-}" ;;  # server
  [Gg]nome-[Ss]ystem*)          echo "%{T2}$(printf '\uf200')%{T-}" ;;  # pie chart
  [Pp]avucontrol*)              echo "%{T2}$(printf '\uf028')%{T-}" ;;  # volume
  [Bb]lueman*)                  echo "%{T2}$(printf '\uf294')%{T-}" ;;  # bluetooth
  [Ll]xappearance*|[Kk]vantum*) echo "%{T2}$(printf '\uf1de')%{T-}" ;; # sliders
  [Nn]itrogen*)                 echo "%{T2}$(printf '\uf03e')%{T-}" ;;  # image/wallpaper
  [Tt]imeshift*)                echo "%{T2}$(printf '\uf017')%{T-}" ;;  # clock/backup
  [Ff]lameshot*)                echo "%{T2}$(printf '\uf030')%{T-}" ;;  # camera
  [Rr]emmina*|[Aa]nydesk*)     echo "%{T2}$(printf '\uf0ac')%{T-}" ;;  # globe/remote

  # documents / viewers
  [Ee]vince*|[Oo]kular*)       echo "%{T2}$(printf '\uf1c1')%{T-}" ;;  # pdf
  [Ee]og*|[Xx]n[Vv]iew*)      echo "%{T2}$(printf '\uf03e')%{T-}" ;;  # image
  [Ff]ile-[Rr]oller*)          echo "%{T2}$(printf '\uf1c6')%{T-}" ;;  # archive

  # cloud / sync
  [Nn]extcloud*|[Ss]eafile*)   echo "%{T2}$(printf '\uf0c2')%{T-}" ;;  # cloud

  # notes
  [Oo]bsidian)                 echo "%{T2}$(printf '\uf044')%{T-}" ;;  # asterisk

  # fallback
  *)                            echo "%{T2}$(printf '\uf108')%{T-}" ;;  # desktop
esac
