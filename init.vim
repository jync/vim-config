" Install Vim Plug if not installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

"Plugins
call plug#begin('~/.local/share/nvim/plugged')
" Motions
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sleuth'
Plug 'easymotion/vim-easymotion'
Plug 'justinmk/vim-sneak'

" auto reload edited files
Plug 'djoshea/vim-autoread'

" Git
Plug 'tpope/vim-fugitive'
Plug 'ruanyl/vim-gh-line'

"Project Exploration
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree'

" Formatting and Filechecking
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
" Function signatures
Plug 'Shougo/echodoc.vim'

" ReasonML
Plug 'reasonml-editor/vim-reason-plus'

" Syntax highlighting
Plug 'jparise/vim-graphql', {'for': ['graphql', 'reason', 'ocaml', 'reason_lisp']}
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" Status bar
Plug 'vim-airline/vim-airline'

" Colors
Plug 'chriskempson/base16-vim'
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'joshdick/onedark.vim'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'jacoborus/tender.vim'
Plug 'flrnprz/plastic.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'lithammer/vim-eighties'

" VimWiki
Plug 'vimwiki/vimwiki'

" JN additions
Plug 'junegunn/vim-easy-align'
Plug 'ntpeters/vim-better-whitespace'
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-projectionist'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" vim-js-file-import - uses ctags
Plug 'ludovicchabant/vim-gutentags'
Plug 'kristijanhusak/vim-js-file-import'

call plug#end()

"Set colorscheme
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
  set termguicolors
endif
set background=dark

set noswapfile
set number
set incsearch
set hlsearch
set laststatus=2
set autoindent
set backspace=indent,eol,start
set wildignore+=*/dist/*,*/node_modules/*,*/vendor/bundle/*,*/build/*,*/coverage/*

" Statusline
let g:airline#extensions#tabline#enabled = 1

"JS
let g:jsx_ext_required = 0
let g:javascript_plugin_flow = 1
let g:javascript_continuation = 1

" Autocmds
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync
autocmd QuickFixCmdPost *grep* cwindow

" set filetypes as typescript.tsx
autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx

" UltiSnip
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips']

" Coc
let g:coc_global_extensions = ['coc-highlight', 'coc-snippets', 'coc-lists', 'coc-eslint', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tailwindcss']

let g:echodoc_enable_at_startup = 1

" Fzf
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git --ignore dist --ignore coverage --ignore build --ignore .next -g ""'


" fugitive
set diffopt+=vertical

so ~/.config/nvim/coc-config.vim
so ~/.config/nvim/jn.vim

