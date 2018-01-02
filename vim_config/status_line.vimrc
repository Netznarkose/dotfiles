" Status Line Configuration
set laststatus=2  " always show status line

let g:lightline = {
                  \ 'colorscheme': 'default',
                  \ 'active': {
                  \ 'left': [ [ 'mode', 'paste' ],
                  \           [ 'fugitive', 'filename', 'modified' ] ],
                  \ 'right': [ ]
                  \ },
                  \ 'inactive': {
                  \ 'left': [ [ 'mode', 'paste' ],
                  \           [ 'fugitive', 'filename', 'modified' ] ],
                  \ 'right': [ ]
                  \ },
                  \ }
