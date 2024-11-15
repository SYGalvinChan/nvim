# Nvim Basic

# Folder Structure

```
.
|__ Readme.md
|__ init.lua
|__ lazy-lock.json
|__ lua
    |__ key-maps.lua
    |__ plugin-manager.lua
    |__ vim-opts.lua
    |__ plugins
        |__ ...
        |__ ...
```
- At the project root directory, the `init.lua` is the main entrypoint to the nvim config.
- The lua folder contains the rest of the lua code that the `init.lua` requires.
- Within the lua folder:
    - `key-maps.lua` contains key mappings
    - `vim-opts.lua` contains vim options
    - `plugin-manager.lua` contains the boilerplate code for [lazy.nvim](https://lazy.folke.io/) plugin manager
    - `plugins` folder contains a collection of files, all of which returns a [Plugin Spec](https://lazy.folke.io/spec)
