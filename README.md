# kde
```
sudo apt install kubuntu-desktop fish 
sudo apt install sddm
sudo dpkg-reconfigure sddm

sudo chsh -s /usr/bin/fish cyl
```
# vim stuff
```
sudo apt install neovim
sudo apt install clang-tools-8
sudo update-alternatives --install /usr/bin/clang clang /usr/bin/clang-8 100
sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-8 100
```

# ripgrep

```
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/11.0.2/ripgrep_11.0.2_amd64.deb
sudo dpkg -i ripgrep_11.0.2_amd64.deb
```
# install plugin manager
```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
# in vim
```
:PlugInstall
```

# coc requires node
```
curl -sL install-node.now.sh/lts | bash
```

# nvr
```
sudo apt install -y python3-pip
pip3 install neovim-remote
```

# use
```
nvr -l

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Open hotkeys
map <C-p> :Files<CR>
nmap <leader>b :Buffers<CR>
nmap <leader>l :Lines<CR>
nmap <leader>L :BLines<CR>
nmap <leader>g :GFiles<CR>
nmap <leader>G :GFiles?<CR>

noremap <leader>f :Rg<CR>

:help sneak
s ch1 ch2
; or \
``

