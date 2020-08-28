call plug#begin()
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'yggdroot/indentline'
Plug 'jiangmiao/auto-pairs'
Plug 'ms-jpq/CHADtree', {'branch': 'chad', 'do': ':UpdateRemotePlugins'}
call plug#end()

syntax enable
set termguicolors
source $HOME/.config/nvim/brains.vim
source $HOME/.config/nvim/duckline.vim

nnoremap ,<space> :CHADopen<CR>
nnoremap <space>x :wq!<CR>

let g:indentLine_color_gui = '#ff0000'
let g:indentLine_char = '┊ '

set noshowmode

hi EndOfBuffer guifg=bg guibg=bg
hi LineNr guibg=bg
set foldcolumn=2
hi foldcolumn guibg=bg
hi VertSplit guibg=#262626 guifg=#262626
