# dashed separator size
function mantis_dash {
  # check either virtualenv or condaenv variables
  local python_env="${VIRTUAL_ENV:-$CONDA_DEFAULT_ENV}"

  # if there is a python virtual environment and it is displayed in
  # the prompt, account for it when returning the number of dashes
  if [[ -n "$python_env" && "$PROMPT" = \(* ]]; then
    echo $(( COLUMNS - ${#python_env} - 3 ))
  else
    echo $COLUMNS
  fi
}

# Must use Powerline font, e.g Fira Code, for \uE0A0 to render.
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}\uE0A0 "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[yellow]%}!"
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[magenta]%} ±"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} +"
ZSH_THEME_GIT_PROMPT_DIVERGED="%{$fg[red]%} ⇕"
ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg[blue]%} ⇓"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg[green]%} ⇑"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[yellow]%} +"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[yellow]%} +"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[yellow]%} -"


RPROMPT='%(?.%{$fg[green]%}✔%f.%{$fg[red]%}✘%f)'
PROMPT='${FG[236]}${(l.$(mantis_dash)..─.)}%{$reset_color%}
╭─📁 %{$fg_bold[cyan]%}%c%{$reset_color%} $(git_prompt_info)$(git_prompt_status)%{$reset_color%}
╰─❯$ '
