"Basics
"
"Set number lines
set number 
set relativenumber

"Convert tabs to spaces
"set expandtab
set tabstop=4
set shiftwidth=4
set nopaste
"set noautoindent
set hlsearch
set smartindent
set showmode
set shiftround "indent/dedent t nearest 4-char boundary

syntax on
filetype plugin indent on
colo desert
"colo slate
"colo industry
"colo koehler
"colo delek 
"colo morning 
"colo default

"Pathogen Plugin
"uncomment this to enable syntastic
"execute pathogen#infect()

"Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_wq = 0

call plug#begin()
Plug 'yuttie/comfortable-motion.vim'
call plug#end()

let g:comfortable_motion_no_default_key_mappings=1

"THIS SCROLLS LINES INSTEAD OF SCREEN
"let g:comfortable_motion_scroll_down_key = "j"
"let g:comfortable_motion_scroll_up_key = "k"

nnoremap <silent> <S-j> :call comfortable_motion#flick(100)<CR>
nnoremap <silent> <S-k> :call comfortable_motion#flick(-100)<CR>
"nnoremap <silent> <C-f> :call comfortable_motion#flick(200)<CR>
"nnoremap <silent> <C-b> :call comfortable_motion#flick(-200)<CR>

"Friction & air reisstence
"let g:comfortable_motion_friction = 80.0
"let g:comfortable_motion_air_drag = 2.0

"Friction only
let g:comfortable_motion_friction = 180.0
let g:comfortable_motion_air_drag = 8.0

"Air resistence only
"let g:comfortable_motion_friction = 0.0
"let g:comfortable_motion_air_drag = 6.0

"default falues:
"let g:comfortable_motion_friction = 80.0
"let g:comfortable_motion_air_drag = 2.0
"let g:comfortable_motion_interval = 1000.0 / 60 


"NO EX MODE
map Q <Nop>

"set leader to space
let mapleader = "\<Space>"

"shortcut to open NERDTree
"nnoremap <Leader>n :NERDTreeToggle<CR>
"let g:NERDTreeWinSize = 18

"mapping q to switch between windows
noremap q <C-w>w

"mark location before quitting
noremap :wq ma:wq
noremap :q ma:q
noremap :q! ma:q!

"set mark for gg/G jumping
noremap gg magg
noremap G maG


"each permutation of quit
noremap :Wq ma:wq
noremap :WQ ma:wq
noremap :wQ ma:wq
noremap :W ma:w
noremap :Q ma:q

"mapping jj to ESC 
inoremap jj <Esc>

"mapping autocomplete
"inoremap \ <C-p>

"quick back to terminal check 
noremap <Leader>4 :! 

"quick jump back to mark set by above
noremap <Leader>f `azz

"end of line 
noremap <Leader>0 $

"toggling highlight
nnoremap <Leader>h :nohlsearch<Bar>:echo<CR>

"toggling syntastic
"nnoremap <Leader>9 :SyntasticReset<Enter>
