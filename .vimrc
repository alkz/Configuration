syntax on

colorscheme darkblood

set autoindent
set smartindent
set smarttab
set backspace=indent,eol,start
set ic
set smartcase

set statusline=%F%m%r%h%w\ [Format:\ %{&ff}]\ [Type:\ %Y]\ [Lines:\ %L\ @\ %p%%\ {%l;%v}]
set laststatus=2

set number
set showmode ruler
set shiftwidth=4
set expandtab
set ts=4
set mouse=a

set noerrorbells
set novisualbell


set fileencodings=utf-8
set encoding=utf-8
set termencoding=utf-8
set guifont=Terminus\ 8

set helplang=en
set history=50
set hlsearch
set incsearch
set sidescroll=1
set nowrap


map <silent> <S-Z> :tabnew<CR>
map <silent> <S-Q> :tabclose<CR>
map <silent> <S-H> :tabprevious<CR>
map <silent> <S-L> :tabnext<CR>



"autocmd BufReadPre *.pdf set ro nowrap
"autocmd BufReadPost *.pdf silent %!pdftotext "%" -nopgbrk -layout -q -eol unix -
"autocmd BufWritePost *.pdf silent !rm -rf ~/PDF/%
"autocmd BufWritePost *.pdf silent !lp -s -d pdffg "%"
"autocmd BufWritePost *.pdf silent !until [ -e ~/PDF/% ]; do sleep 1; done
"autocmd BufWritePost *.pdf silent !mv ~/PDDF/% %:p:h
autocmd! BufReadPost *.pdf silent %!pdftotext -layout -nopgbrk "%" -
autocmd! FileType markdown,man,git,gitcommit,diff,mail,objdasm,pdf set nolist nonu
autocmd! FileType lisp,ruby,yaml,javascript,haml,scss Indentation 2
autocmd! FileType markdown,man,git,gitcommit,diff,mail,objdasm,pdf set nolist nonu
autocmd! FileType haml,scss set noexpandtab
autocmd! FileType haskell,lisp,markdown set expandtab
autocmd! FileType c let g:SuperTabDefaultCompletionType = "<C-x><C-u>"

autocmd! BufRead,BufNewFile *.rbuild set ft=ruby
autocmd! BufRead,BufNewFile *.markdown set ft=markdown
autocmd! BufRead,BufNewFile *.yml set ft=yaml
autocmd! BufRead,BufNewFile *.asciidoc set ft=asciidoc
autocmd! BufRead,BufNewFile *.asd,*.cic set ft=lisp

autocmd! BufRead,BufNewFile valgrind*.log set ft=valgrind

autocmd! BufReadCmd *.docx,*.xlsx,*.pptx call zip#Browse(expand("<amatch>"))
autocmd! BufReadCmd *.odt,*.ott,*.ods,*.ots,*.odp,*.otp,*.odg,*.otg call zip#Browse(expand("<amatch>"))
autocmd! BufReadPost *.pdf silent %!pdftotext -layout -nopgbrk "%" -

autocmd! BufRead,BufNewFile *.json set filetype=json


" configure tags - add additional tags here or comment out not-used ones
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/wxtags
" build tags of your own project with Ctrl-F12
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview



:highlight Pmenu ctermbg=darkcyan ctermfg=black gui=bold
