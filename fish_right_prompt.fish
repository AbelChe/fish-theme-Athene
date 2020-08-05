# Show right prompt
function fish_right_prompt
  set_color bfbfbf
  echo '['(date "+%H:%M:%S")']'
  set_color normal
end

