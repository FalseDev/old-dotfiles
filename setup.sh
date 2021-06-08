# Installs
apt-add-repository ppa:fish-shell/release-3 -y
add-apt-repository ppa:deadsnakes/ppa -y
echo 'deb https://mega.nz/linux/MEGAsync/xUbuntu_18.04/ ./' > /etc/apt/sources.list.d/mega-nz.list
curl -fsSL https://mega.nz/keys/MEGA_signing.key | sudo apt-key add -
apt-get update -y
apt-get install fish python3.9 python3.9-venv tmux htop neofetch megacmd -y

wget https://github.com/sharkdp/bat/releases/download/v0.18.1/bat_0.18.1_amd64.deb
dpkg -i bat_0.18.1_amd64.deb
rm bat_0.18.1_amd64.deb

adduser --disabled-password --gecos "" falsedev --shell $(which fish)
usermod -aG sudo falsedev

sudo -i -u falsedev fish << EOF

# Move to home
cd

# Install pip
python3.9 -m ensurepip

# NodeJS
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install jorgebucaran/nvm.fish
nvm install 14
set --universal nvm_default_version v14

# Install rust toolchain
curl https://sh.rustup.rs -sSf | sh -s -- -y --profile default --component rls --default-toolchain nightly-x86_64-unknown-linux-gnu
cargo install cargo-watch

wget -qO- https://github.com/neovim/neovim/releases/download/v0.4.4/nvim-linux64.tar.gz | tar -xz

fish_add_path (pwd)/nvim-linux64/bin/
fish_add_path (pwd)/.local/bin
fish_add_path (pwd)/.cargo/bin

# Setup dotfiles
git clone https://github.com/FalseDev/dotfiles .dotfiles
ln -s ~/.dotfiles/nvim ~/.config/nvim
nvim -c 'PlugInstall|CocUpdate|quitall'

EOF
