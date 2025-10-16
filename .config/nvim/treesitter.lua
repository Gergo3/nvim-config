require'nvim-treesitter.configs'.setup{

    --languages to install treesitter for
    ensure_installed = {

        "c",
        "lua",
        "bash",
        "cpp",
        "dockerfile",
        "json",
        "markdown",
        "vim",
        "xml",



    },


    --enable syntax-highlighting
    highlight={enable=true}

}
