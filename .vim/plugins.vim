filetype off                    "required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'msanders/snipmate.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'mg979/vim-visual-multi'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-commentary'
Plugin 'vim-scripts/argtextobj.vim'
"Plugin 'vim-scripts/AutoClose'
Plugin 'jeetsukumaran/vim-markology'
Plugin 'rhysd/vim-clang-format'
"Plugin 'jiangmiao/auto-pairs'
Plugin 'townk/vim-autoclose'
"Plugin 'StanAngeloff/php.vim'

" All of your Plugins must be added before the following line
call vundle#end()               "required
filetype plugin indent on       "required
