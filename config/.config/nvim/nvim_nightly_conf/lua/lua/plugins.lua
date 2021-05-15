return require('packer').startup(function()

    -- Packer can manage itself as an optional plugin
    use {'wbthomason/packer.nvim'}
       
    -- Cosmetic Stuff

    -- Simple below-tezt preveiw
    use {'onsails/lspkind-nvim'}

    -- LSP and Completion
    use {'neovim/nvim-lspconfig'}
    use {'hrsh7th/nvim-compe'}

    -- lua development plug
    use {'tjdevries/nlua.nvim'}
end)
