# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

HYPHEN_INSENSITIVE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

eval $(thefuck --alias)

export GOPATH="$HOME/workspace"
export PATH=$PATH:$GOPATH/bin

alias simonsays=sudo

# random emoji prompt
# EMOJIS=(🍣 🍺 👾 🍶 👀 👄 🍎 🍩 🍾 🍸 🍹 💃 🤘 👉 🥐 🌮)
# export PROMPT=$PROMPT$'
# $SEL_EMOJI '
# function precmd() {
#   SEL_EMOJI=${EMOJIS[RANDOM % ${#EMOJIS[@]} - 1 ]}
# }

# sparkle prompt
# export PROMPT=$PROMPT$'
# %F{165}☆%F{011}ﾟ¸%F{177}ﾟ･%F{093}*%F{051}✧%F{075}ﾟ %{$reset_color%}'

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/aaron/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/aaron/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/aaron/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/aaron/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

eval "$(direnv hook zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
