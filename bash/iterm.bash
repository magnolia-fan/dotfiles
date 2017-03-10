# $1 - title
function __iterm_set_title {
    echo -ne "\033]0;$1\007"
}

# $1 - basedir
function __iterm_set_bg_color_by_dir {
    case $1 in
    "example" ) __iterm_set_bg_rgb 0 150 255 ;;
    * ) __iterm_set_bg_reset ;;
    esac
}

# $1 red   (0-255)
# $2 green (0-255)
# $3 blue  (0-255)
function __iterm_set_bg_rgb {
    __iterm_set_bg_channel red $1
    __iterm_set_bg_channel green $2
    __iterm_set_bg_channel blue $3
}

function __iterm_set_bg_reset {
    echo -ne "\033]6;1;bg;*;default\a"
}

# $1 channel (red, green, blue)
# $2 brightness (0-255)
function __iterm_set_bg_channel {
    echo -ne "\033]6;1;bg;$1;brightness;$2\a"
}
