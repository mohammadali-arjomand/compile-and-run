# Car: Compile And Run
This is a simple script that compiles and runs your code. It especially designed for vim.

Currently **Car** supports these languages:
- C++
- Python
- Bash Script

## Installation
Run this command:
```bash
wget https://raw.githubusercontent.com/mohammadali-arjomand/compile-and-run/refs/heads/main/car.sh && sudo mv ./car.sh /usr/local/bin/car
```
Then, enter your password to move script to `/usr/local/bin/`

Now, add this line to `~/.vimrc`
```vimscript
nnoremap <F5> :w<CR>: ! car % --quiet<CR>
```
After that, if you press `F5` key in `command-mode` in vim, your script/program will run!

# Contribute
Intrested in car script? [create an issue](https://github.com/mohammadali-arjomand/compile-and-run/issues/new) and share your ideas!

# License
Licensed under [MIT License](LICENSE)
Copyright (c) 2025 MohammadAli Arjomand
