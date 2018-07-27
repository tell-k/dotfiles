# .bashrc

# basic settings
[ -f ~/.bashrc.d/basic ] && source ~/.bashrc.d/basic
# alias settings
[ -f ~/.bashrc.d/alias ] && source ~/.bashrc.d/alias

# misc settings
[ -f ~/.bashrc.d/misc ] && source ~/.bashrc.d/misc

# mac or linux settings
case "${OSTYPE}" in
darwin*)
    [ -f ~/.bashrc.d/osx ] && source ~/.bashrc.d/osx
    ;;
linux*)
    [ -f ~/.bashrc.d/linux ] && source ~/.bashrc.d/linux
    ;;
esac

# peco settings
[ -f ~/.bashrc.d/peco ] && source ~/.bashrc.d/peco

# private settings
[ -f ~/.dotfiles_private/.bashrc ] && source ~/.dotfiles_private/.bashrc

# local settings
[ -f ~/.dotfiles_local/.bashrc ] && source ~/.dotfiles_local/.bashrc


cd() {
  builtin cd "$@" || return
  [ "$OLDPWD" = "$PWD" ] || case $PWD in
      (*/public_html) echo "Hello! here is public_html!!!!"
    esac
}
