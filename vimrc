
set nocompatible          " get rid of Vi compatibility mode. SET FIRST!
filetype off "plugin indent on  filetype detection[ON] plugin[ON] indent[ON]
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVum/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'rust-lang/rust.vim'
"Plugin 'itchyny/lightline.vim'
Plugin 'takac/vim-hardtime'

call vundle#end()

let g:hardtime_default_on = 0
let g:list_of_normal_keys = [ "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_visual_keys = [ "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_insert_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_disabled_keys = []



filetype plugin indent on
let mapleader = ","
set t_Co=256              " enable 256-color mode.
syntax enable             " enable syntax highlighting (previously syntax on).
colorscheme slate " set colorscheme
set number                " show line numbers
set relativenumber
set laststatus=2          " last window always has a statusline
filetype indent on        " activates indenting for files
set nohlsearch            " Don't continue to highlight searched phrases.
set incsearch             " But do highlight as you type your search.
set ignorecase            " Make searches case-insensitive.
set ruler                 " Always show info along bottom.
set autoindent            " auto-indent
set tabstop=2             " tab spacing
set softtabstop=2         " unify
set shiftwidth=2          " indent/outdent by 4 columns
set shiftround            " always indent/outdent to the nearest tabstop
"set expandtab             " use spaces instead of tabs
"set smarttab              " use tabs at the start of a line, spaces elsewhere
"set nowrap                " don't wrap text
"tab editing

nnoremap <leader>= :tabedit 
nnoremap <leader>[ gT
nnoremap <leader>] gt

nnoremap <leader>r :w <Enter>:Crun

"tex doc compiling
autocmd FileType tex nmap <F5> :w <Enter>:!pdflatex % && sleep 0.5<Enter><Enter>:redraw!<Enter>
autocmd FileType tex nmap <F6> :w <Enter>:!pdflatex % && zathura %:r.pdf & <Enter><Enter>:!sleep 0.5<Enter><Enter>:redraw!<Enter>
autocmd FileType tex imap <leader>S <Esc>o\section{
autocmd FileType tex imap <leader>sS <Esc>o\subsection{
autocmd FileType tex imap <leader>ssS <Esc>o\subsubsection{

autocmd FileType tex imap <leader>l <Esc>o\begin{enumerate}<Enter>\item<Esc>m'o\end{enumerate}<Esc>''A
autocmd FileType tex imap <leader>i <Esc>o\item

nmap <F7> <Esc>:w<Enter>:!pandoc % -t latex -o %:r.pdf

"nnoremap <leader>q :!clear <Enter>:q <Enter>
nnoremap <leader>d :r !date +"\%b \%d \%Y - \%r" <Enter>

