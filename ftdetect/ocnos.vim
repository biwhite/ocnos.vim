" Vim ftdetect file
" Language: ocnos
" Maintainer: Ben White <ben@cuckoo.org>
" Forked from the chap below as similar to Cisco.  Thanks
" --- Makoto Momota <makoto.momota@gmail.com>
autocmd BufNewFile,BufReadPost *.ocnos set filetype=ocnos

function! s:isSwitchConfig()
  let secondline = getline(2)
  if secondline =~# '^! Software version: ' | return 1 | en
  let fourthline = getline(4)
  if fourthline =~# '^!Last configuration change at ' | return 1 | en
  return 0
endfunction

augroup ocnos_ftype
    au!
    au BufNewFile,BufRead * if s:isSwitchConfig() | set filetype=ocnos | en
augroup END
