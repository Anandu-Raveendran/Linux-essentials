execute pathogen#infect()
syntax on
filetype plugin indent on

colorscheme slate
map <F2> :NERDTreeToggle<CR>
map <F3> : TagbarToggle <CR>
map <F4> : set hlsearch <CR>
map <F5> :nohlsearch<CR>
map <F6> gcc <CR>

set mouse=c
set background=dark
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 
set ignorecase

autocmd BufEnter * let &titlestring = expand("%:p:t")
set title 

if has('cscope')
    set cscopetag cscopeverbose

    if has('quickfix')
        set cscopequickfix=s-,c-,d-,i-,t-,e-
    endif

    cnoreabbrev csa cs add
    cnoreabbrev csf cs find
    cnoreabbrev csk cs kill
    cnoreabbrev csr cs reset
    cnoreabbrev css cs show
    cnoreabbrev csh cs help

    command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
endif
" load Coverity command
let coverity_vimrc = "/home/administrator" . "/.vim/coverity.vimrc"
if filereadable(coverity_vimrc)
" execute/home/administrator/coverity/cov-analysis/bin/home/administrator/coverity/cov-analysis/bin/home/administrator/coverity/cov-analysis/bin "source " . fnameescape(coverity_vimrc)
endif

function! LoadCscope()
    let db = findfile("cscope.out", ".;")
    if (!empty(db))
        let path = strpart(db, 0, match(db, "/cscope.out$"))
        set nocscopeverbose " suppress 'duplicate connection' error
        exe "cs add " . db . " " . path
        set cscopeverbose
        " else add the database pointed to by
        " environment variable 
        "   elseif $CSCOPE_DB != "" 
    endif
endfunction

call LoadCscope()

