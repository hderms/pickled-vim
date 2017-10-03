" Section: plugins
  call plug#begin('~/.vim/plugged')
  Plug 'https://github.com/LucHermitte/lh-vim-lib.git'
  Plug 'https://github.com/Raimondi/delimitMate.git'
  "Plug 'https://github.com/SirVer/ultisnips.git'
  Plug 'https://github.com/StanAngeloff/php.vim.git'
  Plug 'https://github.com/airblade/vim-gitgutter.git'
  Plug 'https://github.com/asciidoc/vim-asciidoc.git'
  Plug 'https://github.com/digitaltoad/vim-pug.git'
  Plug 'https://github.com/editorconfig/editorconfig-vim.git'
  Plug 'https://github.com/ervandew/supertab.git'
  Plug 'https://github.com/farmergreg/vim-lastplace.git'
  Plug 'https://github.com/gcorne/vim-sass-lint.git'
  Plug 'https://github.com/godlygeek/tabular.git'
  Plug 'https://github.com/gosukiwi/vim-atom-dark.git'
  Plug 'https://github.com/groenewege/vim-less.git'
  Plug 'https://github.com/hail2u/vim-css3-syntax.git'
  Plug 'https://github.com/ivalkeen/vim-ctrlp-tjump.git'
  Plug 'https://github.com/jlanzarotta/bufexplorer.git'
  Plug 'https://github.com/jmcantrell/vim-virtualenv.git'
  Plug 'https://github.com/johann-p-koebbe/rspec.vim.git'  " fork with better ultisnips support
  Plug 'https://github.com/joshdick/onedark.vim.git'
  Plug 'https://github.com/jtratner/vim-flavored-markdown.git'
  Plug 'https://github.com/junegunn/vim-easy-align.git'
  Plug 'https://github.com/kchmck/vim-coffee-script.git'
  Plug 'https://github.com/kien/ctrlp.vim.git'
  " Plug 'https://github.com/majutsushi/tagbar.git'
  Plug 'https://github.com/mhinz/vim-grepper.git'
  Plug 'https://github.com/mhinz/vim-startify.git'
  Plug 'https://github.com/moll/vim-node.git'
  Plug 'https://github.com/nanotech/jellybeans.vim.git'
  Plug 'https://github.com/niftylettuce/vim-jinja.git'
  Plug 'https://github.com/oscarh/vimerl.git'
  Plug 'https://github.com/othree/html5.vim.git'
  Plug 'https://github.com/pangloss/vim-javascript.git'
  Plug 'https://github.com/rodjek/vim-puppet.git'
  Plug 'https://github.com/scrooloose/nerdcommenter.git'
  Plug 'https://github.com/scrooloose/nerdtree.git'
  Plug 'https://github.com/sickill/vim-pasta.git'
  Plug 'https://github.com/skammer/vim-css-color.git'
  Plug 'https://github.com/spiiph/vim-space.git'
  Plug 'https://github.com/technicalpickles/vim-nodenv.git'
  Plug 'https://github.com/technicalpickles/vim-ruby-minitest.git' " fork with different filetype
  Plug 'https://github.com/technicalpickles/vim-snippets.git'
  Plug 'https://github.com/tpope/vim-bundler.git'
  Plug 'https://github.com/tpope/vim-cucumber.git'
  Plug 'https://github.com/tpope/vim-dispatch.git'
  Plug 'https://github.com/tpope/vim-endwise.git'
  Plug 'https://github.com/tpope/vim-fugitive.git', { 'tag': 'v2.2' }
  Plug 'https://github.com/tpope/vim-git.git'
  Plug 'https://github.com/tpope/vim-liquid.git'
  Plug 'https://github.com/tpope/vim-markdown.git'
  Plug 'https://github.com/tpope/vim-projectionist.git'
  Plug 'https://github.com/tpope/vim-ragtag.git'
  Plug 'https://github.com/tpope/vim-rails.git'
  Plug 'https://github.com/tpope/vim-rake.git'
  Plug 'https://github.com/tpope/vim-rbenv.git'
  Plug 'https://github.com/tpope/vim-repeat.git'
  Plug 'https://github.com/tpope/vim-sensible.git'
  Plug 'https://github.com/tpope/vim-surround.git'
  Plug 'https://github.com/tpope/vim-unimpaired.git'
  Plug 'https://github.com/vim-airline/vim-airline.git'
  Plug 'https://github.com/vim-scripts/IndentAnything.git'
  Plug 'https://github.com/vim-scripts/dbext.vim.git'
  Plug 'https://github.com/w0rp/ale.git'
  Plug 'https://github.com/ternjs/tern_for_vim.git'


  call plug#end()

" Section: configuration

  scriptencoding utf-8

  " I like pretty colors
  " Note: Use !silent to avoid error at startup before vim-plug first
  " installed
  "silent! colorscheme monokai
  "silent! colorscheme atom-dark

  silent! colorscheme wombat_modified
  "silent! colorscheme jellybeans
  "silent! colorscheme ir_black

  " These two enable syntax highlighting
  set nocompatible          " We're running Vim, not Vi!
  syntax on                 " Enable syntax highlighting

  " Enable filetype-specific indenting and plugins
  filetype plugin indent on

  " Highlight search results once found:
  set hlsearch

  " highlight the current line the cursor is on
  set cursorline
  " highlight the current column the cursor is on
  "set cursorcolumn

  "sm:    flashes matching brackets or parentheses
  set showmatch


  " Set temporary directory (don't litter local dir with swp/tmp files)
  set directory=/tmp/

  " When scrolling off-screen do so 3 lines at a time, not 1
  set scrolloff=3

  " enable line numbers
  set number
  setlocal numberwidth=5

  " Enable tab complete for commands.
  " first tab shows all matches. next tab starts cycling through the matches
  set wildmode=list:longest,full
  set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

  " Display extra whitespace
  "set list listchars=tab:»·,trail:·

  " don't make it look like there are line breaks where there aren't:
  "set nowrap

  " assume the /g flag on :s substitutions to replace all matches in a line:
  set gdefault

  " enable setting title
  set title
  " configure title to look like: Vim /path/to/file
  set titlestring=VIM:\ %-25.55F\ %a%r%m titlelen=70

  " can has foldin plz?
  set foldenable
  set foldmethod=syntax
  set foldlevel=999 " make it really high, so they're not displayed by default

  " 'murica
  set spelllang=en_us

  "let g:browser = 'open '

  " use the_silver_surfer for Ack
  let g:ackprg = 'ag --nogroup --nocolor --column'

  augroup myfiletypes
    " Clear old autocmds in group
    autocmd!

    " Section: ruby
      autocmd FileType ruby,eruby,yaml set shiftwidth=2 softtabstop=2 tabstop=2 expandtab
      autocmd BufRead,BufNewFile *.Brewfile set ft=ruby
      autocmd BufRead,BufNewFile Capfile set ft=ruby
      autocmd BufRead,BufNewFile Gemfile set ft=ruby
      autocmd BufRead,BufNewFile Gemfile set ft=ruby
      autocmd BufRead,BufNewFile Thorfile set ft=ruby
      autocmd BufRead,BufNewFile *.god set ft=ruby
      autocmd BufRead,BufNewFile *.ru set ft=ruby
      autocmd BufRead,BufNewFile .caprc set ft=ruby

    " Section: other stuff

    " indent with two spaces, always expand tabs
    autocmd FileType python set shiftwidth=4 softtabstop=4 expandtab
    autocmd FileType javascript,html,htmldjango,css set shiftwidth=2 softtabstop=2 expandtab
    autocmd FileType vim set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
    autocmd FileType cucumber set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
    autocmd FileType puppet set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
    autocmd FileType bash set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
    autocmd FileType sh set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
    autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
    autocmd BufRead,BufNewFile *etc/nginx/* set ft=nginx
    autocmd BufEnter *.haml setlocal cursorcolumn
  augroup END

  " Turn on language specific omnifuncs
  autocmd FileType ruby set omnifunc=rubycomplete#Complete
  autocmd FileType python set omnifunc=pythoncomplete#Complete
  autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
  autocmd FileType css set omnifunc=csscomplete#CompleteCSS
  autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
  autocmd FileType php set omnifunc=phpcomplete#CompletePHP
  autocmd FileType c set omnifunc=ccomplete#Complete
  autocmd FileType irb inoremap <buffer> <silent> <CR> <Esc>:<C-u>ruby v=VIM::Buffer.current;v.append(v.line_number, eval(v[v.line_number]).inspect)<CR>


" Section: functions

" Section: commands

" Section: mappings

  " Tab navigation
  nmap <leader>tn :tabnext<CR>
  nmap <leader>tp :tabprevious<CR>
  nmap <leader>te :tabedit

  " Remap F1 from Help to ESC.  No more accidents.
  nmap <F1> <Esc>
  map! <F1> <Esc>

  " insert hashrocket, =>, with control-l
  imap <C-l> <Space>=><Space>

  " align hashrockets with <leader>t control-l
  vmap <leader>t<C-l> :Align =><CR>

  " Toggle NERDTree with <leader>d
  map <silent> <leader>nt :NERDTreeToggle<CR>

  " TextMate fuzzy finder with <leader>t
  map <silent> <leader>t :CtrlP<CR>

  " <leader>F to begin searching with ack
  map <leader>F :GrepperAg<space>

  " search next/previous -- center in page
  nmap n nzz
  nmap N Nzz
  nmap * *Nzz
  nmap # #nzz

  " Yank from the cursor to the end of the line, to be consistent with C and D.
  nnoremap Y y$

  " Hide search highlighting
  map <silent> <leader>nh :nohls <CR>

  " toggle Quickfix window with <leader>q
  map <silent> <leader>q :QFix<CR>

  nnoremap <leader>irb :<C-u>below new<CR>:setfiletype irb<CR>:set syntax=ruby<CR>:set buftype=nofile<CR>:set bufhidden=delete<CR>i

  " Easily spell check
  " http://vimcasts.org/episodes/spell-checking/
  nmap <silent> <leader>s :set spell!<CR>

  map <C-c>n :cnext<CR>
  map <C-c>p :cprevious<CR>

  " replace default tjump with vim-ctrlp-tjump
  map <C-]> :CtrlPtjump<CR>
  vmap <C-]> :CtrlPtjumpVisual<CR>

  function! RspecToMocha()
    silent! %s/\.stub!\?(/.stubs(/
    silent! %s/and_return/returns/
    silent! %s/should_receive/expects/
    silent! %s/should_not_receive\((.*)\)/expects\1.never
    silent! %s/and_raise/raises/
    :w
  endfunction
  command! RspecToMocha call RspecToMocha()

" Section neovim UI

  " neither nvim frontend supports a .gvimrc, so load it ourselves
  if has('gui_vimr') || exists("neovim_dot_app")
    try
      source ~/.gvimrc
    endtry
  endif

" Section: airline plugin
  let g:airline_powerline_fonts = 1
  let g:airline_skip_empty_sections = 1
  let g:Powerline_symbols = 'fancy'


" Section vim-easy-align plugin
  " Start interactive EasyAlign in visual mode (e.g. vipga)
  xmap ga <Plug>(EasyAlign)

  " Start interactive EasyAlign for a motion/text object (e.g. gaip)
  nmap ga <Plug>(EasyAlign)

" Section: ctrlp plugin
  let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|tmp|bundle)$',
  \ 'file': '\v\.(exe|so|dll|gem)$',
  \ }

  " ctrl-p extensions
  let g:ctrlp_extensions = ['tag']

" Section: syntastic plugin
  let g:syntastic_always_populate_loc_list = 1
  let g:syntastic_auto_loc_list = 1
  let g:syntastic_check_on_open = 1
  let g:syntastic_check_on_wq = 0

  let g:syntastic_python_checkers = ['pylint', 'flake8', 'pydocstyle']
  let g:syntastic_sass_checkers=["sasslint"]
  let g:syntastic_scss_checkers=["sasslint"]

  " Section: vim-ale
  let g:ale_open_list = 1 " show when there are errors
  let g:ale_sign_column_always = 1 " always show sign column, so text doesn't move around

  " configure which linters to use
  " - javascript: off by default, since no one syntax checker is going to work everywhere. use .vimrc to override
  let g:ale_linters = {
  \  'javascript': [],
  \}

  " Set per-path options
  " - .env files aren't usually real shell files, so ignore those
  let g:ale_pattern_options = {
  \   '\.env': {'ale_enabled': 0},
  \   '\.env.*$': {'ale_enabled': 0}
  \}

  " Exclude things that will almost always warn:
  " SC1090 - Can't follow non-constant source. Use a directive to specify location.
  " SC1091 - Not following: (error message here)
  let g:ale_linters_sh_shellcheck_exclusions='SC1090,SC1091'

  " Use relaxed yamllint options, since almost never writes good lint.
  " and don't care about line length, since again, no one will write short
  " lines.
  " we just need to write good enough yaml.
  "
  " projects that care more will need to override this in a project-specific .vimrc
  let g:ale_yaml_yamllint_options='-d "{extends: relaxed, rules: {line-length: disable}}"'


" Section: bufexplorer plugin
  let g:bufExplorerDefaultHelp=0       " Do not show default help.
  let g:bufExplorerShowRelativePath=1  " Show relative paths.

" Section: local_vim plugin
  let g:local_vimrc = ['.vimrc.local']

" Section: nerdtree plugin
  " so it doesn't complain about types it doesn't know
  let NERDShutUp = 1
  let NERDTreeHijackNetrw=1
  " quit NERDTree after openning a file
  let NERDTreeQuitOnOpen=1
  " colored NERD Tree
  let NERDChristmasTree = 1
  let NERDTreeHighlightCursorline = 1
  let NERDTreeShowHidden = 1
  " map enter to activating a node
  let NERDTreeMapActivateNode='<CR>'
  let NERDTreeIgnore=['\.git','\.DS_Store','\.pdf', '.beam']

" Section: rails plugin
  " Turn off rails bits of statusbar
  let g:rails_statusline=0

" Section: ultisnips plugin
  let g:UltiSnipsExpandTrigger="<tab>"
  let g:UltiSnipsJumpForwardTrigger="<tab>"
  let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Section: vim-space
  " this interfers with my mapping <C-]> to vim-ctrlp-tjump
  let g:space_no_tags = 1

" Section: vim-ctrlp-tjump
  let g:ctrlp_tjump_only_silent = 1 " jump immediately if only one tag

" Section: nerdcommenter
  " Add spaces after comment delimiters by default
  let g:NERDSpaceDelims = 1
  " Align line-wise comment delimiters flush left instead of following code indentation
  let g:NERDDefaultAlign = 'left'

" Section: vim-javascript
  " Enable jsdoc syntax
  let g:javascript_plugin_jsdoc = 1

  "bindings
  "
  map <silent> <LocalLeader>ws :%s/\s\+$//<CR>

  " Highlight trailing whitespace
   autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
   autocmd BufRead,InsertLeave * match ExtraWhitespace /\s\+$/
  " " Set up highlight group & retain through colorscheme changes
   highlight ExtraWhitespace ctermbg=red guibg=red
   autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
   map <silent> <LocalLeader>hws :highlight clear ExtraWhitespace<CR>
  "
  " " Highlight too-long lines
   autocmd BufRead,InsertEnter,InsertLeave * 2match LineLengthError /\%126v.*/
   highlight LineLengthError ctermbg=black guibg=black
   autocmd ColorScheme * highlight LineLengthError ctermbg=black guibg=black
   " clipboard
   set clipboard=unnamed


" Section: project specific vimrc
  set exrc
  set secure
