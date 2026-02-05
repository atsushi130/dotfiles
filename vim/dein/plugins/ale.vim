" ALE configuration
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['eslint', 'tsserver'],
\   'python': ['flake8'],
\   'rust': ['cargo'],
\}

let g:ale_fixers = {
\   'javascript': ['prettier', 'eslint'],
\   'typescript': ['prettier', 'eslint'],
\   'python': ['black'],
\   'rust': ['rustfmt'],
\}

let g:ale_fix_on_save = 1
