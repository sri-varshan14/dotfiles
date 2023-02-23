require("which-key").setup{
  plugins = {
    marks = true, -- shows a list of your marks on ' and `
    registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
    spelling = {
      enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
      suggestions = 20, -- how many suggestions should be shown in the list?
    },
    -- the presets plugin, adds help for a bunch of default keybindings in Neovim
    -- No actual key bindings are created
    presets = {
      operators = true, -- adds help for operators like d, y, ... and registers them for motion / text object completion
      motions = true, -- adds help for motions
      text_objects = true, -- help for text objects triggered after entering an operator
      windows = true, -- default bindings on <c-w>
      nav = true, -- misc bindings to work with windows
      z = true, -- bindings for folds, spelling and others prefixed with z
      g = true, -- bindings for prefixed with g
    },
  },
  -- add operators that will trigger motion and text object completion
  -- to enable all native operators, set the preset / operators plugin above
  operators = { gc = "Comments" },
  
  key_labels = {
    -- override the label used to display some keys. It doesn't effect WK in any other way.
    -- For example:
    -- ["<space>"] = "SPC",
    -- ["<cr>"] = "RET",
    -- ["<tab>"] = "TAB",
  },

  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "➜", -- symbol used between a key and it's label
    group = "+", -- symbol prepended to a group
  },
  
  popup_mappings = {
    scroll_down = '<c-d>', -- binding to scroll down inside the popup
    scroll_up = '<c-u>', -- binding to scroll up inside the popup
  },
  
  window = {
    border = "single", -- none, single, double, shadow
    position = "bottom", -- bottom, top
    margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
    padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
    winblend = 0
  },

  layout = {
    height = { min = 4, max = 25 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 3, -- spacing between columns
    align = "left", -- align columns left, center or right
  },

  ignore_missing = false, -- enable this to hide mappings for which you didn't specify a label
  hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ "}, -- hide mapping boilerplate
  show_help = true, -- show help message on the command line when the popup is visible
  show_keys = true, -- show the currently pressed key and its label as a message in the command line
  triggers = "auto", -- automatically setup triggers
  -- triggers = {"<leader>"} -- or specify a list manually
  triggers_blacklist = {
    -- list of mode / prefixes that should never be hooked by WhichKey
    -- this is mostly relevant for key maps that start with a native binding
    -- most people should not need to change this
    i = { "j", "k" },
    v = { "j", "k" },
  },
  -- disable the WhichKey popup for certain buf types and file types.
  -- Disabled by deafult for Telescope
  disable = {
    buftypes = {},
    filetypes = { "TelescopePrompt" },
  },
}

local wk = require("which-key")
local gs = package.loaded.gitsigns

wk.register({
  ["<leader>e"] = { "<cmd>NeoTreeFocusToggle<CR>", "NeoTree" },
  ["<leader>s"] = { "<cmd>wall<CR>", "Save All Files" },
  ["<leader>q"] = { "<cmd>wqall<CR>", "Quit Neovim" },
  ["<leader><leader>"] = { "<cmd>Telescope find_files<CR>", "Find Files" },
  ["<leader>,"] = { "<cmd>Telescope buffers<CR>", "Buffers" },

  ["<leader>f"] = { name = "+Telescope" },
  ["<leader>ff"] = { "<cmd>Telescope find_files<CR>", "find_files" },
  ["<leader>fb"] = { "<cmd>Telescope buffers<CR>", "buffers" },
  ["<leader>fc"] = { "<cmd>Telescope colorscheme<CR>", "coloscheme" },
  ["<leader>fl"] = { "<cmd>Telescope live_grep<CR>", "live_grep" },
  ["<leader>ft"] = { "<cmd>Telescope tags<CR>", "tags" },
  ["<leader>fh"] = { "<cmd>Telescope help_tags<CR>", "help_tags" },

  ["<leader>fg"] = { name = "+git" },
  ["<leader>fgc"] = { "<cmd>Telescope git_commits<CR>", "commits" },
  ["<leader>fgs"] = { "<cmd>Telescope git_status<CR>", "status" },
  ["<leader>fgb"] = { "<cmd>Telescope git_branches<CR>", "branches" },
  ["<leader>fgd"] = { "<cmd>Telescope git_bcommit<CR>", "diff" },
  ["<leader>fgx"] = { "<cmd>Telescope git_stash<CR>", "stash" },

  ["<leader>g"] = { name = "+git" },
  ["<leader>gp"] = { "<cmd>Gitsigns preview_hunk<CR>", "Preview Hunk" },
  ["<leader>gs"] = { name = "+stage" },
  ["<leader>gsh"] = { "<cmd>Gitsigns stage_hunk<CR>", "Stage Hunk" },
  ["<leader>gsb"] = { "<cmd>Gitsigns stage_buffer<CR>", "Stage Buffer" },
  ["<leader>gu"] = { name = "+undo stage" },
  ["<leader>guh"] = { "<cmd>Gitsigns undo_stage_hunk<CR>", "Undo Stage Hunk" },
  ["<leader>gub"] = { "<cmd>Gitsigns undo_stage_buffer<CR>", "Undo Stage Buffer" },
  ["<leader>gR"] = { "<cmd>Gitsigns reset_buffer<CR>", "Reset Buffer" },
  ["<leader>gd"] = { "<cmd>Gitsigns diffthis<CR>", "Diff Buffer" },
  ["<leader>gD"] = { "<cmd>Gitsigns toggle_deleted<CR>", "Toggle deleted" },


})
