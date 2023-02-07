lua require('init')

let mapleader = ','
nnoremap <silent><Leader>e :NvimTreeToggle<CR>
nnoremap <silent><Leader>w <C-w>

colo edge

set nu
set rnu
"set fdm=syntax
set cursorline
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab


" Find files using Telescope command-line sugar.
nnoremap <leader>tf <cmd>Telescope find_files<cr>
nnoremap <leader>tg <cmd>Telescope live_grep<cr>
nnoremap <leader>tb <cmd>Telescope buffers<cr>
nnoremap <leader>th <cmd>Telescope help_tags<cr>

" CTAGS

" enable gtags module
let g:gutentags_modules = ['ctags','gtags_cscope']

" config project root markers.
let g:gutentags_project_root = ['.gitee', '.git', '.root']

" generate datebases in my cache directory, prevent gtags files polluting my project
let g:gutentags_cache_dir = expand('~/.cache/tags')

let g:gutentags_ctags_tagfile = '.tags'
