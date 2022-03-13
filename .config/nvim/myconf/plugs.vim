call plug#begin()
Plug 'scrooloose/nerdtree'
"Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
call plug#end()

"bind key to toggle NERDTree
nnoremap <A-1> :NERDTreeFocus<CR>
nnoremap <A-2> :NERDTreeToggle<CR>
