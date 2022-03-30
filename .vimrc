call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'

if exists('g:vscode')
    Plug 'ChristianChiarulli/vscode-easymotion'
else
    Plug 'easymotion/vim-easymotion'
endif

" Initialize plugin system
call plug#end()

" use system clipboard
set clipboard=unnamed

" comment from vscode
if exists('g:vscode')
    xmap <C-/> <Plug>VSCodeCommentarygv
    nmap <C-/> <Plug>VSCodeCommentaryLine
endif

let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `<Space>{char}{label}`
map <Space> <Plug>(easymotion-bd-f)
nmap <Space> <Plug>(easymotion-bd-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
map s <Plug>(easymotion-bd-f2)
nmap s <Plug>(easymotion-bd-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Space>j <Plug>(easymotion-j)
map <Space>k <Plug>(easymotion-k)


