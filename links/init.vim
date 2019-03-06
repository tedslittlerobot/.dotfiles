
" {{{ Plugins & Package Management
function! PackInit() abort
  packadd minpac

  call minpac#init()
  call minpac#add('editorconfig/editorconfig-vim')
  " call minpac#add('ayu-theme/ayu-vim') Old Theme - very nice!
  call minpac#add('drewtempelmeyer/palenight.vim')
  call minpac#add('itchyny/lightline.vim')
  call minpac#add('junegunn/fzf', {'do': {-> system('./install --all')}})
  call minpac#add('junegunn/fzf.vim')
  call minpac#add('tpope/vim-sensible')
  call minpac#add('tpope/vim-unimpaired')
  call minpac#add('tpope/vim-fugitive')
  call minpac#add('tpope/vim-rhubarb')
  call minpac#add('tpope/vim-commentary')
  call minpac#add('tpope/vim-surround')
  call minpac#add('tpope/vim-eunuch')
  call minpac#add('tpope/vim-projectionist')
  call minpac#add('terryma/vim-multiple-cursors')
  call minpac#add('drewtempelmeyer/palenight.vim')
  call minpac#add('airblade/vim-gitgutter')
  call minpac#add('kana/vim-textobj-user')
  call minpac#add('kana/vim-textobj-entire')
  call minpac#add('kana/vim-textobj-datetime')
  call minpac#add('glts/vim-textobj-comment')
  call minpac#add('fvictorio/vim-textobj-backticks')
  call minpac#add('mattn/emmet-vim')
  call minpac#add('majutsushi/tagbar')
  call minpac#add('nathanaelkane/vim-indent-guides')
  call minpac#add('mbbill/undotree')
  call minpac#add('w0rp/ale')
  call minpac#add('mtth/scratch.vim')
endfunction

command! PackUpdate call PackInit() | call minpac#update('', {'do': 'call minpac#status()'}) | call minpac#clean() | helptags ALL
" }}}

" {{{ Theme Config
source ~/.config/nvim/pack/minpac/start/lightline.vim/autoload/lightline/colorscheme.vim
source ~/.config/nvim/pack/minpac/start/palenight.vim/autoload/palenight.vim
source ~/.config/nvim/pack/minpac/start/palenight.vim/autoload/lightline/colorscheme/palenight.vim
set background=dark
colorscheme palenight
" }}}

" {{{ LightLine Config
let g:lightline = {}
let g:lightline.colorscheme = 'palenight'
" }}}

" {{{ Key Maps
nnoremap <C-p><C-p> :<C-u>FZF<CR>
nnoremap <C-p> :<C-u>GFiles<CR>
" }}}

" {{{ Linting & Fixing
let g:ale_fixers = {
\	'*': ['remove_trailing_lines', 'trim_whitespace'],
\	'php': ['phpcbf'],
\	'json': ['remove_trailing_lines', 'trim_whitespace', 'fixjson'],
\}
" }}}

" {{{ Auto Commands / Events
autocmd!

" Enable spell checking for handwritten files
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd FileType gitcommit setlocal spell

" Fix JSON formatting
autocmd BufWrite *.json ALEFix
" }}}

" {{{ General Config
set number
set termguicolors " full terminal colours
set noshowmode " lightline shows the current mode, so this is unneccessary
set colorcolumn=81,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170
let g:indent_guides_enable_on_vim_startup = 1
let mapleader = " "

" Open new splits to the right and bottom 
set splitbelow
set splitright

" Use code folding via a marker
set foldmethod=marker
" }}}

" {{{ Functions

function s:MkNonExDir(file, buf)
    if empty(getbufvar(a:buf, '&buftype')) && a:file!~#'\v^\w+\:\/'
        let dir=fnamemodify(a:file, ':h')
        if !isdirectory(dir)
            call mkdir(dir, 'p')
        endif
    endif
endfunction
augroup BWCCreateDir
    autocmd!
    autocmd BufWritePre * :call s:MkNonExDir(expand('<afile>'), +expand('<abuf>'))
augroup END

" }}}

