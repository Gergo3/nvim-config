function! MyStatusColumn() abort
    let lnum = v:lnum
    let relnum  = v:relnum


    "return '%s' . printf('%3d %2d ', lnum, relnum) . '%C '
    return '%s' . printf('%3d ', lnum) . '%2r ' . '%C '
endfunction

"set statuscolumn=%!MyStatusColumn()
"set statuscolumn=%s%3l\ %2r\ %C
set statuscolumn=%s%3l\ %{printf('%2d', v:relnum)}\ %C

set signcolumn=yes

set nu

set foldcolumn=1
set fillchars=foldopen:,foldsep:│,foldclose:
set foldlevel=99   " all folds open by default
