function sox_now_next --wraps='nwg-wrapper -s  sox_now_next.sh -r 1000 -c date-wttr.css -p right -mr 50 -a start -mt 50 -j left' --description 'alias sox_now_next nwg-wrapper -s  sox_now_next.sh -r 1000 -c date-wttr.css -p right -mr 50 -a start -mt 50 -j left'
  nwg-wrapper -s  sox_now_next.sh -r 1000 -c date-wttr.css -p right -mr 50 -a start -mt 50 -j left $argv
        
end
