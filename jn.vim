" Keyboard bindings
let mapleader = ' '

nnoremap <C-p>  :Files<CR>
inoremap <C-p>  <Esc>:Files<CR>i
nnoremap <Leader>a :Ack<space>
" nmap <space><space> :Files<CR>
" nnoremap <space><space>  :Files<CR>

" History + Git
" nnoremap gb :BCommits<CR>
" nnoremap gh :History<CR>
" nnoremap gs :GFiles?<CR>

" Formatting shortcuts
" nnoremap gp :PrettierAsync<CR>

" Tmpfiles
set backupdir=~/.vim-tmp,~/.tmp/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp/var/tmp,/tmp

if has("persistent_undo")
  set undodir=~/.vim-tmp,~/.tmp/var/tmp,/tmp
  set undofile
endif

augroup SimultaneousEdits
  autocmd!
  autocmd SwapExists * :let v:swapchoice = 'e'
augroup END

" Keybindings
map <Leader>w :w!<CR>
map <Leader>q :q!<CR>

" bubble up and down rows
map <C-j> ddp
map <C-k> ddkP

" Handle tabs
map <Leader>n :tabNext<CR>
map <Leader>p :tabPrevious<CR>
map <C-T> :tabnew<CR>
map <Leader>M :tabedit %<CR>
nnoremap <leader>t :tabnew<cr>
nnoremap <leader>T :tabnext<cr>
nnoremap <leader>qt :tabclose<cr>

" Yankring
" map <Leader>y :YRShow<CR>
" let g:yankring_replace_n_pkey = 'Y'
" let g:yankring_replace_n_nkey = 'y'

" yankstack
" nmap <leader>p <Plug>yankstack_substitute_older_paste
" nmap <leader>P <Plug>yankstack_substitute_newer_paste

" EasyAlign
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


" Clipboard
set clipboard=unnamed
set mouse=a

" NerdCommeter
map <Leader>c ,c<space>

" Ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
map <Leader>A :Ack!<CR>

" Fix white space on save
" autocmd BufEnter * EnableStripWhitespaceOnSave
autocmd BufWritePre * %s/\s\+$//e

" NerdTree
let NERDTreeChDirMode=2
let NERDTreeShowHidden=0
map <Leader>d :NERDTreeToggle<CR>
map <Leader>f :NERDTreeFind<CR>

" ctrlp
"map <Leader>g :CtrlP<CR>
"let g:ctrlp_root_markers = ['pom.xml', '.p4ignore', 'package.json']
""let g:ctrlp_switch_buffer = 'et'
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip
"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
"let g:ctrlp_custom_ignore = {
  "\ 'dir':  '\v[\/]\.(git|hg|svn)$',
  "\ 'file': '\v\.(exe|so|dll)$',
  "\ 'link': 'some_bad_symbolic_links',
  "\ }
"let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

"let g:neomake_verbose=3
"let g:neomake_logfile='/tmp/neomake-error.log'
"let g:neomake_open_list = 2

" map <leader>= :vertical resize +10<CR>
" map <leader>+ :vertical resize -10<CR>

" Use projectionist
" map <leader>z :A<cr>

" alt - https://github.com/uptech/alt
" function! AltCommand(path, vim_command)
"   let l:alternate = system("alt " . a:path)
"   if empty(l:alternate)
"     echo "No alternate file for " . a:path . " exists!"
"   else
"     exec a:vim_command . " " . l:alternate
"   endif
" endfunction

" Find the alternate file for the current path and open it
" nnoremap <leader>z :w<cr>:call AltCommand(expand('%'), ':e')<cr>

" Syntax Highlighting
"let g:jsx_ext_required = 0
"let g:javascript_plugin_flow = 1

" copy current file path (relative) into memory
nnoremap <leader>cf :let @+ = expand("%")<cr>
nnoremap <leader>cF :let @+ = expand("%:p")<cr>

nnoremap <leader>rr :so $MYVIMRC<cr>
nnoremap <leader>ee :tabe $MYVIMRC<cr>

" formatting
" nnoremap ff :Neoformat prettiereslint<cr>
" nnoremap ff :Prettier<cr>
" let g:neoformat_verbose = 1

" terminal for nvim
" if has('nvim')
"   tnoremap <Esc> <C-\><C-n>
"   tnoremap <M-[> <Esc>
"   tnoremap <C-v><Esc> <Esc>
"
"   " Terminal mode:
"   tnoremap <M-h> <c-\><c-n><c-w>h
"   tnoremap <M-j> <c-\><c-n><c-w>j
"   tnoremap <M-k> <c-\><c-n><c-w>k
"   tnoremap <M-l> <c-\><c-n><c-w>l
"   " Insert mode:
"   inoremap <M-h> <Esc><c-w>h
"   inoremap <M-j> <Esc><c-w>j
"   inoremap <M-k> <Esc><c-w>k
"   inoremap <M-l> <Esc><c-w>l
"   " Visual mode:
"   vnoremap <M-h> <Esc><c-w>h
"   vnoremap <M-j> <Esc><c-w>j
"   vnoremap <M-k> <Esc><c-w>k
"   vnoremap <M-l> <Esc><c-w>l
"   " Normal mode:
"   nnoremap <M-h> <c-w>h
"   nnoremap <M-j> <c-w>j
"   nnoremap <M-k> <c-w>k
"   nnoremap <M-l> <c-w>l
" endif

" colorscheme monokai
" colorscheme codeschool
" colorscheme Tomorrow-Night
" colorscheme flatlandia
" colorscheme railscasts
" colorscheme mustang
" colorscheme vividchalk
" colorscheme clearance
" colorscheme BusyBee
" colorscheme twilight
" colorscheme flattown
" colorscheme heroku-terminal
" colorscheme materialtheme
" colorscheme sierra
" colorscheme onehalfdark
" let g:airline_theme='onehalfdark'
colorscheme tender
let g:airline_theme = 'tender'
