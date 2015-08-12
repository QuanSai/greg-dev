" Launch nerdtree by default
map <C-t> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


set number

execute pathogen#infect()

" turn on colored code syntax
syntax on
" turn indentation on
filetype plugin indent on

" launch Flake8 by default
autocmd BufWritePost *.py call Flake8()


" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()
