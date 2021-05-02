call plug#begin('~/.local/share/nvim/plugged')

"Deoplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'

Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}

"Jedi -> Goto
Plug 'davidhalter/jedi-vim'

"Ale
Plug 'dense-analysis/ale'

"Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Theme
Plug 'morhetz/gruvbox'

"Colorbuddy
Plug 'tjdevries/colorbuddy.vim'
Plug 'tjdevries/gruvbuddy.nvim'

"Autopair
Plug 'jiangmiao/auto-pairs'
"Rainbow Parentheses Improved
Plug 'luochen1990/rainbow'

"NerdTree
Plug 'scrooloose/nerdtree'

call plug#end()
