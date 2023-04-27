#!/bin/zsh

# Install xCode cli tools
echo "Installing commandline tools..."
xcode-select --install

# Install Brew
echo "Installing Brew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew analytics off

# install basic tool
brew install wget
brew install tree
brew install mas
brew install make
brew install gcc
brew install gdb

# install Terminal
echo "Installing Terminal..."
brew install --cask kitty
cp -ri ./kitty ~/.config/

brew install --cask iterm2

brew install --cask wezterm
cp -ri ./wezterm ~/.config/

# install Font
echo "Installing Font..."
brew tap homebrew/cask-fonts
brew install font-jetbrains-mono 
brew install font-hack-nerd-font  
brew tap shaunsingh/SFMono-Nerd-Font-Ligaturized
brew install --cask font-sf-mono-nerd-font-ligaturized
cp ./font/OperatorMono/* ~/Library/Fonts/

# zsh
echo "Installing zsh..."
brew install ranger
brew install lsd
brew install fzf
brew install starship

brew install zsh
chsh -s /bin/zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

cp -ri ./zsh/plugins ~/.oh-my-zsh/custom/
cp -ri ./zsh/starship.toml ~/.config/
cp -ri ./zsh/.zshrc ~/
reload

# alfred
echo "Installing Alfred..."
brew install --cask alfred
echo "Please manually configure Alfred afterwards"

# bat
echo "Installing bat..."
brew install bat
cp -ri ./bat ~/.config/

# btop
echo "Installing btop..."
brew install btop
cp -ri ./btop ~/.config/

#cava
echo "Installing cava..."
brew install --cask background-music
brew install cava
cp -ri ./cava ~/.config/

echo "Installing chrome..."
brew install --cask google-chrome
echo "Please manually configure chrome afterwards"

# lazygit
echo "Installing lazygit..."
brew install lazygit
cp -ri ./lazygit ~/.config/

# neofetch
brew install neofetch
cp -ri ./neofetch ~/.config/

# neovim
echo "Installing neovim..."
brew install llvm
brew install ripgrep
brew install neovim
cp -ri ./nvim ~/.config/

# qutebrowser
echo "Installing qutebrowser..."
brew install --cask qutebrowser
cp -ri ./qutebrowser ~/.qutebrowser

# tmux
echo "Installing tmux..."
brew install tmux
cp -ri ./tmux/.tmux.conf ~/

# spotify
echo "Installing spotify..."
brew install --cask spotify
brew install khanhas/tap/spicetify-cli
brew install spotify-tui
cp -ri ./spotify-tui ~/.config/
cp -ri ./spicetify ~/.config/

# yabai & skhd
echo "Installing yabai & skhd..."
brew install koekeishiya/formulae/yabai
brew install koekeishiya/formulae/skhd
cp -ri ./yabai/.yabairc ~/
cp -ri ./skhd/.skhdrc ~/

# sketchybat
echo "Installing sketchybar..."
brew tap FelixKratz/formulae
brew install sketchybar
brew install jq
brew install gh
brew install switchaudio-osx
brew install --cask sf-symbols
curl -L https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v1.0.4/sketchybar-app-font.ttf -o $HOME/Library/Fonts/sketchybar-app-font.ttf
cp -ri ./sketchybar ~/.config/

# Start Services
echo "Starting Services (grant permissions)..."
brew services start skhd
brew services start yabai
brew services start sketchybar

# Mac App Store Apps
echo "Installing Mac App Store Apps..."
mas install 497799835 #xCode

# macOS Settings
echo "Changing macOS defaults..."
defaults write com.apple.dock autohide -bool true

# Python Packages
echo "Installing Python Packages..."
brew install --cask anaconda
source $HOME/.zshrc
pip install neovim
pip install pyvim
pip install Ranger-fm

csrutil status
echo "Do not forget to disable SIP..."
echo "Modifier key capslock -> option"
echo "Add sudoer manually:\n '$(whoami) ALL = (root) NOPASSWD: sha256:$(shasum -a 256 $(which yabai) | awk "{print \$1;}") $(which yabai) --load-sa' to '/private/etc/sudoers.d/yabai'"
echo "Installation complete...\nRun nvim and Restart..."
