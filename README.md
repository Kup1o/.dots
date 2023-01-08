# Step-by-step guide to install the rice
1. Install Arch Linux using [Installation guide](https://wiki.archlinux.org/title/Installation_guide)
2. Install Xorg & i3
```
pacman -S i3-gaps i3status xorg xorg-xinit xterm
```
3. Install yay
```
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```
4. Install zsh
```
yay -S zsh
chsh $(which zsh)
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
yay -S neovim nerd-fonts-agave ripgrep zip unzip xclip
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
```
8. Install fcitx5
```
yay -S fcitx5-im fcitx5-configtool fcitx-hangul
```
9. Install rofi & dependencies for custom scripts
```
yay -S rofi scrot dmenu libnotify dunst bluez-utils power-profiles-daemon python-gobject fd feh networkmanager iw iwd
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
yay -S flatpak firefox discord_arch_electron screenkey wget curl
flatpak install flathub org.telegram.desktop

mkdir $HOME/Applications
wget -P $HOME/Applications https://github.com/Figma-Linux/figma-linux/releases/download/v0.10.0/figma-linux_0.10.0_linux_x86_64.AppImage
wget -P $HOME/Applications https://github.com/OneMoreGres/ScreenTranslator/releases/download/3.3.0/ScreenTranslator-3.3.0.AppImage
wget -P $HOME/Applications https://electron-dl.todoist.com/linux/Todoist-1.0.9.AppImage
wget -O - https://raw.githubusercontent.com/laurent22/joplin/dev/Joplin_install_and_update.sh | bash
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
