wget http://www.vim.org/scripts/download_script.php?src_id=7701 -O taglist.zip
unzip taglist.zip
cp -pr plugin/* ~/.vim/plugin/
cp -pr doc/* ~/.vim/doc/
rm -fr ./doc
rm -fr ./plugin 
rm -fr taglist.zip

#usage
#TlistAddFiles *.py
#Tlist
