<p align="center" style="margin-bottom:10px;margin-top:10px;">
<img src="https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black">
<img src="https://img.shields.io/badge/macOS-FCC624?style=for-the-badge&logo=apple&logoColor=black">
</p>

<h2 align="center">
 <b style="font-size:24px;line-height:24px;vertical-align:middle;"><i>Eugene <img src="./img/dotfiles-logo.png" width="36px" style="vertical-align:middle;"> dotfiles</i></b>
</h2>

<p align=center style="margin-top:36px">	  
  <img src="https://img.shields.io/github/stars/command-z-z/dotfiles?color=dd864a&labelColor=202328&style=for-the-badge">
  <img src="https://img.shields.io/github/forks/command-z-z/dotfiles?color=82aaff&labelColor=202328&style=for-the-badge">
  <img src="https://img.shields.io/github/issues/command-z-z/dotfiles?color=bf616a&labelColor=202328&style=for-the-badge">
  <img src="https://img.shields.io/github/issues-pr/command-z-z/dotfiles?color=c792ea&labelColor=202328&style=for-the-badge">
  <img src="https://img.shields.io/github/license/command-z-z/dotfiles?color=15121C&labelColor=202328&style=for-the-badge">  
</p>

<p align="center"><b>This dotfiles includes the following tools config</b></p>
<p align="center">
<img src="./img/fzf-icon.png" width="34px">
<img src="./img/yabai-icon.png" width="38px" height="22px">
<img src="./img/ranger-icon.png" width="30px" height="22px">
<img src="./img/nerd-fonts-icon.svg" width="37px">
<img src="./img/zsh-icon.png" width="34px">
<img src="./img/simple-bar-icon.png" width="40px" height="22px">
<img src="./img/ohmyzsh-icon.png" width="34px">
</p>
<p align="center">
<img src="./img/iterm2-icon.png" width="34px">
<img src="./img/wezterm-icon.svg" width="34px">
<img src="./img/kitty-icon.svg" width="37px">
<img src="./img/neovim-icon.png" width="34px">
<img src="./img/lazygit-icon.png" width="34px">
<img src="./img/tmux-icon.png" width="34px">
<img src="./img/starship-icon.png" width="34px">
</p>
<p align="center">
<img src="./img/split-line.png" style="margin-top:20px;" width="600px">
</p>

<p align="center"><b>Show My Favorite Desktop</b></p>

<p align="center">
<img src="./img/img1.png" style="margin-top:30px">
</p>

### 🧑🏾‍🎨 ScreenShot

![](./img/img2.png)

<details>
<summary><b>Load More</b> <span style="font-size:14px;">(Click to expend) </span> </summary>

![](./img/img3.png)

![](./img/img4.png)

![](./img/img5.png)

![](./img/img6.png)
</details>


### 🗒️ Info

This config folder include all my environment in My OS(Just cherry pick the piece of code you totally understand).

- Terminal [`Wezterm`](https://github.com/wez/wezterm) [`kitty`](https://github.com/kovidgoyal/kitty) [`iterm2`](https://github.com/gnachman/iTerm2)
- Shell [`zsh`](https://www.zsh.org/)
- Shell Framework [`ohmyzsh`](https://github.com/ohmyzsh/ohmyzsh)
- Shell Theme [`starship`](https://github.com/starship/starship)
- File Management Tool [`ranger`](https://github.com/ranger/ranger)
- Fuzzy Finder Tool [`fzf`](https://github.com/junegunn/fzf)
- Ls Beautification Tool [`lsd`](https://github.com/Peltoche/lsd)
- Font [`HackNerdFont`](https://github.com/ryanoasis/nerd-fonts) [`JetBrainsMono`](https://github.com/JetBrains/JetBrainsMono) [`OperatorMono`](https://www.typography.com/fonts/operator/styles/multi) 
- Theme [`Catppuccin`](https://github.com/catppuccin/catppuccin) 
- Browser [`Chrome`](https://www.google.com/) [`qutebrowser`](https://github.com/qutebrowser/qutebrowser)
- The Hacker's Browser Plugin [`vimium`](https://github.com/philc/vimium)
- System Information Tool [`neofetch`](https://github.com/dylanaraps/neofetch)
- Terminal Git Tool [`lazygit`](https://github.com/jesseduffield/lazygit)
- File Editor Tool [`neovim`](https://github.com/neovim/neovim)
- Terminal Multiplexing Tool [`tmux`](https://github.com/tmux/tmux)
- Windows Management Utility [`yabai`](https://github.com/koekeishiya/yabai)
- Simple Hotkey Daemon [`skhd`](https://github.com/koekeishiya/skhd)
- Status Bar [`sketchybar`](https://github.com/FelixKratz/SketchyBar)
- Music Player [`Spotify`](https://www.spotify.com/us/download/mac/)
- Spotify Client [`spotify-tui`](https://github.com/Rigellute/spotify-tui) [`spicetify`](https://github.com/spicetify/spicetify-cli)
- Cross-platform Audio Visualizer[`cava`](https://github.com/karlstav/cava)
- PDF Viewer [`zathura for MacOS`](https://github.com/zegervdv/homebrew-zathura) or [`zathura`](https://github.com/pwmt/zathura)
- Application Launcher [`Alfred`](https://www.alfredapp.com/)
- System resource monitor [`btop`](https://github.com/aristocratos/btop)
- Cat with syntax highlighting and Git integration [`bat`](https://github.com/sharkdp/bat)

### 💡 Tutorial

And i will also write some tutorial in my blog(Live in Terminal Series).

- [1.which Terminal is suitable for you?](./tutorial/1.which%20Terminal%20is%20suitable%20for%20you%3F.md)
- []()

### 🔨 Dependencies
#### 📦 Packages
``` bash
brew install iTerm2
brew install --cask kitty
brew tap wez/wezterm
brew install --cask wez/wezterm/wezterm
```
#### ✍️ Fonts
```
# 安装HackNerdFont
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font

# 安装JetBrainsMono
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono

# 一键安装(仅验证ubuntu)
bash ubuntu_install.sh
```
### 🚀 Manual Installation

1.Clone this repository.

```
git clone https://github.com/command-z-z/dotfiles
```

2.Install the required software(see [Dependencies](#-dependencies)).

3.See my tutorial to learn more about my config.

4.Just copy the piece of code you really want.

### 🤖 Notes
neovim python dependencies.
```
pip install neovim
pip install pyvim
pip install Ranger-fm
```
