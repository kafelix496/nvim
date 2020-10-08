" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'machakann/vim-highlightedyank'
  Plug 'nelstrom/vim-visual-star-search'
  Plug 'unblevable/quick-scope'
  Plug 'mg979/vim-visual-multi', {'branch': 'master'}
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'MattesGroeger/vim-bookmarks'
  Plug 'sickill/vim-monokai'
  Plug 'tpope/vim-surround'
  Plug 'scrooloose/nerdtree'
  Plug 'xuyuanp/nerdtree-git-plugin'
  Plug 'ryanoasis/vim-devicons'
  Plug 'vim-airline/vim-airline'
  Plug 'tpope/vim-commentary'
  Plug 'mbbill/undotree'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'yggdroot/indentline'
  Plug 'svermeulen/vim-subversive'
  Plug 'https://github.com/vim-scripts/ReplaceWithRegister.git'
  Plug 'easymotion/vim-easymotion'
  Plug 'voldikss/vim-floaterm'
  Plug 'jez/vim-superman'
  Plug 'jiangmiao/auto-pairs'
  Plug 'honza/vim-snippets'
  Plug 'mattn/emmet-vim'
  Plug 'ChristianChiarulli/far.vim'
  Plug 'AndrewRadev/tagalong.vim'
  Plug 'psliwka/vim-smoothie'
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
