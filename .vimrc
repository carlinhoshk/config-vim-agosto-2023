filetype off                  " required
" Configurar autosave
set autoread        " Lê automaticamente quando o arquivo é modificado fora do Vim
"autocmd FocusLost * :wa " Salva todos os arquivos ao perder o foco
" .vimrc
let g:auto_save = 1  " enable AutoSave on Vim startup
" Mapeamento para alternar entre os modos de insert e normal com Ctrl+Tab
" Mapeamento para sair do Vim com Ctrl + q

let g:ycm_key_list_select_completion = ['<Down>'] " Remove <Tab> from the list of keys mapped by YCM.
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "ᐅ"

" vim-powered terminal in split window
map <Leader>t :term ++close<cr>
tmap <Leader>t <c-w>:term ++close<cr>

" vim-powered terminal in new tab
map <Leader>T :tab term ++close<cr>
tmap <Leader>T <c-w>:tab term ++close<cr>


noremap <C-q> :q<CR>

" Mapeamento para entrar no modo de inserção com Alt+w
" inoremap <A-w> <Esc>i

" Mapeamento para sair do Vim com Alt+q
nnoremap <M-q> <Esc>

" Mapeamento para sair do Vim com Ctrl+q, mesmo no modo insert
inoremap <C-q> <ESC>:q<CR>

" Mapeamento para alternar entre os modos de insert e normal com Ctrl+Tab

set number 
set relativenumber

"nnoremap <C-Tab>n :NERDTreeFocus<CR>
 nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Mapeamento para abrir o diretório na mesma janela
map <silent> <Right> <CR>
	
" Mapeamento para fechar o diretório
map <silent> <Left> <CR>


" Mapeamento para excluir arquivo ou diretório selecionado
map <silent> nn :NERDTreeCreateFile<CR>

" Mapeamento para criar novo arquivo ou diretório no diretório atual
" map <silent> nn :NERDTreeCreateFile<CR>


" Mapeia a tecla 'o' para abrir/fechar diretórios no NERDTree
let g:NERDTreeMapActivateNode = 'o'

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" autocmd VimEnter * NERDTree
" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p

" Configuração para abrir o NERDTree e focar no arquivo específico em modo insert ao iniciar o Vim
autocmd VimEnter * if argc() == 1 && !isdirectory(argv()[0]) | execute 'NERDTree' | wincmd p | startinsert | endif


" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
"autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
"    \ let buf=bufnr() | buffer# | execute '"normal! \<C-W>w" | execute 'buffer'.buf | endif

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" Enable plugins and load plugin for the detected file type.
filetype plugin on
" Enable Omnicomplete features
set omnifunc=syntaxcomplete#Complete
set omnifunc=javascriptcompleteCompleteJS
set omnifunc=csscomplete#CompleteCSS
set omnifunc=phpcomplete#CompletePHP

" Enable packloadall for pack plugins.
packloadall

" Escolher um esquema de cores (por exemplo, gruvbox)
" colorscheme gruvbox

" Ativar realce de sintaxe
syntax enable

" Definir cores personalizadas (exemplo: fundo escuro e texto claro)
highlight Normal ctermbg=NONE ctermfg=NONE
highlight Normal guibg=NONE guifg=NONE

" Números de linha coloridos
hi LineNr ctermfg=LightGrey guifg=LightGrey

" Configurações para ressaltar pesquisas
set hlsearch
highlight Search ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=Black

" Configurações para a barra de status
set laststatus=2
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" Outros elementos de destaque de sintaxe podem ser configurados da mesma maneira.
" Mapeamento para abrir em modo insert 
" autocmd VimEnter * if argc() == 1 | startinsert | endif


" Mapeamento para abrir o Terminal
" cnoremap T terminal


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'uiiaoo/java-syntax.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

Plugin '907th/vim-auto-save'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'ryanoasis/vim-devicons'
Plugin 'preservim/nerdtree'
" Plugin 'mikelue/vim-maven-plugin'
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" Autocomplete plugin
Plugin 'ycm-core/YouCompleteMe'
"Plugin 'vim-scripts/Conque-Shell'
"Plugin 'skywind3000/vim-quickui'
" Plugin 'BeomjoonGoh/vim-easy-term'
"Plugin 'voldikss/vim-floaterm'
" All of your Plugins must be added before the following line
call vundle#end()            " required

set encoding=utf8
