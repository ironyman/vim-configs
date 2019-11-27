noremap <leader>f :Rg<CR>
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
endif
if executable('rg')
  set grepprg=rg\ --no-heading\ --vimgrep
  set grepformat=%f:%l:%c:%m
endif
let g:fzf_layout = { 'down': '~20%' }
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)


" Open hotkeys
map <C-p> :Files<CR>
nmap <leader>b :Buffers<CR>
nmap <leader>l :Lines<CR>
nmap <leader>L :BLines<CR>
nmap <leader>g :GFiles<CR>
nmap <leader>G :GFiles?<CR>
