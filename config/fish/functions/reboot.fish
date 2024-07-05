function reboot --wraps=/sbin/reboot --description 'alias reboot /sbin/reboot'
  /sbin/reboot $argv
        
end
