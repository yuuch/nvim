lua require('init')

let mapleader = ','
nnoremap <silent><Leader>e :NvimTreeOpen<CR>
nnoremap <silent><Leader>w <C-w>

colo edge
"colo dracula
"colo nord

set nu
set rnu
"set fdm=syntax
set cursorline
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

set fdm=indent
set foldlevel=99
set jumpoptions+=stack

" Find files using Telescope command-line sugar.
nnoremap <leader>tf <cmd>Telescope find_files<cr>
nnoremap <leader>tg <cmd>Telescope live_grep<cr>
nnoremap <leader>tb <cmd>Telescope buffers<cr>
nnoremap <leader>th <cmd>Telescope help_tags<cr>
nnoremap <leader>to <cmd>Telescope oldfiles<cr>
