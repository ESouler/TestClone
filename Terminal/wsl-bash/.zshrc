# Colormap codes
#function colormap() {
#  for i in {0..255}; do print -Pn "%K{$i}" %k%F{$i}${(l:3::0:)i}$f " ${${(M)$((i%6)):#3}:+$'\n'}; done
#}


# identify which distribution is running
_distro=$(awk '/^ID=/' /etc/*-release | awk -F'=' '{ print tolower($2) }')

#set an icon based on the distro
case $_distro in
    *kali*)                  ICON=" ";;
    *arch*)                  ICON=" ";;
    *Windows*)               ICON="󰍲  ";;
    *debian*)                ICON=" ";;
    *raspbian*)              ICON=" ";;
    *ubuntu*)                ICON=" ";;
    *elementary*)            ICON=" ";;
    *fedora*)                ICON=" ";;
    *coreos*)                ICON=" ";;
    *gentoo*)                ICON=" ";;
    *mageia*)                ICON="";;
    *centos*)                ICON=" ";;
    *opensuse*|*tumbleweed*) ICON=" ";;
    *sabayon*)               ICON=" ";;
    *slackware*)             ICON=" ";;
    *linuxmint*)             ICON=" ";;
    *alpine*)                ICON=" ";;
    *aosc*)                  ICON="  " ;;
    *nixos*)                 ICON="  ";;
    *devuan*)                ICON="  " ;;
    *manjaro*)               ICON="  ";;
    *rhel*)                  ICON="  ";;
    *macos*)                 ICON=" ";;
    *)                       ICON="  ";;

esac

export STARSHIP_DISTRO="$ICON "
