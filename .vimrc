set nocompatible                "be iMproved, required
so ~/.vim/plugins.vim           "import plugins

syntax on

"------------------Coloring------------------"
"set t_CO=256

"colorscheme desert
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
"gutter or signcolumn
highlight SignColumn ctermbg=NONE guibg=NONE

"set the cursor for the different modes
"Ps = 0  -> blinking block.
"Ps = 1  -> blinking block (default).
"Ps = 2  -> steady block.
"Ps = 3  -> blinking underline.
"Ps = 4  -> steady underline.
"Ps = 5  -> blinking bar (xterm).
"Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

"these settings are related with FocusLost and FocusGained
"let &t_fe = "\<Esc>[?1004h"
"let &t_fd = "\<Esc>[?1004l"

"------------------Settings------------------"
let mapleader = ','
set backspace=indent,eol,start  "something with backspace
"set autowriteall                "automatically write file when switching
set noautowriteall              "if not set, :q does not work

set number                      "show line numbers
set hlsearch                    "search highlight
set incsearch                   "search incremental highlight
set ic                          "search ignore case
set showtabline=2               "always show tabs

set tabstop=2                   "tab to 4 space
set shiftwidth=4
set smarttab
set expandtab                   "use space instead of tab
set softtabstop=4               "4 space in a tab
set autoindent                  "auto intention

set mouse+=a                    "prevent line numbers copy

"------------------Auto-Commands------------------"

"Automatically source the .vimrc file
augroup AutoSourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END

augroup AutoSaving "does not work on i3 https://github.com/alacritty/alacritty/issues/1320
    autocmd!
    autocmd FocusLost * silent! wa
augroup END

augroup i3_focus " test events
        "autocmd VimEnter             * :sleep 100m | silent !notify-send "VimEnter"        && i3-msg -q mode vim
        "autocmd FocusGained          * :sleep 100m | silent !notify-send "VimFocusGained"  && i3-msg -q mode vim
        "autocmd FocusLost            * :sleep   10m | silent !notify-send "VimFocusLost"    && i3-msg -q mode default
        "autocmd VimLeave             * :sleep   10m | silent !notify-send "VimLeave"        && i3-msg -q mode default
augroup END

"cabbrev <expr> ! (getcmdtype()==':' && getcmdpos()=='!' ? 'w <bar> !' : '!') does not work
cnoremap <expr> <CR> (getcmdtype() == ':' && getcmdline() =~ '^!') ? '<Cmd>update<CR><CR>' : '<CR>'


"------------------Hot-keys------------------"
inoremap jk <ESC>

"autocomplete
inoremap <expr> <CR> pumvisible() ? "\<C-Y>\<ESC>wi" : "\<CR>"
"execute "set <F24>=\e[59;5u"
"nnoremap <F24> :echo "Shortcut works!"<CR>
"should be coordinated with a terminal
execute "set <F24>=\e[59;5u"
inoremap <F24> <C-X><C-L>

"append indent between braces
inoremap {<CR> {<CR>}<C-o>O

"regular save
noremap <C-s> :w<CR>
inoremap <C-s> <C-o>:w<CR>

"switch tabs
map <ESC>t <A-t>
nnoremap <A-t> :tabnew<CR>
map <ESC>l <A-l>
nnoremap <A-l> :tabnext<CR>
nnoremap <A-Right> :tabnext<CR>
map <ESC>h <A-h>
nnoremap <A-h> :tabprevious<CR>
nnoremap <A-Left> :tabprevious<CR>


"------------------Mappings------------------"
"remove search highlighting
nmap <Leader><space> :nohlsearch<cr>

vnoremap <leader>y  "+y<cr>
"ctrl+shift+X < https://www.reddit.com/r/vim/comments/1cbk0yx/windows_vim_app_any_way_to_enable_ctrlshiftcv_for/
vnoremap <C-S-X> "+x
vnoremap <C-S-C> "+y
map <C-S-V> "+gP"
imap <C-S-V> <C-R>+
cmap <C-S-V> <C-R>+

"auto braces https://stackoverflow.com/questions/21316727/automatic-closing-brackets-for-vim to avoid use Ctrl+v
"inoremap " ""<left>
"inoremap ' ''<left>
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap { {}<left>
"inoremap {<CR> {<CR>}<ESC>O
"inoremap {;<CR> {<CR>};<ESC>O

"------------------Commands------------------"
"nmap <Leader>f :!php-cs-fixer fix % --using-cache no<cr>

"------------------Plugins------------------"

let g:clang_format#auto_format=1

