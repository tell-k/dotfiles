.PHONY: help setup install_neobundle install_vim_plugins create_symlinks remove_symlinks create_php_dict create_perl_dict

help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  setup               to setup dotfiles."
	@echo "  install_neobundle   to install neobundle.vim."
	@echo "  install_vim_plugins to install vim plugins by vundle vim."
	@echo "  create_symlinks     to create symbolic links."
	@echo "  remove_symlinks     to remove symbolic links."
	@echo "  create_php_dict     to create dictionary file for php."
	@echo "  create_perl_dict    to create dictionary file for perl."

setup: remove_symlinks install_neobundle create_symlinks

install_neobundle: 
	sh scripts/install_neobundle.sh
install_vim_plugins: 
	sh scripts/install_vim_plugins.sh
create_symlinks: 
	sh scripts/create_symbolic_link.sh
remove_symlinks: 
	sh scripts/remove_symbolic_link.sh
create_php_dict: 
	sh scripts/create_php_dict.sh
create_perl_dict: 
	sh scripts/create_perl_dict.sh
