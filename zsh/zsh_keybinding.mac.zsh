#NVIM OPEN FILES VIA FZF
  bindkey -s '^o' 'nvim $(fzf)^M'

  # CTRL-F - show files
  bindkey -M emacs '^F' fzf-file-widget
  bindkey -M vicmd '^F' fzf-file-widget
  bindkey -M viins '^F' fzf-file-widget

  #CTRL-LEFT/RIGHT jump word
  bindkey "^[[1;5C" forward-word
  bindkey "^[[1;5D" backward-word

  #CTRL-BS - delete word backword
  bindkey '^H' backward-kill-word

  #LAZYGIT
  bindkey -s '^g' 'lazygit^M'
  #LF
  bindkey -s '\el' 'lf ^M'
  bindkey -s '^l' 'lf ^M'

  # YAZI
  bindkey -s '^y' 'yazi ^M'
