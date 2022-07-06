-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/dxckr/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/dxckr/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/dxckr/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/dxckr/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/dxckr/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["AutoSave.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\29plugins.configs.autosave\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/opt/AutoSave.nvim",
    url = "https://github.com/Pocco81/AutoSave.nvim"
  },
  ["Comment.nvim"] = {
    after_files = { "/home/dxckr/.local/share/nvim/site/pack/packer/opt/Comment.nvim/after/plugin/Comment.lua" },
    config = { "\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28plugins.configs.comment\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/opt/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["FixCursorHold.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/opt/FixCursorHold.nvim",
    url = "https://github.com/antoinemadec/FixCursorHold.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["TrueZen.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28plugins.configs.trueZen\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/opt/TrueZen.nvim",
    url = "https://github.com/Pocco81/TrueZen.nvim"
  },
  ["alpha-nvim"] = {
    after = { "neo-tree.nvim" },
    loaded = true,
    only_config = true
  },
  ["alternate-toggler"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/opt/alternate-toggler",
    url = "https://github.com/rmagatti/alternate-toggler"
  },
  ["better-escape.nvim"] = {
    config = { "\27LJ\2\n=\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\"plugins.configs.better-escape\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/opt/better-escape.nvim",
    url = "https://github.com/max397574/better-escape.nvim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\31plugins.configs.bufferline\frequire\0" },
    load_after = {},
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/opt/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  catppuccin = {
    config = { "\27LJ\2\nÇ\2\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\vstyles\1\0\0\1\0\f\ntypes\vitalic\17conditionals\tNONE\rcomments\vitalic\14operators\tNONE\15properties\tNONE\rbooleans\vitalic\fnumbers\tNONE\14variables\tNONE\fstrings\vitalic\rkeywords\tNONE\14functions\tNONE\nloops\tNONE\nsetup\15catppuccin\frequire\0" },
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmd-parser.nvim"] = {
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/cmd-parser.nvim",
    url = "https://github.com/winston0410/cmd-parser.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-calc"] = {
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/cmp-calc",
    url = "https://github.com/hrsh7th/cmp-calc"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-cmdline-history"] = {
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/cmp-cmdline-history",
    url = "https://github.com/dmitmel/cmp-cmdline-history"
  },
  ["cmp-emoji"] = {
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/cmp-emoji",
    url = "https://github.com/hrsh7th/cmp-emoji"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["dial.nvim"] = {
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/dial.nvim",
    url = "https://github.com/monaqa/dial.nvim"
  },
  ["focus.nvim"] = {
    config = { "\27LJ\2\n}\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\23excluded_filetypes\1\0\0\1\5\0\0\15toggleterm\fTrouble\rneo-tree\fOutline\nsetup\nfocus\frequire\0" },
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/focus.nvim",
    url = "https://github.com/beauwilliams/focus.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\29plugins.configs.gitsigns\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["glow.nvim"] = {
    config = { "\27LJ\2\n4\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\25plugins.configs.glow\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/opt/glow.nvim",
    url = "https://github.com/ellisonleao/glow.nvim"
  },
  ["goto-preview"] = {
    config = { "\27LJ\2\n>\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\17goto-preview\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/opt/goto-preview",
    url = "https://github.com/rmagatti/goto-preview"
  },
  ["hlargs.nvim"] = {
    config = { "\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vhlargs\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/opt/hlargs.nvim",
    url = "https://github.com/m-demare/hlargs.nvim"
  },
  ["impatient.nvim"] = {
    config = { "\27LJ\2\n)\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\14impatient\frequire\0" },
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\31plugins.configs.indentline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["iswap.nvim"] = {
    config = { "\27LJ\2\n∞\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\a\tgrey\fdisable\rautoswap\2\tkeys\15qwertyuiop\fhl_grey\vLineNr\17hl_selection\15WarningMsg\21hl_grey_priority\t1000\rhl_snipe\rErrorMsg\nsetup\niswap\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/opt/iswap.nvim",
    url = "https://github.com/mizlan/iswap.nvim"
  },
  ["leap.nvim"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\24set_default_keymaps\tleap\frequire\0" },
    keys = { { "", "s" }, { "", "S" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/opt/leap.nvim",
    url = "https://github.com/ggandor/leap.nvim"
  },
  levuaska = {
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/levuaska",
    url = "https://github.com/levuaska/levuaska.nvim"
  },
  ["lspkind.nvim"] = {
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/lspkind.nvim",
    url = "https://github.com/onsails/lspkind.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28plugins.configs.lualine\frequire\0" },
    load_after = {},
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/opt/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28plugins.configs.neotree\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/opt/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  neogen = {
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/neogen",
    url = "https://github.com/danymat/neogen"
  },
  neorg = {
    config = { "\27LJ\2\n»\1\0\0\a\0\r\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\v\0005\3\3\0004\4\0\0=\4\4\0035\4\b\0005\5\6\0005\6\5\0=\6\a\5=\5\t\4=\4\n\3=\3\f\2B\0\2\1K\0\1\0\tload\1\0\0\21core.norg.dirman\vconfig\1\0\0\15workspaces\1\0\0\1\0\2\thome\17~/notes/home\twork\17~/notes/work\18core.defaults\1\0\0\nsetup\nneorg\frequire\0" },
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/neorg",
    url = "https://github.com/nvim-neorg/neorg"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30plugins.configs.neoscroll\frequire\0" },
    keys = { { "", "<C-u>" }, { "", "<C-d>" }, { "", "<C-b>" }, { "", "<C-f>" }, { "", "<C-y>" }, { "", "<C-e>" }, { "", "zt" }, { "", "zz" }, { "", "zb" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/opt/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["neovim-session-manager"] = {
    config = { "\27LJ\2\n?\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0$plugins.configs.session-manager\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/opt/neovim-session-manager",
    url = "https://github.com/Shatur/neovim-session-manager"
  },
  ["nlsp-settings.nvim"] = {
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/nlsp-settings.nvim",
    url = "https://github.com/tamago324/nlsp-settings.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["numb.nvim"] = {
    config = { "\27LJ\2\nw\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\4\20show_cursorline\2\17show_numbers\2\21centered_peeking\2\16number_only\1\nsetup\tnumb\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/opt/numb.nvim",
    url = "https://github.com/nacro90/numb.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30plugins.configs.autopairs\frequire\0" },
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-base16.lua"] = {
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/nvim-base16.lua",
    url = "https://github.com/norcalli/nvim-base16.lua"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n3\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\24plugins.configs.cmp\frequire\0" },
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30plugins.configs.colorizer\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua",
    url = "https://github.com/NvChad/nvim-colorizer.lua"
  },
  ["nvim-cursorword"] = {
    keys = { { "", "h" }, { "", "j" }, { "", "k" }, { "", "l" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/opt/nvim-cursorword",
    url = "https://github.com/xiyaowong/nvim-cursorword"
  },
  ["nvim-gps"] = {
    config = { "\27LJ\2\n3\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\24plugins.configs.gps\frequire\0" },
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/nvim-gps",
    url = "https://github.com/SmiteshP/nvim-gps"
  },
  ["nvim-hlslens"] = {
    config = { "\27LJ\2\nm\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\3\23nearest_float_when\tauto\17nearest_only\2\14calm_down\2\nsetup\fhlslens\frequire\0" },
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/nvim-hlslens",
    url = "https://github.com/kevinhwang91/nvim-hlslens"
  },
  ["nvim-lsp-installer"] = {
    config = { "\27LJ\2\n+\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\16plugins.lsp\frequire\0" },
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\n6\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\27plugins.configs.notify\frequire\0" },
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-pasta"] = {
    config = { "\27LJ\2\nﬁ\1\0\0\t\0\f\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0026\3\5\0009\3\6\0039\3\a\3'\5\b\0+\6\2\0+\a\2\0+\b\2\0B\3\5\2=\3\t\0026\3\5\0009\3\6\0039\3\a\3'\5\n\0+\6\2\0+\a\2\0+\b\2\0B\3\5\2=\3\v\2B\0\2\1K\0\1\0\rprev_key\n<C-n>\rnext_key\n<C-p>\27nvim_replace_termcodes\bapi\bvim\15converters\1\0\1\15paste_mode\2\nsetup\npasta\frequire\0" },
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/nvim-pasta",
    url = "https://github.com/hrsh7th/nvim-pasta"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-ts-rainbow" },
    loaded = true,
    only_config = true
  },
  ["nvim-ts-autotag"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20nvim-ts-autotag\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/opt/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-rainbow"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/opt/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["nvim-window-picker"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18window-picker\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/opt/nvim-window-picker",
    url = "https://github.com/s1n7ax/nvim-window-picker"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["project.nvim"] = {
    after = { "neovim-session-manager" },
    config = { "\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28plugins.configs.project\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/opt/project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  ["renamer.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28plugins.configs.renamer\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/opt/renamer.nvim",
    url = "https://github.com/filipdutescu/renamer.nvim"
  },
  sniprun = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/opt/sniprun",
    url = "https://github.com/michaelb/sniprun"
  },
  ["symbols-outline.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0$plugins.configs.symbols-outline\frequire\0" },
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["telescope.nvim"] = {
    after = { "project.nvim" },
    loaded = true,
    only_config = true
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n=\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\"plugins.configs.todo-comments\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/opt/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\nè\2\0\0\4\0\b\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0026\3\5\0009\3\6\0039\3\a\3=\3\a\2B\0\2\1K\0\1\0\nshell\6o\bvim\20shade_filetypes\1\0\n\17persist_size\1\20insert_mappings\1\20start_in_insert\2\19shading_factor\3\3\20shade_terminals\2\17hide_numbers\2\17open_mapping\n<c-\\>\tsize\0032\18close_on_exit\2\14direction\rvertical\nsetup\15toggleterm\frequire\0" },
    keys = { { "", "<C-\\>" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/opt/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["trouble.nvim"] = {
    loaded = true,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-bbye"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/opt/vim-bbye",
    url = "https://github.com/moll/vim-bbye"
  },
  ["winbar.nvim"] = {
    config = { "\27LJ\2\nÓ\2\0\0\4\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\21exclude_filetype\1\15\0\0\thelp\rstartify\14dashboard\vpacker\17neogitstatus\rNvimTree\fTrouble\nalpha\blir\fOutline\18spectre_panel\15toggleterm\aqf\ntutor\nicons\1\0\4\14seperator\6>\14lock_icon\bÔ°Ä\22file_icon_default\bÔÉ∂\17editor_state\b‚óè\vcolors\1\0\3\fsymbols\5\tpath\5\14file_name\5\1\0\3\19show_file_path\2\fenabled\2\17show_symbols\2\nsetup\vwinbar\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/opt/winbar.nvim",
    url = "https://github.com/fgheng/winbar.nvim"
  },
  ["winshift.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\29plugins.configs.winshift\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/dxckr/.local/share/nvim/site/pack/packer/opt/winshift.nvim",
    url = "https://github.com/sindrets/winshift.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^Comment"] = "Comment.nvim"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Config for: impatient.nvim
time([[Config for impatient.nvim]], true)
try_loadstring("\27LJ\2\n)\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\14impatient\frequire\0", "config", "impatient.nvim")
time([[Config for impatient.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30plugins.configs.telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-gps
time([[Config for nvim-gps]], true)
try_loadstring("\27LJ\2\n3\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\24plugins.configs.gps\frequire\0", "config", "nvim-gps")
time([[Config for nvim-gps]], false)
-- Config for: nvim-pasta
time([[Config for nvim-pasta]], true)
try_loadstring("\27LJ\2\nﬁ\1\0\0\t\0\f\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\0026\3\5\0009\3\6\0039\3\a\3'\5\b\0+\6\2\0+\a\2\0+\b\2\0B\3\5\2=\3\t\0026\3\5\0009\3\6\0039\3\a\3'\5\n\0+\6\2\0+\a\2\0+\b\2\0B\3\5\2=\3\v\2B\0\2\1K\0\1\0\rprev_key\n<C-n>\rnext_key\n<C-p>\27nvim_replace_termcodes\bapi\bvim\15converters\1\0\1\15paste_mode\2\nsetup\npasta\frequire\0", "config", "nvim-pasta")
time([[Config for nvim-pasta]], false)
-- Config for: nvim-hlslens
time([[Config for nvim-hlslens]], true)
try_loadstring("\27LJ\2\nm\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\3\23nearest_float_when\tauto\17nearest_only\2\14calm_down\2\nsetup\fhlslens\frequire\0", "config", "nvim-hlslens")
time([[Config for nvim-hlslens]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n3\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\24plugins.configs.cmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30plugins.configs.autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: catppuccin
time([[Config for catppuccin]], true)
try_loadstring("\27LJ\2\nÇ\2\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\vstyles\1\0\0\1\0\f\ntypes\vitalic\17conditionals\tNONE\rcomments\vitalic\14operators\tNONE\15properties\tNONE\rbooleans\vitalic\fnumbers\tNONE\14variables\tNONE\fstrings\vitalic\rkeywords\tNONE\14functions\tNONE\nloops\tNONE\nsetup\15catppuccin\frequire\0", "config", "catppuccin")
time([[Config for catppuccin]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\26plugins.configs.alpha\frequire\0", "config", "alpha-nvim")
time([[Config for alpha-nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\31plugins.configs.treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\27plugins.configs.notify\frequire\0", "config", "nvim-notify")
time([[Config for nvim-notify]], false)
-- Config for: neorg
time([[Config for neorg]], true)
try_loadstring("\27LJ\2\n»\1\0\0\a\0\r\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\v\0005\3\3\0004\4\0\0=\4\4\0035\4\b\0005\5\6\0005\6\5\0=\6\a\5=\5\t\4=\4\n\3=\3\f\2B\0\2\1K\0\1\0\tload\1\0\0\21core.norg.dirman\vconfig\1\0\0\15workspaces\1\0\0\1\0\2\thome\17~/notes/home\twork\17~/notes/work\18core.defaults\1\0\0\nsetup\nneorg\frequire\0", "config", "neorg")
time([[Config for neorg]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
try_loadstring("\27LJ\2\n+\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\16plugins.lsp\frequire\0", "config", "nvim-lsp-installer")
time([[Config for nvim-lsp-installer]], false)
-- Config for: focus.nvim
time([[Config for focus.nvim]], true)
try_loadstring("\27LJ\2\n}\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\23excluded_filetypes\1\0\0\1\5\0\0\15toggleterm\fTrouble\rneo-tree\fOutline\nsetup\nfocus\frequire\0", "config", "focus.nvim")
time([[Config for focus.nvim]], false)
-- Config for: symbols-outline.nvim
time([[Config for symbols-outline.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0$plugins.configs.symbols-outline\frequire\0", "config", "symbols-outline.nvim")
time([[Config for symbols-outline.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-web-devicons ]]
vim.cmd [[ packadd nvim-ts-rainbow ]]
vim.cmd [[ packadd neo-tree.nvim ]]

-- Config for: neo-tree.nvim
try_loadstring("\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28plugins.configs.neotree\frequire\0", "config", "neo-tree.nvim")

vim.cmd [[ packadd project.nvim ]]

-- Config for: project.nvim
try_loadstring("\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28plugins.configs.project\frequire\0", "config", "project.nvim")

vim.cmd [[ packadd neovim-session-manager ]]

-- Config for: neovim-session-manager
try_loadstring("\27LJ\2\n?\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0$plugins.configs.session-manager\frequire\0", "config", "neovim-session-manager")

time([[Sequenced loading]], false)
-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> S <cmd>lua require("packer.load")({'leap.nvim'}, { keys = "S", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> zb <cmd>lua require("packer.load")({'neoscroll.nvim'}, { keys = "zb", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> l <cmd>lua require("packer.load")({'nvim-cursorword'}, { keys = "l", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> zz <cmd>lua require("packer.load")({'neoscroll.nvim'}, { keys = "zz", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <C-d> <cmd>lua require("packer.load")({'neoscroll.nvim'}, { keys = "<lt>C-d>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> zt <cmd>lua require("packer.load")({'neoscroll.nvim'}, { keys = "zt", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <C-e> <cmd>lua require("packer.load")({'neoscroll.nvim'}, { keys = "<lt>C-e>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> h <cmd>lua require("packer.load")({'nvim-cursorword'}, { keys = "h", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <C-y> <cmd>lua require("packer.load")({'neoscroll.nvim'}, { keys = "<lt>C-y>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <C-\> <cmd>lua require("packer.load")({'toggleterm.nvim'}, { keys = "<lt>C-\\>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> j <cmd>lua require("packer.load")({'nvim-cursorword'}, { keys = "j", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <C-b> <cmd>lua require("packer.load")({'neoscroll.nvim'}, { keys = "<lt>C-b>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <C-f> <cmd>lua require("packer.load")({'neoscroll.nvim'}, { keys = "<lt>C-f>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> k <cmd>lua require("packer.load")({'nvim-cursorword'}, { keys = "k", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> s <cmd>lua require("packer.load")({'leap.nvim'}, { keys = "s", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> <C-u> <cmd>lua require("packer.load")({'neoscroll.nvim'}, { keys = "<lt>C-u>", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'glow.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType html ++once lua require("packer.load")({'nvim-ts-autotag'}, { ft = "html" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufEnter * ++once lua require("packer.load")({'todo-comments.nvim', 'winbar.nvim', 'Comment.nvim', 'FixCursorHold.nvim', 'numb.nvim', 'AutoSave.nvim'}, { event = "BufEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'indent-blankline.nvim', 'iswap.nvim', 'lualine.nvim', 'vim-bbye', 'winshift.nvim', 'TrueZen.nvim', 'bufferline.nvim', 'nvim-window-picker', 'nvim-colorizer.lua', 'sniprun', 'gitsigns.nvim', 'goto-preview', 'better-escape.nvim', 'hlargs.nvim', 'alternate-toggler', 'renamer.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
