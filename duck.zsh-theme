eval my_black='$FG[196]'
eval my_grey_bg='$BG[196]'
eval my_grey='$FG[196]'
eval my_pink='$FG[196]'
eval my_black_bg='$BG[196]'
eval my_cyan='$FG[000]'
eval my_white_fg='$FG[015]'
eval my_gg_bg='$BG[245]'
eval my_gg_fg='$FG[245]'
eval my_term_bg='$BG[235]'
local ret_status="%{$my_black%}%{$my_black_bg%}%{$fg_bold[black]%}%{$reset_color%}%{$my_grey_bg%}%{$my_cyan%}%  %{$reset_color%}%{$my_grey%}%{$my_gg_bg%}%{$my_gg_bg%}%{$my_white_fg%} %~%{$my_gg_fg%}%{$my_term_bg%}"
PROMPT='${ret_status} %{$reset_color%}$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

