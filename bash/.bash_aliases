# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias ls='ls -F --color=auto --show-control-chars'

# some git aliases
alias ga='git add'
alias gaa='git add .'
alias gap='git add -p'
alias gb='git branch'
alias gba='git branch -a'
alias gc='git commit'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcod='git checkout develop'
alias gcom='git checkout master'
alias gcos='git checkout staging'
alias gd='git diff'
alias gda='git diff HEAD'
alias gds='git diff --staged'
alias gf='git fetch'
alias gl='git log'
alias glf='git log --oneline | grep -i '
alias glg='git log --graph --oneline --decorate --all'
alias gls='git log --oneline'
alias gp='git push'
alias gr='git reset'
alias gra='git reset HEAD'
alias gs='git status'
alias gss='git status --short'

#flatpak
alias brave="flatpak run com.brave.Browser > /dev/null 2>&1 & disown"
alias discord="flatpak run com.discordapp.Discord > /dev/null 2>&1 & disown"
alias obsidian="flatpak run md.obsidian.Obsidian > /dev/null 2>&1 & disown"
