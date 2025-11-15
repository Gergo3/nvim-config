call plug#begin()

" Source all plugin definition files
for f in split(glob('~/.config/nvim/plugins/*.vim'), '\n')
  execute 'source' f
endfor

call plug#end()
