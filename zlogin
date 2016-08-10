
# .bash_profile only runs on User-Login

# echo -n "You are using Oh My Zshell"
# echo ""
# echo ""
# echo -n "Make Configuration changes in .zshrc & .zlogin"
# echo ""
# echo ""
# echo -n "Happy Hacking "; whoami
# This loads in the configuration in .bashrc
# Put all Configuration there
if [ -f ~/.bashrc ]; then 
	source ~/.zshrc
fi
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
