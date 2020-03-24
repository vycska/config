" used real-time
" set list :show <Tab> as ^I and end-of-line as $
" set paste "paste mode, insert typed text literally
" set cursorline "highlight the screen line of the cursor
" set cursorcolumn "highlight the screen column of the cursor
" set colorcolumn "columns to highlight
" set scrollbind "this window scrolls together with other bound windows

" general and important
set nocompatible "do not make Vim to be more Vi-compatible, make Vim to behave in a more useful way
set cpoptions& "flags that indicates Vi-compatible behavior

" general vim
set history=100 "how many command lines are remembered
set viminfo=!,<100,'100,/100,:100,f1,h,s10 "list that specifies what to write in the viminfo file
set sessionoptions=blank,buffers,curdir,folds,globals,help,options,tabpages,winsize "list of words that specifies what to put in a session file
set restorescreen "the screen contents is restored when exiting Vim
set cryptmethod=blowfish2 "encryption method for file writing

" files and directories
set fileformats=unix,dos "list of file formats to look for when editing a file
set fixendofline "fixes missing end-of-line at end of text file
set path=.,,**,/usr/arm-none-eabi/include,/usr/lib/gcc/arm-none-eabi/9.2.0/include "list of directories names used for file searching
set noautochdir "do not change to directory of file in buffer
set fileignorecase "ignore case when using file names
set modeline "enable using settings from modelines when reading a file
set modelines=5 "number of lines to check for modelines

" messages
set report=0 "threshold for reporting number of changed lines
set noerrorbells "do not ring the bell for error messages
set more "pause listings when the screen is full
set shortmess+=I "list of flags to make messages shorter
set nowarn "do not warn when using a shell command and a buffer has changes

" backups
set writebackup "write a backup file before overwriting a file
set nobackup "do not keep a backup file after overwriting a file
set backupdir& "list of directories to put backup files in
set backupext& "file name extension for the backup file
set patchmode& "keep oldest version of a file [specifies file name extension]

" swap file
set swapfile "use a swap file for this buffer
set directory& "list of directories for the swap file
set updatetime=10000 "time in msec after which the swap fie will be updated
set updatecount=200 "number of characters typed to cause a swap file update

" languages
set isfname& "specifies the characters in a file name
set isident& "specifies the characters in an identifier
set iskeyword& "specifies the characters in a keyword
set isprint& "specifies printable characters

" command line completion
set wildchar=<Tab> "key that triggers command-line expansion
set wildmenu "command-line completion shows a list of matches
set wildmode=list:full "specifies how command line completion works
set wildignore+=*.o,*.obj "list of patterns to ignore files for file name completion
set suffixes+=.d,.elf,.hex,.bin "list of file name extensions that have a lower priority
set wildignorecase "ignore case when completing file names

" terminal
set title "show info in the window title
set ttyfast "terminal connection is fast
set esckeys "recognize keys that start with <Esc> in Insert mode

" highlighting
set background=dark "the background color brightness

" mouse
set mouse& "list of flags for using the mouse
set mousemodel=extend "what the right mouse button is used for

" mapping
set pastetoggle=<F11> "key sequence to toggle paste mode
set timeout "allow timing out halfway into a mapping
set ttimeout "allow timing out halfwat into a key code
set timeoutlen=2000 "time in msec for 'timeout'
set ttimeoutlen=100 "time in msec for 'ttimeout'

" windows
set splitbelow "a new window is put below the current one
set splitright "a new window is put right of the current one
set noequalalways "do not make all windows the same size when adding/removing windows
set helpheight& "initial height of the help window
set previewpopup=height:6 "use a popup window for preview
set switchbuf=useopen "which window to use when jumping

" scrolling
set window& "number of lines to scroll for CTRL-F and CTRL-B
set scroll& "number of lines to scroll for CTRL-U and CTRL-D
set scrolloff=2 "number of screen lines to show around the cursor
set scrolljump=1 "minimal number of lines to scroll at a time
set sidescroll=1 "minimal number of columns to scroll horizontally
set sidescrolloff=2 "minimal number of columns to keep left and right of the cursor
set scrollopt=ver,hor,jump "list of options for 'scrollbind'

" view
set number "show the line number for each line
set numberwidth=4 "number of columnds to use for the line number
set showmode "display the current mode in the status line
set noruler "do not show cursor position below each window
set statusline=%3n\ %f\ %<(%{strftime(\"%Y-%m-%d\ %H:%M\",getftime(expand(\"%\")))})\ [%{&fileencoding},%{&fileformat}]\ %y%q\ %5*%([%M%R%H%W]%)%0*%=%-20(%4l/%L,%4c%V%)%{mode()}\  "alternate format to be used for a status line
set laststatus=2 "when to use a status line for the last window
set showcmd "show (partial) command keys in the status line
set cmdheight=1 "number of lines used for the command-line

" displaying text
set wrap "long lines wrap
set linebreak "wrap long lines at a character in 'breakat'
set breakat+=_ "which characters might cause a line break
set showbreak=>\  "string to put before wrapped screen lines
set display=truncate "include "lastline" to show the last line even if it doesn't fit
set listchars=eol:$,space:.,trail:-,extends:>,precedes:<,nbsp:_ "list of strings used for list mode

" tabs and indenting
set tabstop=4 "number of spaces a <Tab> in the text stands for
set softtabstop=0 "if non-zero, number of spaces to insert for a <Tab>
set shiftwidth=4 "number of spaces used for each step of (auto)indent
set expandtab "expand <Tab> to spaces in Insert mode
set shiftround "round to 'shiftwidth' for "<<" and ">>"

" searching
set incsearch "show match for partly typed seach command
set hlsearch "highlight all matches for the last used search pattern
set wrapscan "search commands wrap around the end of the buffer
set ignorecase "ignore case when using a search pattern
set smartcase "override 'ignorecase' when pattern has upper case characters
set magic "change the way backslashes are used in search patterns
set nogdefault "do not use the 'g' flag for ":substitute"

" moving around
set whichwrap=b,s "list of flags specifying which commands wrap to another line
set startofline "many jump commands move the cursor to the first non-blank character of a line
set matchpairs+=<:> "list of pairs that match for the "%" command

" undo [editing]
set undofile "automatically save and restore undo history
set undolevels=1000 "maximum number of changes that can be undone
set undodir& "list of directories for undo files

" completion [editing]
set complete=.,t "specifies how Insert mode completion works for CTRL-N and CTRL-P
set completeopt=menuone,popup "whether to use a popup menu for Insert mode completion
set completepopup& "options for the Insert mode completion info popup
set noinfercase "do not adjust case of a keyword completion match
set dictionary& "list of dictionary files for keyword completion
set thesaurus& "list of thesaurus files for keyword completion
set noshowfulltag "when completing tags in Insert mode do not show more info

" editing text
set backspace=eol,indent,start "specifies what <BS>, CTRL-W, etc. can do in Insert mode
set textwidth=0 "line length above which to break a line
set formatoptions-=ro "list of flags that tell how automatic formatting works
set nojoinspaces "do not use two spaces after '.' when joining a line
set nrformats=alpha,bin,hex "number formats recognized for CTRL-A and CTRl-X commands
set noshowmatch "when inserting a bracket, do not briefly jump to its match
set notildeop "the "~" command does not behave like an operator
set nodigraph "do not enable entering digraphs with c1 <BS> c2

" tags
set tags& "list of file names to search for tags
set tagstack "a :tag command will use the tagstach
set tagbsearch "use binary searching in tags files
set tagcase=followscs "how to handle case when searching in tags files

if filereadable("cscope.out")
    set cscopeprg=/usr/bin/cscope "command for executing cscope
    set nocscopeverbose "do not give messages when adding a cscope database
    cscope add cscope.out
    set cscopeverbose "give messages when adding a cscope database
    set nocscoperelative "file ames in a cscope file are not relative to that file
    set nocscopetag "do not use cscope for tag commands
    set cscopetagorder=0 "the order in which ":cstag" performs a search
    set cscopepathcomp=5 "how many components of the path to show
    set cscopequickfix=s0,g0,d0,c0,t0,e0,f0,i0,a0 "when to use a quickfix window for cscope
    " 's' symbol, g' global, 'd' called, 'c' calls, 't' text, 'e' egrep, 'f' file, 'i' includes, 'a' assignments
    nmap <C-\>s :cscope find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>g :cscope find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>d :cscope find d <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>c :cscope find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>t :cscope find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>e :cscope find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>f :cscope find f <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-\>i :cscope find i <C-R>=expand("<cfile>")<CR><CR>
    nmap <C-\>a :cscope find a <C-R>=expand("<cword>")<CR><CR>
endif

filetype on "enable file type detection
filetype plugin on "enable loading the plugin files for specific file types
filetype indent on "enable loading the indent file for specifi file types

syntax enable "switch on syntax highlighting (will keep your current color settings)

highlight CursorLine cterm=bold ctermbg=darkblue
highlight StatusLine cterm=bold ctermbg=red ctermfg=white
highlight Pmenu cterm=bold ctermbg=black
highlight User1 ctermbg=white ctermfg=black
highlight User2 ctermbg=white ctermfg=red
highlight User3 ctermbg=green ctermfg=white
highlight User4 ctermbg=red ctermfg=white
highlight User5 cterm=bold ctermbg=black ctermfg=yellow

let mapleader="\\"

autocmd FileType vim :set nowrap
autocmd FileType c :let c_no_curly_error=1
autocmd FileType c :let c_gnu=1
autocmd FileType c :unlet! c_comment_strings

augroup CursorLine
  autocmd!
  autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  autocmd WinLeave * setlocal nocursorline
augroup end

inoreabbrev \i \begin{itemize}<CR>\itemsep 0pt<CR>\item<CR>\end{itemize}<Up>

nmap zq zfa}
nmap <F3> :tp<CR>
nmap <F4> :tn<CR>
nmap <F5> :cp<CR>
nmap <F6> :cn<CR>
nmap <F12> :vnew<CR>
nmap <Space> :call Preview_toggle()<CR>
nmap <Leader>l :call matchadd('User2', '\%'.line('.').'l')<CR>
nmap <Leader>d :!dasht <cword><CR>
nmap <C-F> :shell<CR>
nnoremap <C-]> g<C-]>
nnoremap <C-L> :nohlsearch <bar> call clearmatches()<CR><C-L>

set <M-1>=1
set <M-2>=2
set <M-3>=3
set <M-4>=4
nnoremap <M-1> :syntax keyword User1 <C-R>=expand("<cword>")<CR><CR>
nnoremap <M-2> :syntax keyword User2 <C-R>=expand("<cword>")<CR><CR>
nnoremap <M-3> :syntax keyword User3 <C-R>=expand("<cword>")<CR><CR>
nnoremap <M-4> :syntax keyword User4 <C-R>=expand("<cword>")<CR><CR>
nmap ☺ <M-1>
nmap ☻ <M-2>
nmap ♥ <M-3>
nmap ♦ <M-4>
nmap [1;3F☺ <M-1>
nmap [1;3B☻ <M-2>
nmap [6;3~♥ <M-3>
nmap [1;3D♦ <M-4>

function Preview_toggle()
    let pid = popup_findpreview()
    let w = expand("<cword>")
    if pid != 0
        execute "pclose!"
    elseif w =~ '\a'
        silent! execute "ptag " . w
    endif
endfunction
