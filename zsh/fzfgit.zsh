#GIT
# alias gco='git checkout $(gb | fzf)'
# alias gcor='git checkout --track $(gb | fzf)'
alias gall='git add .'
alias gc='git commit -a -m'
alias gdiff='git diff'
alias gitpull='sh ~/scripts/gitpull.sh'
alias gmain='git checkout main'
alias gp='git pull --all'
alias gpl='git pull --all'
alias gps='git push'
alias gsp='git push'
alias gpush='sh ~/scripts/gitpush.sh'
alias gs='git status'
alias gsw='git switch $(gb | fzf)'
alias glogp='git log -10 -p'

glog() {
 git log --graph --decorate -30 --all --date-order --date=format:'%Y-%m-%d %H:%M:%S' --pretty=format:'%C(cyan)%h%Creset %C(black bold)%ad%Creset%C(auto)%d %s'
}


# fbr - checkout git branch (including remote branches)
#fuzzy show branches
gb() {
  local branches branch
  branches=$(git branch --all | grep -v HEAD) &&
  branch=$(echo "$branches" |
           fzf-tmux -d $(( 2 + $(wc -l <<< "$branches") )) +m) &&
  git checkout $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
}
gbranch() {
  local branches branch
  branches=$(git branch --all | grep -v HEAD) &&
  branch=$(echo "$branches" |
           fzf-tmux -d $(( 2 + $(wc -l <<< "$branches") )) +m) &&
  git checkout $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
}

# fco - checkout git branch/tag
# fuzzy checkout
gcheckout() {
  local tags branches target
  branches=$(
    git --no-pager branch --all \
      --format="%(if)%(HEAD)%(then)%(else)%(if:equals=HEAD)%(refname:strip=3)%(then)%(else)%1B[0;34;1mbranch%09%1B[m%(refname:short)%(end)%(end)" \
    | sed '/^$/d') || return
  tags=$(
    git --no-pager tag | awk '{print "\x1b[35;1mtag\x1b[m\t" $1}') || return
  target=$(
    (echo "$branches"; echo "$tags") |
    fzf --no-hscroll --no-multi -n 2 \
        --ansi) || return
  git checkout $(awk '{print $2}' <<<"$target" )
}


# fcoc - checkout git commit
gcommit_formated() {
  local commits commit
  commits=$(git log --decorate -30 --all --date-order --date=format:'%Y-%m-%d %H:%M:%S' --pretty=format:'%C(cyan)%h%Creset %C(black bold)%ad%Creset%C(auto)%d %s') &&
  # commits=$(git log --graph --decorate -30 --all --date-order --date=format:'%Y-%m-%d %H:%M:%S' --pretty=format:'%C(cyan)%h%Creset %C(black bold)%ad%Creset%C(auto)%d %s') &&
  commit=$(echo "$commits" | fzf --tac +s +m -e) &&
  git checkout $(echo "$commit" | sed "s/ .*//")
}
gcommit() {
  local commits commit
  commits=$(git log --pretty=oneline --abbrev-commit --reverse) &&
  commit=$(echo "$commits" | fzf --tac +s +m -e) &&
  git checkout $(echo "$commit" | sed "s/ .*//")
}

# fshow - git commit browser
gbrowser() {
  git log --graph --color=always \
      --format="%C(auto)%h%d %s %C(black)%C(bold)%cr" "$@" |
  fzf --ansi --no-sort --reverse --tiebreak=index --bind=ctrl-s:toggle-sort \
      --bind "ctrl-m:execute:
                (grep -o '[a-f0-9]\{7\}' | head -1 |
                xargs -I % sh -c 'git show --color=always % | less -R') << 'FZF-EOF'
                {}
FZF-EOF"
}
