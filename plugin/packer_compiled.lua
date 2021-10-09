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
local package_path_str = "/home/alexischangridel/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/alexischangridel/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/alexischangridel/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/alexischangridel/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/alexischangridel/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
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
  LuaSnip = {
    config = { "\27LJ\2\0025\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\26plugin.config.luasnip\frequire\0" },
    loaded = true,
    path = "/home/alexischangridel/.local/share/nvim/site/pack/packer/start/LuaSnip",
    wants = { "friendly-snippets" }
  },
  ["barbar.nvim"] = {
    loaded = true,
    needs_bufread = false,
    path = "/home/alexischangridel/.local/share/nvim/site/pack/packer/opt/barbar.nvim"
  },
  ["better-escape.vim"] = {
    config = { "\27LJ\2\2;\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0 plugin.config.better_escape\frequire\0" },
    loaded = true,
    path = "/home/alexischangridel/.local/share/nvim/site/pack/packer/start/better-escape.vim"
  },
  ["cmp-buffer"] = {
    after_files = { "/home/alexischangridel/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/alexischangridel/.local/share/nvim/site/pack/packer/opt/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    after_files = { "/home/alexischangridel/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/alexischangridel/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    after_files = { "/home/alexischangridel/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua/after/plugin/cmp_nvim_lua.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/alexischangridel/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    after_files = { "/home/alexischangridel/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/alexischangridel/.local/share/nvim/site/pack/packer/opt/cmp-path"
  },
  cmp_luasnip = {
    after_files = { "/home/alexischangridel/.local/share/nvim/site/pack/packer/opt/cmp_luasnip/after/plugin/cmp_luasnip.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/alexischangridel/.local/share/nvim/site/pack/packer/opt/cmp_luasnip"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\0027\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\28plugin.config.dashboard\frequire\0" },
    loaded = true,
    path = "/home/alexischangridel/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  ["feline.nvim"] = {
    config = { "\27LJ\2\0024\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\25plugin.config.feline\frequire\0" },
    loaded = true,
    path = "/home/alexischangridel/.local/share/nvim/site/pack/packer/start/feline.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/alexischangridel/.local/share/nvim/site/pack/packer/start/friendly-snippets"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\2\2…\2\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0=\2\5\1B\0\2\1K\0\1\0\17handler_opts\1\0\1\vborder\vsingle\1\0\f\tbind\2\ffix_pos\2\16hint_prefix\tïŸ» \20floating_window\2\14doc_lines\3\2\14max_width\3x\16hint_enable\2\fpadding\5\vzindex\3È\1\15max_height\3\22\17hi_parameter\vSearch\16hint_scheme\vString\nsetup\18lsp_signature\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/alexischangridel/.local/share/nvim/site/pack/packer/opt/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/alexischangridel/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["nightfox.nvim"] = {
    loaded = true,
    path = "/home/alexischangridel/.local/share/nvim/site/pack/packer/start/nightfox.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/alexischangridel/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "cmp-nvim-lsp", "cmp_luasnip", "cmp-nvim-lua", "cmp-path", "cmp-buffer" },
    config = { "\27LJ\2\0021\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\22plugin.config.cmp\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/alexischangridel/.local/share/nvim/site/pack/packer/opt/nvim-cmp"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/alexischangridel/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    after = { "cmp-nvim-lsp", "lsp_signature.nvim" },
    loaded = true,
    only_config = true
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeToggle", "NvimTreeFocus" },
    config = { "\27LJ\2\0027\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\28plugin.config.nvim_tree\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/alexischangridel/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/alexischangridel/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/alexischangridel/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/alexischangridel/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/alexischangridel/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["spotify.nvim"] = {
    loaded = true,
    path = "/home/alexischangridel/.local/share/nvim/site/pack/packer/start/spotify.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/alexischangridel/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["trouble.nvim"] = {
    loaded = true,
    path = "/home/alexischangridel/.local/share/nvim/site/pack/packer/start/trouble.nvim"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\2;\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/alexischangridel/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: dashboard-nvim
time([[Config for dashboard-nvim]], true)
try_loadstring("\27LJ\2\0027\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\28plugin.config.dashboard\frequire\0", "config", "dashboard-nvim")
time([[Config for dashboard-nvim]], false)
-- Config for: feline.nvim
time([[Config for feline.nvim]], true)
try_loadstring("\27LJ\2\0024\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\25plugin.config.feline\frequire\0", "config", "feline.nvim")
time([[Config for feline.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\0021\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\22plugin.config.lsp\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\2;\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
try_loadstring("\27LJ\2\0025\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0\26plugin.config.luasnip\frequire\0", "config", "LuaSnip")
time([[Config for LuaSnip]], false)
-- Config for: better-escape.vim
time([[Config for better-escape.vim]], true)
try_loadstring("\27LJ\2\2;\0\0\2\0\2\0\0046\0\0\0'\1\1\0B\0\2\1K\0\1\0 plugin.config.better_escape\frequire\0", "config", "better-escape.vim")
time([[Config for better-escape.vim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd lsp_signature.nvim ]]

-- Config for: lsp_signature.nvim
try_loadstring("\27LJ\2\2…\2\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0=\2\5\1B\0\2\1K\0\1\0\17handler_opts\1\0\1\vborder\vsingle\1\0\f\tbind\2\ffix_pos\2\16hint_prefix\tïŸ» \20floating_window\2\14doc_lines\3\2\14max_width\3x\16hint_enable\2\fpadding\5\vzindex\3È\1\15max_height\3\22\17hi_parameter\vSearch\16hint_scheme\vString\nsetup\18lsp_signature\frequire\0", "config", "lsp_signature.nvim")

time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeFocus lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeFocus", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'nvim-cmp'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
