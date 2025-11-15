" Source all dap definition files
for f in split(glob('~/.config/nvim/dap/*.lua'), '\n')
    execute 'lua dofile("' . f . '")'
endfor
