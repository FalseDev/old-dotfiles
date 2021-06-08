" Conquer of completion extentions
let g:coc_global_extensions = [
   \    'coc-tsserver',
   \    'coc-eslint',
   \    'coc-pairs',
   \    'coc-json',
   \    'coc-pyright',
   \    'coc-html',
   \    'coc-prettier'
   \    ]

autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx
autocmd BufNewFile,BufRead *.svelte set filetype=html
