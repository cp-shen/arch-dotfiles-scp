call plug#begin()

Plug 'scrooloose/nerdtree'
"Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
    "bind key to toggle NERDTree
    nnoremap <A-1> :NERDTreeFocus<CR>
    nnoremap <A-2> :NERDTreeToggle<CR>

Plug 'itchyny/lightline.vim'
let g:lightline = {
    \ 'colorscheme': 'spacegray',
    \ 'active': {
    \   'right': [ [ 'lineinfo' ],
    \              [ 'percent' ],
    \              [ 'clock', 'fileformat', 'fileencoding', 'filetype', ] ]
    \ },
    \ 'component_function': {
    \   'clock': 'ShowCurTime'
    \ },
    \ }
function! ShowCurTime()
    return strftime('%H:%M')
endfunction


call plug#end()

