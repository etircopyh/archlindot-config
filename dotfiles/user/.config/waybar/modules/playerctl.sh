#!/usr/bin/env bash
IFS=$'\n\t'
while true; do
    # requires playerctl>=2.0
    playerctl --follow metadata --format \
        $'{{status}}\t{{position}}\t{{mpris:length}}\t{{artist}} - {{title}} {{duration(position)}}|{{duration(mpris:length)}}' |
    while read -r status position length line; do
        # escape [&<>] for pango formatting, json escaping
        line="${line//&/&amp;}"
        line="${line//>/&gt;}"
        line="${line//</&lt;}"
        line="${line//\"/\\\"}"
        percentage="$(( (100 * position) / length ))"
        case $status in
            Paused) text='"<span foreground=\"#f62459\" size=\"smaller\">'"$line"'</span>"' ;;
            Playing) text=\""<small>$line</small>"\" ;;
            *)text='"<span foreground="#073642">⏹</span>"' ;;
        esac
        printf '%s\n' '{"text":'"$text"',"tooltip":"'"$status"'","class":"'"$percentage"'","percentage":'"$percentage"'}'
    done
    # no current players
    echo '<span foreground=#dc322f>⏹</span>'
    sleep 15
done
