#function prompt_char {
#    git branch >/dev/null 2>/dev/null && echo '±' && return
#    hg root >/dev/null 2>/dev/null && echo '☿' && return
#    echo '%(!.!.➜)'
#}

function get_RAM {
  free -m | awk '{if (NR==3) print $4}' | xargs -i echo 'scale=1;{}/1000' | bc
}

function get_nr_jobs() {
  jobs | wc -l
}

PROMPT='%{$fg[green]%}%n@%m %{$fg[cyan]%}%2c %{$fg[blue]%}$(git_prompt_info)%{$fg[blue]%} %{$fg_bold[magenta]%}➜ % %{$reset_color%}'

RPROMPT='%(?, ,:()%{$fg[green]%}[$(get_nr_jobs),$(get_RAM)]%{$fg[magenta]%}%*%{$reset_color%}'

#ZSH_THEME_HG_PROMPT_PREFIX="hg:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg_bold[yellow]%}✗%{$reset_color%}"
#ZSH_THEME_HG_PROMPT_DIRTY="%{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
