let g:go_gopls_enabled = 0
let g:go_def_mapping_enabled = 0
let g:go_doc_keywordprg_enabled = 0
" go_fmt_autosave causes vim-go to reload the buffer on save and break coc.nvim:
" https://gitter.im/neoclide/coc.nvim?at=5ed12830a91f120a6cceeb6c
" https://github.com/neoclide/coc.nvim/issues/53
let g:go_fmt_autosave = 0 
" let g:go_def_mode = 'gopls' " using coc.nvim instead

" nnoremap <S-F6> :GoRename<CR>
" nnoremap <F7> :GoReferrers<CR>
" nnoremap <A-F7> :GoReferrers<CR>
" nnoremap <F12> :GoDeclsDir<CR>
