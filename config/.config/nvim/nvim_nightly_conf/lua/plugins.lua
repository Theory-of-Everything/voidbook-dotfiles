return require('packer').startup(function()

    -- Packer can manage itself as an optional plugin
    use {'wbthomason/packer.nvim', opt = true}
    
    -- Simple below-tezt preveiw
    use {'onsnails/lspkind-nvim'}

    -- LSP and Completion
    use {'neovim/nvim-lspconfig'}
    use {'nvim-lua/completion-nvim'}

    -- lua development plug
    use {'tjdevries/nlua.nvim'}
end)
