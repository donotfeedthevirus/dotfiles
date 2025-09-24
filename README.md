# dotfiles
Hi there, welcome to the `dotfiles` for my humble OS. 
Here I have configurations for some of the tools and programs that I use on a daily basis, each folder being one tool/program configuration.

# Details
Currently I am using Omarchy (Hyprland and Arch Linux), and in the `hypr` and `omarchy` folders I have the config for the OS (themes, bindings, eye candy) with kitty being my main terminal, and neovim my main text editor (each one having their folder).
On the terminal I am using [kitty themes](https://github.com/dexpota/kitty-themes) and [starship](https://starship.rs/) for styling, and tmux for multiplexing (and I have some terminal bells for goofing around).
This repo was earlier being used on a bare bones Arch Hyprland setup, however, I have been migrating to omarchy, so some folders like `hypr*` still have some old configs. Currently tools like nvim, tmux and kitty are using the themes from omarchy, so, whenever you would update the theme, their theme will update too, just like a vanilla omarchy setup.

# Installation
Usually I use ´stow´ to apply the config, and you might need to remove the existing config for this to work. And also, this setup currently is made to work with Omarchy, but you can tweak everything to fit into any other distro.
Simple setup:
```bash
# Clone the repo
git clone https://github.com/donotfeedthevirus/dotfiles.git
cd dotfiles
stow <folder/tool>
```
