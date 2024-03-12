" plugins usados no ~/.vim/pack/git-plugins/start
" ctrlp.vim
" emmet-vim
" indentLine
" nerdcommenter
" nerdtree
" vim-airline
" vim-devicons
" vim-startify
" vim-vue
"source ~/.vim/coc.nvimrc

colo delek
filetype plugin on

" ativar sintaxe colorida
syntax on

" Habilitar detector de extensão para disponibilizar utilidades especificas
filetype on
filetype plugin on
filetype indent on

" navegação entre os buffers
nnoremap <M-Right> :bn<cr>
nnoremap <M-Left> :bp<cr>
nnoremap <c-x> :bp\|bd #<cr>
" mapeando za para folding
nnoremap <space> za
" mapeando CC para comentario automatico
nnoremap cc <Plug>NERDCommenterInvert
" mapeando ctrl-k + i para ativar e desativar identlines
nnoremap <c-k>i :IndentLinesToggle<cr>
" mapeando ctrl-n para exibir e esconder nerdtree
nnoremap <c-n> :NERDTreeToggle<cr>

set encoding=utf-8

set nowrap " Não quebrar linhas longas

" ativar indentação automática
set autoindent
set smartindent

" ativar numeração de linha
set number
set relativenumber

" destaca a linha em que o cursor está posicionado
" ótimo para quem não enxerga muito bem
set cursorline

" ativa o clique do mouse para navegação pelos documentos
set mouse=a

" ativa o compartilhamento de área de transferência entre o Vim
" e a interface gráfica
set clipboard=unnamedplus

" Ajustar largura do tab para 4 espaços
set tabstop=4 softtabstop=4 expandtab shiftwidth=4

" ao teclar a barra de espaço no modo normal, o Vim
" irá colapsar ou expandir o bloco de código do cursor
" foldlevel é a partir de que nível de indentação o 
" código iniciará colapsado
set foldmethod=syntax
set foldlevel=99

" NerdTree
let NERDTreeShowHidden = 1

" IndentLine
let g:indentLine_enabled = 0

" CtrlP
let g:ctrlp_custom_ignore = '\v[\/]\.(swp|zip)$'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_show_hidden = 1

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#fnamemod = ':t' " Mostrar apenas o nome no titulo do buffer aberto
let g:airline#extensions#tabline#enabled = 1 " Mostrar extensões no titulo do buffer aberto
let g:airline_powerline_fonts = 1 
let g:airline_statusline_ontop = 0 
let g:airline_section_y = 1
