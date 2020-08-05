# Check tty is ssh or not
function _is_ssh_client
  set -g CHECK_SSH_CLIENT_LOCK_FILE (date "+%s%N" | base64 | md5sum | cut -c 1-32)'.lock'
  if test "$sshclient"
    return 0
  end
  if "$sshclient" = 'y'
    set sshclient
  else
    set sshclient 'n'
  end
  return 0
end
