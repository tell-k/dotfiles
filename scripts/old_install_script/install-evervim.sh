AUTHOR="kakkyz81"
APP="evervim"

wget https://github.com/$AUTHOR/$APP/tarball/master -O $APP.tar.gz
tar xvzf $APP.tar.gz
mv $AUTHOR-$APP-* $APP
cp -pr ./$APP/* ~/.vim
rm -fr ~/.vim/README*
rm -fr $APP*
