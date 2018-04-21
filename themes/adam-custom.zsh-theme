local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
local b=$(bat)

if [ $b -gt 50 ] ; then
	color='green'
elif [ $b -gt 20 ] ; then
	color='yellow'
else
    color='red'
fi

BAT="%{$fg[$color]%}$(bat)%%%{$reset_color%}"
RPROMPT='%{$fg_bold[green]%}%t%{$reset_color%} $BAT'
PROMPT='${ret_status} %{$fg[cyan]%}[%2~]%{$reset_color%} $(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
