# Syntastic  https://github.com/vim-syntastic/syntastic
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle && git clone --depth=1 https://github.com/vim-syntastic/syntastic.git

# Rust
git clone https://github.com/rust-lang/rust.vim ~/.vim/pack/plugins/start/rust.vim

# NerdTree
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q

# Vim Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
