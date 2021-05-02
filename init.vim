source ~/.config/nvim/general/settings.vim
source ~/.config/nvim/general/plugins.vim

"Python path
"let g:python3_host_prog='/usr/bin/python3'

" Figure out the system Python for Neovim.
if exists("$VIRTUAL_ENV")
    let g:python3_host_prog=substitute(system("which -a python3 | head -n2 | tail -n1"), "\n", '', 'g')
else
    let g:python3_host_prog=substitute(system("which python3"), "\n", '', 'g')
endif

"Deoplete
let g:deoplete#enable_at_startup = 1

"Airline
let g:airline_theme='gruvbox'

"Jedi
" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

"Theme Gruvbox
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_invert_selection='0'

if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

colorscheme gruvbox
set background=dark
" set background=light
" Same background that terminal
highlight Normal guibg=none

" Colorscheme colorbuddy
"lua require('colorbuddy').colorscheme('gruvbuddy')

"Deoplete
"Autocomplete with tab
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

"Close autocomplete window
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

"Ale config
let g:ale_linters = {
            \'python': ['flake8'],
            \'typescript': ['tsserver'],
            \'javascript': ['eslint']}
let g:ale_fixers = {
            \'python': ['yapf', 'autopep8'],
            \'javascript': ['prettier'],
            \'typescript': ['prettier']}

"Press F10 to fix
nmap <F10> :ALEFix<CR>

let g:ale_fix_on_save = 1

"NerdTree Config
"Open NerdTree with ctrl+n
map <C-n> :NERDTreeToggle<CR>

"Close NERDTree window after openinig a file
autocmd BufEnter NERD_tree_* nmap  d<CR> <CR> :NERDTreeToggle <CR>
autocmd BufLeave NERD_tree_* unmap d<CR>

"Watch Hidden files
let NERDTreeShowHidden=1

"Switch between different windows by their direction`
no <C-j> <C-w>j| "switching to below window 
no <C-k> <C-w>k| "switching to above window
no <C-l> <C-w>l| "switching to right window 
no <C-h> <C-w>h| "switching to left window

"open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Rainbow Parentheses activate
let g:rainbow_active = 1
