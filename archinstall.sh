
# Pacman packages
sudo pacman -Syu base-devel cava cmake fastfetch flatpak foot gcc git gnome-font-viewer hyprland lolcat nano obs-studio pavucontrol sddm spotify-player tmux waybar zsh discord swww

#Installing AUR
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ~

#Installing vencord
sh -c "$(curl -sS https://vencord.dev/install.sh)"

#Installing yay packages
yay -Syu pywal-discord tty-clock pywalfox pywal oomox themix

#Symlinking hyprland
ln -s hypr/ ~/.config/hypr
