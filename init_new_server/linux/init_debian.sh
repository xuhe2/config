# OS: debian

# config lang
echo 'export LANG="zh_CN.UTF-8"' >> ~/.bashrc
source ~/.bashrc

# config ssh key
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDNCMS7MmSEpIXrlkeiTDKl2KFbRvqtEB/mGtWECiG6li476rFFy+wQpwserTTf9mF+VVa1x0PGECrFOMfWmmbkQeDLLkvW4DHPm1owlA4y6Midu+myIToaDirpZXo1ZYcDJtRg0yBClMTfuUFEyvtG7Q35f/XGFJCoMwOq3inxmXeSre/mAF/YdxP9Hfx/cYnUelNfcPHGZEQJjpk2ErEND83gCATKK+m91bPlsx2qqjchw8YCQ6z4cgUErwLn6R9tkOe66iLmDUaD1oFz78jnn8Q0DQ5BH6j2poNjDBmWSFnIl8rF0/saWTgI9yQDfePoaVqnUmGuvehaFXi44S0igI/nK6NO64SKUqUjFk5a7SXYdleQ//qzcs9LvHMHvKXAaMH8hNjgyG+jGjDbEsrMetHunyr0meesFz9YmjSb3xiwQX2S5we+bF0IAWbC7/mLPaQraCJUtBGY4/3B1+6AnGsdEiB3hOO+lbDZ7lD2XDKJe39obxQZztn29Nc7Rac= xuhe114514@gmail.com" >> ~/.ssh/authorized_keys

# apt update and install curl
apt update
apt install -y curl

# change the source
curl https://gitee.com/RubyMetric/chsrc/raw/main/tool/installer.sh | bash
chsrc set debian

# install common tools
apt install -y git vim tmux fish btop p7zip-full tree 
echo "set-option -g default-shell /usr/bin/fish  # 或者你想要的任何其他 shell" >> ~/.tmux.conf

# install zoxide
apt install -y zoxide
echo "zoxide init fish | source" >> ~/.config/fish/config.fish

# install golang
# ref: https://github.com/Jrohy/go-install
bash -c "source <(curl -L https://go-install.netlify.app/install.sh)"

# clone config repo
mkdir -p ~/.config/xuhe
cd ~/.config/xuhe
git clone https://github.com/xuhe2/config.git
# config vim

# log
echo "init done"
echo "!!!reboot to take effect"