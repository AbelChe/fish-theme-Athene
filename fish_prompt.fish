# name: RobbyRussel
#
# You can override some default options in your config.fish:
#   set -g theme_display_git_untracked no

# Set dirname length
# 0 is show the full path
set -g fish_prompt_pwd_dir_length 0

# Set greeting words
set fish_greeting ''

function _git_branch_name
  echo (command git symbolic-ref HEAD 2> /dev/null | sed -e 's|^refs/heads/||')
end

function _is_git_dirty
  set -l show_untracked (git config --bool bash.showUntrackedFiles)
  set untracked ''
  if [ "$theme_display_git_untracked" = 'no' -o "$show_untracked" = 'false' ]
    set untracked '--untracked-files=no'
  end
  echo (command git status -s --ignore-submodules=dirty $untracked 2> /dev/null)
end

function fish_prompt
  set -l last_status $status
  set -l background_pink (set_color -b ff00af)
  set -l background_cyan (set_color -b cyan)
  set -l background_yellow (set_color -b yellow)
  set -l background_red (set_color -b red)
  set -l background_blue (set_color -b blue)
  set -l background_green (set_color -b green)
  set -l pink (set_color -o ff00af)
  set -l cyan (set_color -o cyan)
  set -l yellow (set_color -o yellow)
  set -l red (set_color -o red)
  set -l blue (set_color -o blue)
  set -l green (set_color -o green)
  set -l normal (set_color normal)

  set ssharrow ''
  if [ -n "$SSH_TTY" ]
    set ssharrow '☁ '
  end

  if test $last_status = 0
      set arrow "$green✔ $normal "
  else
      set arrow "$red❌ $normal "
  end

  if [ (id -u) = "0" ]
      set username "$background_yellow$red" '[⚡ root]' "$normal"
  else
      set username '[' "$USER" ']'
  end

  set -l cwd $cyan(prompt_pwd)

  if [ (_git_branch_name) ]
    set -l git_branch $red(_git_branch_name)
    set git_info "$blue git:($git_branch$blue)"

    if [ (_is_git_dirty) ]
      set -l dirty "$yellow ✗"
      set git_info "$git_info$dirty"
    end
  end

  echo -n -s $ssharrow $arrow $username " $green❤  $normal" $cwd $git_info $normal \n\r
  echo "$green➜ $normal "
end
