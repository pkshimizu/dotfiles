source /Users/shimizu.kenji/newspicks/.exports

export PATH=/usr/local/bin:$PATH

export NODE_HOME=~/.nodebrew/current
export PATH=$PATH:$NODE_HOME/bin

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

export PATH=$PATH:~/newspicks/src/newspicks-developer-tools/bin

export PATH="/Users/shimizu.kenji/.ebcli-virtual-env/executables:$PATH"

export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.rbenv/shims:$PATH"
eval "$(rbenv init -)"

export AWS_SDK_LOAD_CONFIG=1

eval "$(direnv hook zsh)"

export PATH=/usr/local/flutter/bin:$PATH

