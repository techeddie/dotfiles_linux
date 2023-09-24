#NVIM OPEN FILES VIA FZF
  bindkey -s '^o' 'nvim $(fzf)^M'
  bindkey -s '\ef' 'nvim $(fzf)^M'

#FZF - conflict with zsh jump forward
  # ALT-F - cd into the selected directory
  # bindkey -M emacs '\ef' fzf-cd-widget
  # bindkey -M vicmd '\ef' fzf-cd-widget
  # bindkey -M viins '\ef' fzf-cd-widget

  # ALT-D - cd into the selected directory
  bindkey -M emacs '\ed' fzf-cd-widget
  bindkey -M vicmd '\ed' fzf-cd-widget
  bindkey -M viins '\ed' fzf-cd-widget

  # CTRL-H - history
  bindkey -M emacs '^H' fzf-history-widget
  bindkey -M vicmd '^H' fzf-history-widget
  bindkey -M viins '^H' fzf-history-widget

  bindkey -M emacs '\er' fzf-history-widget
  bindkey -M vicmd '\er' fzf-history-widget
  bindkey -M viins '\er' fzf-history-widget

  # CTRL-F - show files
  bindkey -M emacs '^F' fzf-file-widget
  bindkey -M vicmd '^F' fzf-file-widget
  bindkey -M viins '^F' fzf-file-widget

  # ALT-U - jump to beginning-of-line
  bindkey -M emacs '\eu' beginning-of-line
  bindkey -M vicmd '\eu' beginning-of-line
  bindkey -M viins '\eu' beginning-of-line

  # ALT-I - jump to end-of-line
  bindkey -M emacs '\ei' end-of-line
  bindkey -M vicmd '\ei' end-of-line
  bindkey -M viins '\ei' end-of-line

  #CTRL-LEFT/RIGHT jump word
  bindkey "^[[1;5C" forward-word
  bindkey "^[[1;5D" backward-word

  #CTRL-BS - delete word backword
  bindkey '^H' backward-kill-word

  #CLEAR SCREEN
  # bindkey -s '^l' 'clear^M'

  #ALT-F QUIT SHELL
  # bindkey -s '\ek' '^d ^M'

  #LAZYGIT
  bindkey -s '\eg' 'lazygit^M'
  bindkey -s '\el' 'lf ^M'
  bindkey -s '^l' 'lf ^M'
  bindkey -s '\et' 'tmux ^M'
  bindkey -s '\em' 'tmux ^M'
