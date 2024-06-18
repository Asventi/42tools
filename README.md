# 42Tools
My set of tools for 42

## Vim Config

Vim config based on : [The Ultimate vimrc](https://github.com/amix/vimrc "The Ultimate vimrc") and with the [42Header](https://github.com/42Paris/42header "42Header") included and the [Norminette Linter](https://github.com/alexandregv/norminette-vim "Norminette Linter").

### Installation :
First make sure you install vim-gtk3 and not only vim for the clipboard support :
```
sudo apt install vim-gdk3 curl
```
Then install the ultimate vimrc :
```
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
```
Then put the my_configs.vim from the repo into `~/.vim_runtime`,  don't forget to edit user42 and email42
Then open vim and execute `:PlugInstall`

And there you go Vim is configured !

### Usefull things for Vim
#### 42 Header
To put the 42 Header just type the command `:Stdheader`
#### Special Norminette Config
If in an exercise the Norminette have specials arguments you can modify them by opening :     `~/.vim_runtime/my_configs.vim`
And modify     g:syntastic_c_norminette_args

#### Quickfix
```html
:copen " Open the quickfix window
:ccl   " Close it
:cw    " Open it if there are "errors", close it otherwise (some people prefer this)
:cn    " Go to the next error in the window
:cp    " Go to the previous error in the window
:cnf   " Go to the first error in the next file
:.cc   " Go to error under cursor (if cursor is in quickfix window)
```

# Git and Git Credentials Manager
Git credential manager to make authentification simple and secured

## Installation
First install requirements :
```html
sudo apt install pass gdg
```
Then generate your key :
```html
gpg --gen-key
```
And then init pass using your gpg key, don't forget to put init under quotes '' :
```html
pass init <gpg-id>
```
Then set git to use the gpg store :
```html
git config --global credential.credentialStore gpg
```
Then install Git credentials manager  and get the latest [deb package link](https://github.com/git-ecosystem/git-credential-manager/releases/latest "deb package link") :
```html
cd /var/cache/apt/archives
wget <latest-deb-download-link>
sudo dpkg -i <path-to-package>
git-credential-manager configure
```
