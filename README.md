# My simple minimalist configuration for Neovim

### Requirements

* [Neovim](https://neovim.io/) (>= 0.9.0) 
* [Packer](https://github.com/wbthomason/packer.nvim) (Plugin manager)

### How to use
First, clone this repository under `~/.config/` and rename it to `nvim`

After cloning, run `nvim` on the shell and enter `:PackerInstall`

### Configure LazyGit
Open LazyGit config file using `:LazyGitConfig` or opening `~/.config/lazygit` and paste this config into it:

```yml
os:
  edit: 'nvim --server "$NVIM" --remote-tab {{filename}}'
  editAtLine: 'nvim --server "$NVIM" --remote-tab {{filename}}; [ -z "$NVIM" ] || nvim --server "$NVIM" --remote-send ":{{line}}<CR>"'
  editAtLineAndWait: 'nvim +{{line}} {{filename}}'
promptToReturnFromSubprocess: false

```

