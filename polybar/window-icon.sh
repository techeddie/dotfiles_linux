#!/bin/bash
class=$(xdotool getactivewindow getwindowclassname 2>/dev/null)
case $class in
  Brave*|brave*|Chrom*)  echo "%{T3}$(printf '\uf268')%{T-}" ;;
  kitty*)                echo "%{T3}$(printf '\uf120')%{T-}" ;;
  Kee*)                  echo "%{T3}$(printf '\uf084')%{T-}" ;;
  [Nn]vim*|neovim*)      echo "%{T3}$(printf '\ue62b')%{T-}" ;;
  [Yy]azi*)              echo "%{T3}$(printf '\uf07c')%{T-}" ;;
  [Ff]irefox*)           echo "%{T3}$(printf '\uf269')%{T-}" ;;
  *)                     echo "%{T3}$(printf '\uf108')%{T-}" ;;
esac
