#!/bin/bash
class=$(xdotool getactivewindow getwindowclassname 2>/dev/null)
case $class in
  Brave*|brave*|Chrom*)  echo "%{T2}$(printf '\uf268')%{T-}" ;;
  kitty*)                echo "%{T2}$(printf '\uf120')%{T-}" ;;
  Kee*)                  echo "%{T2}$(printf '\uf084')%{T-}" ;;
  [Nn]vim*|neovim*)      echo "%{T2}$(printf '\ue62b')%{T-}" ;;
  [Yy]azi*)              echo "%{T2}$(printf '\uf07c')%{T-}" ;;
  [Ff]irefox*)           echo "%{T2}$(printf '\uf269')%{T-}" ;;
  *)                     echo "%{T2}$(printf '\uf108')%{T-}" ;;
esac
