# Step-by-step guide to install the rice
1. Install Arch Linux using [Installation guide](https://wiki.archlinux.org/title/Installation_guide)
2. Install Xorg & i3
```
pacman -S i3-gaps i3status xorg xorg-xinit xterm
```
3. Install yay
```
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
```
4. Install zsh
```
yay -S zsh
chsh -s $(which zsh) $USER
```
5. Install oh-my-zsh
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
6. Install alacritty
```
yay -S alacritty
```
7. Install nvim & nvchad & nerd fonts
```
yay -S neovim ttf-agave-nerd ripgrep zip unzip xclip
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
```
8. Install fcitx5
```
yay -S fcitx5 fcitx5-im fcitx5-configtool fcitx5-qt fcitx5-gtk fcitx5-chinese-addons fcitx5-pinyin-zhwiki fcitx5-hangul
```
9. Install rofi & dependencies for custom scripts
```
yay -S rofi scrot dmenu libnotify dunst bluez-utils power-profiles-daemon python-gobject fd feh iw iwd
```
10. Install betterlockscreen
```
yay -S betterlockscreen
```
11. Install tmux
```
yay -S tmux
```
12. Install AppImages
```
yay -S firefox discord_arch_electron screenkey wget curl 4kvideodownloader wine imagemagick
```

```
#!/bin/bash

# Set the URLs of the packages to download
urls=(
    "https://github.com/OneMoreGres/ScreenTranslator/releases/latest"
    "https://github.com/obsidianmd/obsidian-releases/releases/latest"
)

# Loop through the URLs and download the latest release package for each one
for url in "${urls[@]}"
do
    # Use the GitHub API to get the latest release version and package URL for the URL
    latest_release=$(curl --silent "$url" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')
    package_url=$(curl --silent "$url" | grep -Eo 'href="([^"#]+)"' | grep -m 1 '.AppImage')

    # Download the latest release package using wget
    wget $package_url -O "${url##*/}-$latest_release.AppImage"
done
```

```
wget -P /usr/bin/ https://github.com/PaddiM8/kalker/releases/latest/download/kalker-linux
```

13. Install redshift
```
yay -S redshift
```
14. Install pulseaudio & alsamixer
```
yay -S pulseaudio alsasmixer
```
15. Install cursor
```
wget https://github.com/ful1e5/Bibata_Cursor/releases/download/latest/Bibata-Modern-Classic.tar.gz
mkdir ~/.icons
mv Bibata-Modern-Classic.tar.gz ~/.icons
cd ~/.icons
yay -S tar
tar xvf Bibata-Modern-Classic.tar.gz
```
16. Install safeeyes
```
yay -S safeeyes
```
