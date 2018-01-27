echo "[ oh-my-zsh setup ]"
sudo apt-get -qq install -y zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
echo "Copying zshrc template to $HOME/.zshrc ..."
cp $repo/config/zsh/dotzshrc $HOME/.zshrc
echo " "
echo "[ Shell setup ]"
echo "Change shell from bash to zsh. Proceed [Yn]"
read change_shell
if [[ $change_shell == "y" || $change_shell == "Y" || $change_shell == "yes" ]]; then
    echo "**Using ZSH as default shell**"
    chsh -s `which zsh` 
fi

