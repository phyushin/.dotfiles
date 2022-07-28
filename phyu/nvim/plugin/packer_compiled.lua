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
local package_path_str = "/home/phyu/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/phyu/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/phyu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/phyu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/phyu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  ["c.vim"] = {
    loaded = true,
    path = "/home/phyu/.local/share/nvim/site/pack/packer/start/c.vim",
    url = "https://github.com/vim-scripts/c.vim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/home/phyu/.local/share/nvim/site/pack/packer/start/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  eslint = {
    loaded = true,
    path = "/home/phyu/.local/share/nvim/site/pack/packer/start/eslint",
    url = "https://github.com/eslint/eslint"
  },
  ["jedi-vim"] = {
    loaded = true,
    path = "/home/phyu/.local/share/nvim/site/pack/packer/start/jedi-vim",
    url = "https://github.com/davidhalter/jedi-vim"
  },
  jester = {
    loaded = true,
    path = "/home/phyu/.local/share/nvim/site/pack/packer/start/jester",
    url = "https://github.com/David-Kunz/jester"
  },
  ["monokai.nvim"] = {
    loaded = true,
    path = "/home/phyu/.local/share/nvim/site/pack/packer/start/monokai.nvim",
    url = "https://github.com/tanvirtin/monokai.nvim"
  },
  nerdtree = {
    loaded = true,
    path = "/home/phyu/.local/share/nvim/site/pack/packer/start/nerdtree",
    url = "https://github.com/preservim/nerdtree"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/phyu/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/phyu/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/phyu/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  phpactor = {
    loaded = true,
    path = "/home/phyu/.local/share/nvim/site/pack/packer/start/phpactor",
    url = "https://github.com/phpactor/phpactor"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/phyu/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["requirements.txt.vim"] = {
    loaded = true,
    path = "/home/phyu/.local/share/nvim/site/pack/packer/start/requirements.txt.vim",
    url = "https://github.com/raimon49/requirements.txt.vim"
  },
  ["split-manpage.vim"] = {
    loaded = true,
    path = "/home/phyu/.local/share/nvim/site/pack/packer/start/split-manpage.vim",
    url = "https://github.com/ludwig/split-manpage.vim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/phyu/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/home/phyu/.local/share/nvim/site/pack/packer/start/vim-airline",
    url = "https://github.com/vim-airline/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "/home/phyu/.local/share/nvim/site/pack/packer/start/vim-airline-themes",
    url = "https://github.com/vim-airline/vim-airline-themes"
  },
  ["vim-autoformat"] = {
    loaded = true,
    path = "/home/phyu/.local/share/nvim/site/pack/packer/start/vim-autoformat",
    url = "https://github.com/chiel92/vim-autoformat"
  },
  ["vim-coloresque"] = {
    loaded = true,
    path = "/home/phyu/.local/share/nvim/site/pack/packer/start/vim-coloresque",
    url = "https://github.com/gko/vim-coloresque"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/phyu/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-css-color"] = {
    loaded = true,
    path = "/home/phyu/.local/share/nvim/site/pack/packer/start/vim-css-color",
    url = "https://github.com/ap/vim-css-color"
  },
  ["vim-css3-syntax"] = {
    loaded = true,
    path = "/home/phyu/.local/share/nvim/site/pack/packer/start/vim-css3-syntax",
    url = "https://github.com/hail2u/vim-css3-syntax"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/phyu/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/home/phyu/.local/share/nvim/site/pack/packer/start/vim-gitgutter",
    url = "https://github.com/airblade/vim-gitgutter"
  },
  ["vim-go"] = {
    loaded = true,
    path = "/home/phyu/.local/share/nvim/site/pack/packer/start/vim-go",
    url = "https://github.com/fatih/vim-go"
  },
  ["vim-haml"] = {
    loaded = true,
    path = "/home/phyu/.local/share/nvim/site/pack/packer/start/vim-haml",
    url = "https://github.com/tpope/vim-haml"
  },
  ["vim-javascript-syntax"] = {
    loaded = true,
    path = "/home/phyu/.local/share/nvim/site/pack/packer/start/vim-javascript-syntax",
    url = "https://github.com/jelera/vim-javascript-syntax"
  },
  ["vim-lua-ftplugin"] = {
    loaded = true,
    path = "/home/phyu/.local/share/nvim/site/pack/packer/start/vim-lua-ftplugin",
    url = "https://github.com/xolox/vim-lua-ftplugin"
  },
  ["vim-misc"] = {
    loaded = true,
    path = "/home/phyu/.local/share/nvim/site/pack/packer/start/vim-misc",
    url = "https://github.com/xolox/vim-misc"
  },
  ["vim-php-cs-fixer"] = {
    loaded = true,
    path = "/home/phyu/.local/share/nvim/site/pack/packer/start/vim-php-cs-fixer",
    url = "https://github.com/stephpy/vim-php-cs-fixer"
  },
  ["vim-projectionist"] = {
    loaded = true,
    path = "/home/phyu/.local/share/nvim/site/pack/packer/start/vim-projectionist",
    url = "https://github.com/tpope/vim-projectionist"
  },
  ["vim-rails"] = {
    loaded = true,
    path = "/home/phyu/.local/share/nvim/site/pack/packer/start/vim-rails",
    url = "https://github.com/tpope/vim-rails"
  },
  ["vim-rake"] = {
    loaded = true,
    path = "/home/phyu/.local/share/nvim/site/pack/packer/start/vim-rake",
    url = "https://github.com/tpope/vim-rake"
  },
  ["vim-rhubarb"] = {
    loaded = true,
    path = "/home/phyu/.local/share/nvim/site/pack/packer/start/vim-rhubarb",
    url = "https://github.com/tpope/vim-rhubarb"
  },
  ["vim-rspec"] = {
    loaded = true,
    path = "/home/phyu/.local/share/nvim/site/pack/packer/start/vim-rspec",
    url = "https://github.com/thoughtbot/vim-rspec"
  },
  ["vim-ruby-refactoring"] = {
    loaded = true,
    path = "/home/phyu/.local/share/nvim/site/pack/packer/start/vim-ruby-refactoring",
    url = "https://github.com/ecomba/vim-ruby-refactoring"
  },
  ["vim-test"] = {
    loaded = true,
    path = "/home/phyu/.local/share/nvim/site/pack/packer/start/vim-test",
    url = "https://github.com/janko-m/vim-test"
  }
}

time([[Defining packer_plugins]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
