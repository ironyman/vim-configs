noremap <leader>f :Rg<CR>
" shellescape(expand('<cword>')
noremap <leader>F :Rg2<CR>
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)
command! -bang -nargs=* Rg2
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(expand('<cword>')), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)



function! FzfTagsCurrentWord()
  let l:word = expand('<cword>')
  let l:list = taglist(l:word)
  if len(l:list) == 1
    execute ':tag ' . l:word
  else
    call fzf#vim#tags(l:word)
  endif
endfunction
noremap <c-]> :call FzfTagsCurrentWord()<cr>

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
endif
if executable('rg')
  set grepprg=rg\ --no-heading\ --vimgrep
  set grepformat=%f:%l:%c:%m
endif
let g:fzf_layout = { 'down': '~20%' }


" Open hotkeys
map <C-p> :Files<CR>
" relative to current file
nmap <leader>p :Files %:p:h<CR>
nmap <leader>b :Buffers<CR>
nmap <leader>l :Lines<CR>
nmap <leader>L :BLines<CR>
nmap <leader>g :GFiles<CR>
nmap <leader>G :GFiles?<CR>
