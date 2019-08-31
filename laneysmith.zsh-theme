local ret_status="%(?:%{$fg[blue]%}➜ :%{$fg[magenta]%}➜ )"
PROMPT='%{$fg[magenta]%}%c%{$reset_color%} $(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=") %{$fg[red]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN=")"