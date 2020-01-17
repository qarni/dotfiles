# README

Hi! So, this is my set of config files (for Vim, Tmux, Bash, and Git) for when I need to be using a new computer or when I want people to try vim because I love vim (wow, did you know?).

Feel free to use any/all of these, or parts of them as needed. It might be useful to just take the parts you need, and add whatever I'm missing. I got a handful of stuff for vim/tmux from when I worked at Braintree [here](https://github.com/braintreeps/vim_dotfiles) (thanks Braintree).

On that note, you can find more useful plugins here: [Vim Awesome](https://vimawesome.com/).

This is what my vim/tmux/bash looks like:

![image](https://user-images.githubusercontent.com/17552078/72491326-52867680-37df-11ea-9785-be4ee13d8319.png)

## Features:

### Vim:

Honestly, I've changed this so much over the years that I can't really remember what it is that I added anymore... but here's a list of the stuff I do remember:

* Allows wrapping around to next line
* Mouse mode (scrolling, clicking)
* Line numbers
* Language specific tabs/spaces
* Color scheme: Monokai. You can change this line in the `.vimrc` `:colorscheme [color scheme name]` to update it.
* F7 for autoformat C/C++ code

#### Plugins:

##### [Vundle](https://github.com/VundleVim/Vundle.vim):

* I used the Vundle plugin manager, just because it was easy to use... there's a few different ones you can use instead if you want. 
* This lets you include new plugins by just writing `Plugin [github username/repo name]` in your vimrc.
* install with `:PluginInstall`.
* uninstall by deleting and running `:PluginClean`.

##### NERD Tree - the file explorer:

```
\nt - open/close NERD Tree
\nf - reveal current file in NERD Tree
\nr - refresh contents of NERD Tree (can also use r or R to refresh a folder)
? - in NERD Tree to see all shortcuts
```

##### CtrlP - Fuzzy finder:
This is so much better than using the file explorer when you need to search through a ton of files.

```
\ff - find a file
```

##### TComment - Commenting:

```
gcc - toggle comments on the current line
\cc - toggle comments
```

##### [Fugitive](https://github.com/tpope/vim-fugitive) - Git wrapper

```
:Gstatus - git status
:Gblame - git blame

...amongst a bunch of other things
```

##### VimAutoclose/Surround

* Auto closes parens, quotes etc

##### [Vim Airline](https://github.com/vim-airline/vim-airline)

* Customizable tab bar thingy

##### Devicons - icons

* You can comment out line 40 `Plugin ryanoasis/vim-devicons` if you don't want to deal with installing the font for the icons. They're cute though. But unnecessary.

### Tmux:

* Here's a handy tmux [cheatsheet](https://gist.github.com/andreyvit/2921703). I'm just listing the things I changed:

* I changed the prefix to `Ctrl + a` instead of the default `Ctrl + b` because... a is closer than b. `prefix` will stand for `Ctrl + a`
* Mouse mode is on, so you can drag panes with mouse, or click to a different window

`prefix` + <kbd>|</kbd> - split pane vertically

`prefix` + <kbd>v</kbd> - split pane vertically

`prefix` + <kbd>%</kbd> - split pane horizontally

`prefix` + <kbd>-</kbd>  - split pane horizontally

<kbd>Alt/Option</kbd> + [arrow key] - switch panes without needing prefix

#### Plugins:

##### [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (TPM):

* I used TPM:  as the plugin manager:
* Add new plugin to `~/.tmux.conf` with `set -g @plugin [pluginname]` 
* Install plugins with prefix + <kbd>I</kbd> (capital i).
* Uninstall by removing plugin from `~/.tmux.conf` and pressing prefix + <kbd>alt/option</kbd> + <kbd>u</kbd> 

##### [Tmux themepack](https://github.com/jimeh/tmux-themepack):

* The theme I use works well with a dark background, you should probably change it/uninstall this plugin if you have a light background.

### Bash:

* Includes what git branch you are in if you're in a git repo

### Git:

* Includes some git aliases

## Installation/Setup:

If you decide to use this :')

Clone repo!
```
git clone https://github.com/qarni/dotfiles.git [destination]
```
And copy over whichever of these files you want to your root directory. 

### Vim:

1. Install [Vundle](https://github.com/VundleVim/Vundle.vim) by running:
  ```bash 
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  ```
2. Install [Monokai color scheme](https://github.com/crusoexia/vim-monokai):
  ```bash
  # create directory for vim colors if it does not already exist
  mkdir -p ~/.vim/colors
  ```
  And then download the colors/monokai.vim file from the repo to `~/.vim/colors`.
  
3. Follow directions here to install [Nerd font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/DroidSansMono). You might need to change things depending on what terminal you use? I use [iterm2](https://iterm2.com/).
4. Follow directions here to install [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) at your own risk, or just leave it commented out.
5. Open your vimrc file in vim: `vim ~/.vimrc`.
6. Run the command: `:PluginInstall`.
7. Yay everything should be good to go for vim!

### Tmux:

1. Make sure you have tmux installed. You can run the command `tmux` to check. If it's not installed... install it. :)
1. Clone [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm): 
`
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
`
1. Open a tmux session: `tmux`
1. Run this command to load your tmux config file: `tmux source-file ~/.tmux.conf`.
1. Press prefix + <kbd>I</kbd> (capital i) to fetch the plugin.
1. Yay tmux works too!
