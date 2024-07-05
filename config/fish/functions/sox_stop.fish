function sox_stop --wraps='pkill -f play' --description 'alias sox_stop pkill -f play'
  pkill -f play $argv
        
end
