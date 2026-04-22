echo "Setting up cozy coding area"
#vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#everforest theme
curl -L https://github.com/sainnhe/everforest/archive/refs/heads/master.tar.gz | \
tar -xz -C ~/.vim --strip-components=1 \
"everforest-master/colors" \
"everforest-master/autoload"
