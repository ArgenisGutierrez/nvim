return {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                -- Lista de parsers a instalar
                ensure_installed = {
                },

                -- Instalar parsers automáticamente
                auto_install = true,

                -- Habilitar resaltado de sintaxis
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },

                -- Habilitar indentación automática
                indent = {
                    enable = true,
                },

                -- Habilitar plegado de código
                fold = {
                    enable = true,
                },
            })
        end,
    }
