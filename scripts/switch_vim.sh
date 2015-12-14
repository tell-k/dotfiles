# currentのpythonのバージョンを判別して起動するvimを変える 
if [[ "`\`which python\` -V 2>&1`" = 'Python 3'* ]]; then
 echo "vim-py3"; # for py3 interpreter
else 
 echo "vim"; # for py2 interpreter 
fi
