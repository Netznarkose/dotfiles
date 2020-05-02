# Setup

## 1. Spectacle  
a) Install Spectacle  
b) Settings => Lower Left Half: ⌥H, Right Half: ⌥L, Fullscreen: ^F  

## 2. Install Sync.com   

## 3. KeepassX  
a) Install KeepassX  
b) open sync/keepass_data/... 

## 4. Iterm  
a) Install Iterm  

## 5. Command Line Tools without Xcode  
a) `xcode-select --install`  

## 6. Brew  
a) Install Brew  
`/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

## 7. Git  
a) `brew install git`  

## 8. Oh My Zshell  
a) `sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`  
b) `rm ~/.zshrc`  
c) `ln -s dotfiles/zshrc ~/.zshrc`  


## 9. SSH-Key  
a) create a new ssh-key  
https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/  
b) add new ssh-key to Github    
https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/


## 9. Dotfiles  
a) `git clone git@github.com:Netznarkose/dotfiles.git`  
b) `sh dotfiles/makesymlinks.sh`  

## 10. RVM  
a) `brew install gnupg gnupg2`  
b) `gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3`  
c) `\curl -sSL https://get.rvm.io | bash -s stable --ruby --rails`  

## 11. Tmux
a) `brew install tmux`   
b) `brew install reattach-to-user-namespace`  
c) Make space as leader-key work uncheck _select previous input source_  

![screenshot4](https://user-images.githubusercontent.com/10247813/48979260-4b227c00-f0b8-11e8-9c09-ac94ddb43fbf.png)

## 12. Karabiner (Use Capslock as Controll and ESC-Key)
a) install Karabiner Elements  
b) Download preset and enable it  

![image](https://user-images.githubusercontent.com/10247813/67624937-c562ff80-f837-11e9-8b99-699acc19c904.png)


## 13. Update Vim  
`brew install vim`  
`source ~/zshrc`

## 14. MacMail  

![mac_mail](https://cloud.githubusercontent.com/assets/10247813/23120115/629fa25c-f75b-11e6-966e-5a78ecc047e7.png)

## 15. Anki    
a) Install Anki  
b) sync Decks from AnkiWeb  
c) Install add-on: Hierarchical Tags 1089921461 

## 16. Disable the Dock’s ‘bounce to alert’ behavior  
`defaults write com.apple.dock no-bouncing -bool TRUE`   
`killall Dock`
## 17. Stop Spaces from rearranging themselves

![screenshot_1](https://user-images.githubusercontent.com/10247813/44616892-3afcc580-a859-11e8-86ab-0dbab795f8dd.png)

## 18. Stop silly fades while switching spaces

![screenshot_2](https://user-images.githubusercontent.com/10247813/53475916-76c75080-3a71-11e9-9df1-7ab00eed2a56.png)

## 19. Install and Configure Vimium


Excluded URLs and keys:  
```
https?://calendar.google.com/*
```

Custom key mappings:  
```
map <C-o> goBack
map <C-i> goForward
map <C-l> nextTab
map <C-h> previousTab
map d removeTab
```

Custom search engines:  
```
wik: https://www.wikipedia.org/w/index.php?title=Special:Search&search=%s Wikipedia
wikt https://de.wiktionary.org/wiki/%s Wiktionary
gtrans: https://translate.google.com/#view=home&op=translate&sl=en&tl=de&text=%s GoogleTranslate
l: https://dict.leo.org/german-english/%s Leo
f: https://forvo.com/search/%s Forvo
```

## 20. Customize terminal

Download color-templates

- Builtin Solarized Light
- Solarized Dark Patched

Adjust colors if you need to 

<img width="925" alt="Screen Shot 2020-04-27 at 8 15 10 PM" src="https://user-images.githubusercontent.com/10247813/80406154-e75f3c80-88c3-11ea-8558-084ea95cf13d.png">
