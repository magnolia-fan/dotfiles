#
# Attributes
#

_BOLD=$(__bash_escape 1)
_DIM=$(__bash_escape 2)
_ITALIC=$(__bash_escape 3)
_UNDERLINED=$(__bash_escape 4)
_BLINK=$(__bash_escape 5)
# _BRIGHT=$(__bash_escape 6)
_INVERTED=$(__bash_escape 7)
_HIDDEN=$(__bash_escape 8) # E.g. for passwords

_RESET=$(__bash_escape 0)
_RESET_BOLD=$(__bash_escape 21) # Doesn't work?
_RESET_DIM=$(__bash_escape 22)
_RESET_ITALIC=$(__bash_escape 23)
_RESET_UNDERLINED=$(__bash_escape 24)
_RESET_BLINK=$(__bash_escape 25)
# _RESET_BRIGHT=$(__bash_escape 26)
_RESET_INVERTED=$(__bash_escape 27)
_RESET_HIDDEN=$(__bash_escape 28)

#
# Colors
#

_BLACK=$(__bash_escape 30)
_RED=$(__bash_escape 31)
_GREEN=$(__bash_escape 32)
_YELLOW=$(__bash_escape 33)
_BLUE=$(__bash_escape 34)
_MAGENTA=$(__bash_escape 35)
_CYAN=$(__bash_escape 36)
_LIGHT_GRAY=$(__bash_escape 37)
_DARK_GRAY=$(__bash_escape 90)
_LIGHT_RED=$(__bash_escape 91)
_LIGHT_GREEN=$(__bash_escape 92)
_LIGHT_YELLOW=$(__bash_escape 93)
_LIGHT_BLUE=$(__bash_escape 94)
_LIGHT_MAGENTA=$(__bash_escape 95)
_LIGHT_CYAN=$(__bash_escape 96)
_WHITE=$(__bash_escape 97)

_BG_BLACK=$(__bash_escape 40)
_BG_RED=$(__bash_escape 41)
_BG_GREEN=$(__bash_escape 42)
_BG_YELLOW=$(__bash_escape 43)
_BG_BLUE=$(__bash_escape 44)
_BG_MAGENTA=$(__bash_escape 45)
_BG_CYAN=$(__bash_escape 46)
_BG_LIGHT_GRAY=$(__bash_escape 47)
_BG_DARK_GRAY=$(__bash_escape 100)
_BG_LIGHT_RED=$(__bash_escape 101)
_BG_LIGHT_GREEN=$(__bash_escape 102)
_BG_LIGHT_YELLOW=$(__bash_escape 103)
_BG_LIGHT_BLUE=$(__bash_escape 104)
_BG_LIGHT_MAGENTA=$(__bash_escape 105)
_BG_LIGHT_CYAN=$(__bash_escape 106)
_BG_WHITE=$(__bash_escape 107)

_RESET_COLOR=$(__bash_escape 39)
_RESET_BG=$(__bash_escape 49)
