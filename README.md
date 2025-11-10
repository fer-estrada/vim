# neovim config

super minimal, comfy, and straightforward

## structure

```
~/.config/nvim/
├── init.lua
├── lua/
│   ├── fer/
│   │   ├── init.lua         # entry points, autocmds, etc
│   │   ├── remaps.lua       # keymaps
│   │   ├── opts.lua         # vim options
│   │   └── lazy_init.lua    # lazy setup
│   └── plugins/
│       └── plugins duh...
```

## usage
 ### prerequesites
 - neovim >= 0.9.0 (i just use latest)
 - git
 - a [Nerd Font](https://www.nerdfonts.com/) (for icons)
 - ripgrep (for telescope grep)

### install

 1. **backup your existing config:**
   ```bash
   mv ~/.config/nvim ~/.config/nvim.bak
   ```

 2. **clone this**
   ```bash
   git clone https://github.com/fer-estrada/vim.git ~/.config/nvim
   ```

 3. **open neovim:**
   ```bash
   nvim
   ```

## notes

 * plugins are attempted to be kept minimal, but it's still a pretty full config
 * lsp's are setup using the integrated vim.lsp api, so you need to install the servers manually for them to work
 * in case you decide to use this, be aware i update this **A LOT**, and i would still recommend learning how to make your own config instead of using an existing one 
   (even if you end up just remaking someone else's config)

## contributing

feel free to fork, clone it down, do whatever you want with it idc

## license

MIT
