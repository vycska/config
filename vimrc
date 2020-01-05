set nocompatible "do not make Vim to be more Vi-compatible, make Vim to behave in a more useful way

set path=.,,**,/usr/arm-none-eabi/include,/usr/lib/gcc/arm-none-eabi/9.2.0/include "this is a list of directories which will be searched when using various commands
set wildmode=list:full "completion mode that is used for the character specified with 'wildchar'
set wildmenu "command-line completion operates in an enhanced mode
set wildchar=<Tab> "character you have to type to start wildchar expansion in the command-line, as specified with 'wildmode'
set wildignore+=*.o,*.obj "a list of file patterns; a file that matches with one of these patterns is ignored when expanding wildcards, completing file or directory names, and influences the result of expand(), glob() and globpath()
set suffixes+=.d,.elf,.hex,.bin "files with these suffixes get a lower priority whn multiple files match a wildcard
set history=100 "how many entries of ":" commands, previous search patterns may be stored in histories
set viminfo=!,<100,%,'100,/100,:100,f1,h,s10 "viminfo file is read upon startup and written when exiting Vim (specified parameters)
set sessionoptions=blank,buffers,curdir,folds,globals,help,options,tabpages,winsize "change the effect of the :mksession command
set restorescreen "the screen contents is restored when exiting Vim
set cryptmethod=blowfish2 "method used for encryption when the buffer is written to a file

set mouse& "enable the use of the mouse

set writebackup "make a backup before overwriting a file; the backup is removed after the file was succesfully written
set nobackup "do not make a backup before overwriting a file and leave it around after the file has been successfully written
set backupdir& "list of directories for the backup file
set swapfile "use a swapfile for the buffer
set directory& "list of directory names for the swap file
set updatetime=10000 "if this many milliseconds nothing is typed the swap file will be written to disk
set updatecount=200 "after typing this many characters the swap file will be written to disk
set undofile "undo history is saved to an undo file when writing a buffer to a file and restored on buffer read
set undolevels=1000 "maximum number of changes that can be undone

set incsearch "while typing a search command, show where the pattern, as it as typed so far, matches
set hlsearch "when there is a previous search pattern, highlight all its matches
set wrapscan "searches wrap around the end of the file
set ignorecase "ignore case in search patterns
set smartcase "override the 'ignorecase' option if the search pattern contains upper case characters
set tagcase=followscs "follow the 'smartcase' and 'ignorecase' options when searching the tags file
set magic "changes the special characters that can be used in search patterns
set nogdefault "the :substitute flag 'g' is default off

set complete=.,i,t "specify how keyword completion ins-completion works when CTRL-P or CTRL_N are used -- it indicates the type of completion and the places to scan
set noinfercase "when doing keyword completion in insert mode ins-completion, and 'ignorecase' is also on, the case of the match is adjusted depending on the typed text -- turn this off

set tabstop=4 "number of spaces that a <Tab> in the file counts for
set softtabstop=0 "number of spaces that a <Tab> counts for while performing editing operations
set shiftwidth=4 "number of spaces to use for each step of (auto)indent
set expandtab "use the appropriate number of spaces to insert a <Tab>
set shiftround "round indent to multiple of 'shiftwidth'

set wrap "lines longer than the width of the window will wrap and displaying continues on the next line
set linebreak "wrap long lines at a characters in 'breakat' rather than at the last character that fits on the screen
set breakat& "this option lets you choose which characters might cause a line break if 'linebreak' is on
set textwidth=0 "maximum width of text that is being inserted -- a longer line will be broken after white space to get this width -- a zero value disable this
set formatoptions-=ro "how automatic formatting is done -- do not automaitcally insert comment leader after hitting <Enter>, 'o', 'O'
set backspace=eol,indent,start "influenes the working of <BS>, <Del>, Ctrl-W and Ctrl-U in Insert mode -- allow backspacing over line breaks, autoindent, start of insert
set nojoinspaces "do not insert two spaces after a '.', '?' and '!' with a join command (only one space is inserted)
set whichwrap=b,s "allow specified keys that move the cursor left/right to move to the previous/next line when the cursor is on the first/last character in the line
set matchpairs+=<:> "characters that form pairs; the % command jumps from one to the other
set startofline "various commands (CTRL-D, G, H, gg, ...) move the cursor to the first non-blank of the line
set notildeop "the tilde command ~ does not behave like an operator

set title "the title of the window will be set
set statusline=%3n\ %{mode()}\ %f\ [%{&fileencoding},%{&fileformat}]\ %y%q\ %([%M%R%H%W]%)%=%-20(%4l/%L,%4c%V%)%p%%\  "content of the status line
set report=0 "threshold for reporting number of lines changed
set showmode "if in Insert, Replace or Visual mode put a message on the last line
set more "listings pause when the whole screen is filled
set nrformats=alpha,bin,hex "this defines what bases Vim will consider for numbers when using the CTRL-A and CTRL-X commands for adding to and subtracting from a number respectively
set noerrorbells "do not ring the bell (beep or screen flash) for error messages
set noruler "do not show the line and column number of the cursor position, and relative position of the displayed text in the file
set cmdheight=1 "number of screen lines to use for the command-line
set laststatus=2 "when the last window will have a status line -- always
set display=truncate "change the way text is displayed -- 'truncate' causes as much as possible of the last line in a window to be displayed and "@@@" to be put in the first column of the last screen line
set shortmess+=I "this option helps to avoid all the hit-enter prompts caused by file messages and to avoid some other messages
set nowarn "do not give a warning message when a shell command is used while the buffer has been changed
set listchars=eol:$,space:.,trail:-,extends:>,precedes:<,nbsp:_ "strings to use in 'list' mode and for the :list command
set showbreak=>\  "string to put at the start of lines that have been wrapped
set showcmd "show (partial) command in the last line of the screen
set number "print the line number in front of each line
set numberwidth=4 "minimal number of columns to use for the line number
set splitbelow "splitting a window will put the new window below the current one
set splitright "splitting a window will put the new window right of the current one
set cursorline "highlight the text line of the cursor with CursorLine
set noequalalways "splitting a window will reduce the size of the current window and leave the other windows the same
set background=dark "use colors that look good on a dark backgound

set isfname& "the characters specified by this option are included in file names and path names; filenames ar used for commands like "gf", "[i" and in the tags file
set iskeyword& "keywords are used in searching and recognizing with many commands: "w", "*", "[i", etc.

set scroll& "number of lines to scroll with Ctrl-U and Ctrl-D commands
set scrolljump=1 "minimal number of lines to scroll when the cursor gets off the screen
set scrolloff=2 "minimal number of screen lines to keep above and below the cursor
set sidescroll=1 "the minimal number of columns to scroll horizontally
set sidescrolloff=2 "the minimal number of screen columns to keep to the left and to the right of the cursor if 'nowrap' is set
set scrollopt=ver,hor,jump "specify how 'scrollbind' windows should behave

set timeout "determine the behavior when part of a mapped key sequence or keyboard code has been received
set ttimeout "time out on -- mappings and key codes
set timeoutlen=2000 "timeout on mapping after two seconds
set ttimeoutlen=100 "timeout on key codes after a tenth of a second

set fileformats=unix,dos "give the <EOL> formats that will be tried when starting to edit a new buffer and when reading a file into an existing buffer
set fixendofline "when writing a file, <EOL> at the end of file will be restored if missing

set tags& "filenames for the tag command
set tagstack "tagstack is used normally
set tagbsearch "binary searching is first used in the tags file

filetype on "enable file type detection
filetype plugin on "enable loading the plugin files for specific file types
filetype indent on "enable loading the indent file for specifi file types

syntax enable "switch on syntax highlighting (will keep your current color settings)

highlight CursorLine cterm=bold ctermbg=darkblue
highlight StatusLine cterm=bold ctermbg=red ctermfg=16
highlight User1 ctermbg=red ctermfg=black
highlight User2 ctermbg=darkblue ctermfg=white

autocmd FileType vim :set nowrap
autocmd FileType c :unlet! c_comment_strings

inoreabbrev \i \begin{itemize}<CR>\itemsep 0pt<CR>\item<CR>\end{itemize}<Up>

nmap zq zfa}
nmap <F3> :tp<CR>
nmap <F4> :tn<CR>
nmap <F5> :cp<CR>
nmap <F6> :cn<CR>
nmap <F12> :vnew<CR>
nmap <C-F> :shell<CR>
nnoremap <C-L> :nohlsearch<CR><C-L>

if filereadable("cscope.out")
    set cscopeprg=/usr/bin/cscope "specify the command to execute cscope
    set nocscopeverbose "messages will not be printed indicating success or failure when adding a cscope database
    cscope add cscope.out
    set cscopeverbose "messages will be printed indicating success or failure when adding a cscope database
    set nocscoperelative "do not use the basename of cscope.out location as the prefix to construct an absolute path
    set nocscopetag "do not use :cstag instead of the default :tag behaviour
    set cscopetagorder=0 "determine the order in which :cstag performs a search -- cscope is searched first
    set cscopepathcomp=5 "determine how many components of a file's path to display
    set cscopequickfix=s0,g0,d0,c0,t0,e0,f0,i0,a0 "specify whether to use quickfix window to show cscope results
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
