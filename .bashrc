# .bashrc

# basic settings
[ -f ~/.bashrc.d/.bashrc.basic ] && source ~/.bashrc.d/.bashrc.basic

# alias settings
[ -f ~/.bashrc.d/.bashrc.alias ] && source ~/.bashrc.d/.bashrc.alias

# misc settings
[ -f ~/.bashrc.d/.bashrc.misc ] && source ~/.bashrc.d/.bashrc.misc

# mac or linux settings
case "${OSTYPE}" in
darwin*)
    [ -f ~/.bashrc.d/.bashrc.osx ] && source ~/.bashrc.d/.bashrc.osx
    ;;
linux*)
    [ -f ~/.bashrc.d/.bashrc.linux ] && source ~/.bashrc.d/.bashrc.linux
    ;;
esac

# private settings
[ -f ~/.dotfiles_private/.bashrc ] && source ~/.dotfiles_private/.bashrc

# local settings
[ -f ~/.dotfiles_local/.bashrc ] && source ~/.dotfiles_local/.bashrc

export LIBLAR_SETTINGS='settings_mine'
