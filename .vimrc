""""""""""""""""""""""""""""Plugins
call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsEditSplit="vertical"

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting



"""""""""""""""""""Mappings""""""""""""
"Spell-check set to F6
map <F6> :setlocal spell! spelllang=en_us<CR>

"update with zz
nnoremap zz :update<CR>

"move inside paragraph as in seperate line
nnoremap j gj
nnoremap k gk

""""""""""""""""""""""""""""Settings
"Change display number
set nu rnu

" Splits open at the bottom and right
set splitbelow splitright

"update when saving vim so it affect the file also
"can also use :edit or :e on the file for update to take effect
set autoread


""""""""""""""""""""""""""""Latex bindings
"Save vim and compile
"map I :w<CR> :! pdflatex %<CR><CR>

"nnoremap <C-i> :w<CR> :! pdflatex %<CR><CR>

"open compiled PDF with zathura
"map S :! zathura $(echo % \| sed 's/tex$/pdf/') & disown <CR><CR>
"map S :! mupdf-x11 $(echo % \| sed 's/tex$/pdf/') & disown <CR><CR>
"map S :! zathura --fork %:t:r.pdf<CR><CR>
"map S :! mupdf $(echo % \| sed 's/tex$/pdf/') & disown <CR><CR>
"nnoremap :<C-u>! zathura %:p:r.pdf<CR>
"map S zathura %:p:r.pdf<CR>
"map S zathura %:p:r.pdf<CR>

""""""""""""""""""""""""""""Snippets






""""""""""""""""""""""""""""
