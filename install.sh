echo "Creating links to vim.rc, tmux.conf, and .zshrc files"
ln vimrc ~/.vimrc
ln .vim ~/.vim
ln zshrc ~/.zshrc
ln tmux.conf ~/.tmux.conf

#echo "Installing homebrew"
#/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing packages from brewleaves"
./brewstaller.sh brewleaves

#echo "Fetching dracula theme for iterm"
#git clone https://github.com/dracula/iterm.git
