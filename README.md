# Car: Compile And Run
This is a simple script that compiles and runs your code. It especially designed for vim.

Currently **Car** supports these languages:
- C++
- Golang
- Python
- Bash Script

## Compile Structure
CAR compiles files once. After that, if your file haven't changed, CAR just runs prevous compiled file.

It's good to know these files in CAR:
- `.FILENAME.EXTENSION.md5sum`: MD5 hash of the latest compiled file. (e.g. `.main.cpp.md5sum`)
- `FILENAME.out`: Executable file of the latest compiled file. (e.g. `main.out`)

## Switches
- `--compile`: Forces CAR to compile files. Even if file haven't changed.
- `--quiet`: Removes logs (CAR is verbose by default)
- `--short`: Shows logs but shorter

## Installation
Run this command:
```bash
wget https://raw.githubusercontent.com/mohammadali-arjomand/compile-and-run/refs/heads/main/car.sh && sudo mv ./car.sh /usr/local/bin/car && sudo chmod +x /usr/local/bin/car
```
Then, enter your password to move script to `/usr/local/bin/` and giving it execute permission

Now, add this line to `~/.vimrc`
```vimscript
nnoremap <F5> :w<CR>: ! car % --short<CR>
```
After that, if you press `F5` key in `command-mode` in vim, your script/program will run!

Or add this in `~/.config/nvim/init.lua`
```lua
vim.api.nvim_set_keymap('n', '<F5>', ':w<CR>:terminal car % --short<CR>i', { noremap = true, silent = false })
```
# Contribute
Intrested in car script? [create an issue](https://github.com/mohammadali-arjomand/compile-and-run/issues/new) and share your ideas!

# License
Licensed under [MIT License](LICENSE)
Copyright (c) 2025 MohammadAli Arjomand
