sudo apt install kubuntu-desktop fish 
sudo apt install sddm
sudo dpkg-reconfigure sddm

sudo chsh -s /usr/bin/fish cyl

# vim stuff
sudo apt install neovim
sudo apt install clang-tools-8
sudo update-alternatives --install /usr/bin/clang clang /usr/bin/clang-8 100
sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-8 100


# ripgrep
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/11.0.2/ripgrep_11.0.2_amd64.deb
sudo dpkg -i ripgrep_11.0.2_amd64.deb

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# in vim
:PlugInstall


# coc requires node
curl -sL install-node.now.sh/lts | bash


# nvr
sudo apt install -y python3-pip
pip3 install neovim-remote

