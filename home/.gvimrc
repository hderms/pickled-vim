" And pretty fonts
  set guifont=Source\ Code\ Pro:h12

" No toolbar
  set guioptions-=T
  
" fullscreen maximizes vertically AND horizontally
  set fuoptions=maxvert,maxhorz

  set lines=50
  set columns=80

if has('gui_macvim')
  " bind command-/ to toggle comment
  " requires NERD Commenter to be installed: http://www.vim.org/scripts/script.php?script_id=1218
    nmap <D-/> ,c<space>
    vmap <D-/> ,c<space>
    imap <D-/> <C-O>,c<space>
    let NERDShutUp = 1 " so it doesn't complain about types it doesn't know

  " bind command-] to shift right
    nmap <D-]> >>
    vmap <D-]> >>
    imap <D-]> <C-O>>>

  " bind command-[ to shift left
    nmap <D-[> <<
    vmap <D-[> <<
    imap <D-[> <C-O><<

  " bind command-option-l to toggle line numbers
    nmap <silent> <D-M-l> :set invnumber<CR>
   
  " open tabs with command-<tab number>
    map <silent> <D-1> :tabn 1<CR>
    map <silent> <D-2> :tabn 2<CR>
    map <silent> <D-3> :tabn 3<CR>
    map <silent> <D-4> :tabn 4<CR>
    map <silent> <D-5> :tabn 5<CR>
    map <silent> <D-6> :tabn 6<CR>
    map <silent> <D-7> :tabn 7<CR>
    map <silent> <D-8> :tabn 8<CR>
    map <silent> <D-9> :tabn 9<CR>

  " use vim search instead of pop up
    macmenu Edit.Find.Find\.\.\. key=<nop>
    map <D-f> /

  " TextMate / Atom fuzzy finder with Command-t
    macmenu File.New\ Tab key=<nop>
    map <silent> <D-t> :CtrlP<CR>

  " Search project like Atom
    nmap <D-F> :Ack<space>

  " Atom's Tree View: Toggle
    map <silent> <D-K><D-B> :execute 'NERDTreeToggle ' . getcwd()<CR>
    map <silent> <D-Bslash> :execute 'NERDTreeToggle ' . getcwd()<CR>

  " Atom's Tree View: Reveal Active File
    map <silent> <D-Bar> :NERDTreeFind<CR>
endif

