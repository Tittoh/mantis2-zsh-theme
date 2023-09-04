ZSH_THEME_GIT_PROMPT_PREFIX='['
ZSH_THEME_GIT_PROMPT_SUFFIX=']'
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[magenta]%} ±"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} +"
ZSH_THEME_GIT_PROMPT_DIVERGED="%{$fg[red]%} ⇕"
ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg[blue]%} ⇓"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg[green]%} ⇑"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[yellow]%} +"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[yellow]%} +"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[yellow]%} -"


RPROMPT='%(?.✔.%{$fg[red]%}✘%f)'
PROMPT='
╭⎯ $(git_prompt_info)$(git_prompt_status)%{$reset_color%}
╰→ %1~ $ '
