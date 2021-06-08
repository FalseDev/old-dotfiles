" Pluggin list start
call plug#begin('~/.nvim/plugged')

" Fuzzy search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Install Conquer of completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Filetree
Plug 'preservim/nerdtree'
" Close pairs ()
Plug 'tpope/vim-surround'

" Prettier
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['python','typescriptreact','javascriptreact','javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

Plug 'vim-airline/vim-airline'
Plug 'ekalinin/Dockerfile.vim'

" Theme
Plug 'crusoexia/vim-monokai'
Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'takac/vim-hardtime'

" Icons in filetree
Plug 'ryanoasis/vim-devicons'
call plug#end()
