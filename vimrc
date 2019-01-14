
set nocompatible          " get rid of Vi compatibility mode. SET FIRST!
let mapleader = ","
filetype plugin indent on " filetype detection[ON] plugin[ON] indent[ON]
set t_Co=256              " enable 256-color mode.
syntax enable             " enable syntax highlighting (previously syntax on).
colorscheme slate" set colorscheme
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

"tex doc compiling
autocmd FileType tex nmap <F5> :w <Enter>:!pdflatex % > /dev/null 2>&1; pdflatex % > /dev/null 2>&1; bibtex % > /dev/null 2>&1; pdflatex % > /dev/null 2>&1;<Enter><Enter>:!sleep 0.5<Enter><Enter>:redraw!<Enter>
autocmd FileType tex nmap <F6> :w <Enter>:!pdflatex % && pdflatex % && zathura %:r.pdf & <Enter><Enter>:!sleep 0.5<Enter><Enter>:redraw!<Enter>


"autocmd FileType c nnoremap <F5> :w <Enter>:!clear; echo gcc -o %:r % -lm; gcc -o %:r % -lm; <Enter>
"program compiling, running
autocmd FileType c nnoremap <F6> :w <Enter>:!clear; echo gcc -o %:r % -lm && gcc -o %:r % -lm && echo ./%:r && ./%:r ; echo exit code $? <Enter>
autocmd FileType java nnoremap <F6> :w <Enter>:!clear; echo javac % && javac % && echo java %:r && java %:r ; echo exit code $? <Enter>


"nnoremap <leader>q :!clear <Enter>:q <Enter>
nnoremap <leader>d :r !date +"\%b \%d \%Y - \%r" <Enter>
