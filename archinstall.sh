
# Pacman packages
sudo pacman -Syu base-devel cava cmake fastfetch flatpak foot gcc git gnome-font-viewer hyprland lolcat nano obs-studio pavucontrol sddm spotify-player tmux waybar zsh discord swww nautilus wofi xdg-desktop-portal-hyprland thefuck pipewire code fzf

# System services
sudo systemctl enable sddm

# Installing AUR
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~

# Installing vencord
sh -c "$(curl -sS https://vencord.dev/install.sh)"

# Installing yay packages
yay -Syu pywal-discord tty-clock pywalfox pywal oomox themix

# Required configs
mkdir ~/.config/wal/
mkdir ~/.local/bin/
mkdir ~/.oh-my-zsh/custom/themes/powerlevel10k

# Symlinking configs
ln -s ~/customrice/hypr/ ~/.config/
ln -s ~/customrice/waybar ~/.config/
ln -s ~/customrice/hooks ~/.config/wal
ln -s ~/customrice/wallpaper ~/.local/bin

sudo rm /etc/xdg/foot/foot.ini
sudo ln -s ~/customrice/foot.ini /etc/xdg/foot/

# Setting up omz
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
rm ~/.zshrc
ln -s ~/customrice/.zshrc ~

# pain in the ass p10k moment
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
ln -s ~/customrice/powerlevel10k ~/.oh-my-zsh/custom/themes/
ln -s ~/customrice/.p10k.zsh ~/
