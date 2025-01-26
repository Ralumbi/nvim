# NeoVim commands

### Neotree

<C-n> = open file tree

### Telescope

<leader>ff = find files
<leader>fg = live grep
<leader>fb = buffer
<leader>fh = help tags

### LSP

shift+K = function/code information
<leader>gd = definition
<leader>gr = reference
<leader>ca = code action

### NoneLS aka NullLS

<leader>gf = format file

### Completions

<C-b> = scroll docs -4
<C-f> = scroll docs 4
<C-Space> = complete
<C-e> = abort
<CR> = confirm

### Debugger

<leader>dt = toggle breakpoint
<leader>dc = continue

### VIM commands to know
* = select a word
shift + N = backwards search
n = forward search
ciw = replace
:s%/WordToChange/WordYouWantItToBe/g (/g is added as it means global, to change all in the file)
                                     (/gc will prompt if you want to make the change per equal word it found)
viw = visualy select the word + copy(yank) it
:reg = seeing all yanked (copied words, lines)
"[1,2,3,4,5,6,7,8,9,0,-,*,+,.,%,/] = the can use to use from the :reg like so: "5p or "%p where you use p to paste the :reg placed item
selecting something via visual or visual-line you can set :reg place e.g. "6y so instead of the p we use y to yank(copy)
where the "+ is the system wide copy
:let @+=@% = copy your file name to the system clipboard

q = macro start then you add a character after (mostly you do qq)
assuming we did qq we will need to use @q to redo what we did
we can also do 5@q to repeat our macro for the current and next 4 lines.







