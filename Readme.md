# Nvim Basic

## Usage
```
mkdir -p ~/.config/nvim

cd ~/.config/nvim

git clone https://github.com/SYGalvinChan/nvim.git

nvim
```
## Folder Structure

```
.
├── Readme.md
├── init.lua
├── lazy-lock.json
└── lua
    ├── key-maps.lua
    ├── plugin-manager.lua
    ├── plugins
    │   ├── ...
    │   └── ...
    └── vim-opts.lua
```
- At the project root directory, the `init.lua` is the main entrypoint that nvim will execute upon opening.
- The lua folder contains the rest of the lua code that `init.lua` requires.
- Within the lua folder:
    - `key-maps.lua` contains key mappings
    - `vim-opts.lua` contains vim options
    - `plugin-manager.lua` contains the boilerplate code for [lazy.nvim](https://lazy.folke.io/) plugin manager
    - `plugins` folder contains a collection of files, all of which returns a [Plugin Spec](https://lazy.folke.io/spec)
