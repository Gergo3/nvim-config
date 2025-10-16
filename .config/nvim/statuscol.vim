function! MyStatusColumn() abort
    let lnum = v:lnum
    let relnum  = v:relnum


    return '%s' . printf('%3d %2d ', lnum, relnum) . '%C '
endfunction

set statuscolumn=%!MyStatusColumn()

set signcolumn=yes

set foldcolumn=1
set fillchars=foldopen:,foldsep:│,foldclose:
set foldlevel=99   " all folds open by default
