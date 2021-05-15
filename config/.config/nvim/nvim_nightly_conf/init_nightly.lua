-- Map Leader to Space
local cmd = vim.cmd
local g = vim.g
local o = vim.o

g.mapleader = ' '

local fn = vim.fn
local execute = vim.api.nvim_command

-- Defaults
require('settings')

-- Settings
require('keymappings')

-- Plugin init
require('plugins')

-- Init LSP for lua
require('lsp_lua')

-- Plug-based Plugin Init
cmd([[

call plug#begin('~/.nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdTree'

call plug#end()

" Let Commands
let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1
]])

-- o = "menuone, noselect"
