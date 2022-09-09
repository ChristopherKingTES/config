# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH



# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"



# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"



# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )



# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"



# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"



# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time



# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13



# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"



# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"



# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"



# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"



# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"



# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"



# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"



# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder



# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    npm
    zsh-navigation-tools
    zsh-autosuggestions
    zsh-syntax-highlighting
    sudo
)



source $ZSH/oh-my-zsh.sh



# User configuration



# export MANPATH="/usr/local/man:$MANPATH"



# You may need to manually set your language environment
# export LANG=en_US.UTF-8



# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi



export EDITOR=nano



# Compilation flags
# export ARCHFLAGS="-arch x86_64"



# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"




bindkey '^ ' autosuggest-accept



## ALIAS
alias cls="clear"
alias dir="ls"
alias md="mkdir"
alias python="/usr/bin/python2.7"
alias dk="docker kill $(docker ps -q)"
alias wt="curl -3 wttr.in"
alias nac="npm audit | grep -E \"(Critical)\" -B3 -A10"
alias nah="npm audit | grep -E \"(High | Critical)\" -B3 -A10"
alias br="bosco run --no-cache -d"
alias bd="bosco run --no-cache -d"
alias bc="bosco cdn -w \"app-job-application-dashboard|app-application-tracker|app-job-application|app-organisation|app-school-portal|app-school-applications|app-candidate-search|app-authentication|app-career-profile|app-cv|infra-mongodbv4|infra-mysql|infra-nginx-gateway|infra-rabbitmq|service-page-composer|service-amqp2pdf|service-job-application-customisation|service-layout-template|service-site-assets|service-upload-scan|app-application-tracker|service-jobs-api|infra-talent-match-postgres|infra-redis|infra-s3|service-marketing|service-jobs-savedjob-api|app-recruitment-worksheets|service-registration\" -r \"app-job-application-dashboard|app-application-tracker|app-job-application|app-organisation|app-school-portal|app-school-applications|app-candidate-search|app-authentication|app-career-profile|app-cv|infra-mongodbv4|infra-mysql|infra-nginx-gateway|infra-rabbitmq|service-page-composer|service-amqp2pdf|service-job-application-customisation|service-layout-template|service-site-assets|service-upload-scan|app-application-tracker|service-jobs-api|infra-talent-match-postgres|infra-redis|infra-s3|service-marketing|service-jobs-savedjob-api|app-recruitment-worksheets|service-registration\""
alias bp="bosco ps"
alias bs="bosco bs"




## GIT
GIT_AUTHOR_NAME="ChristopherKingTES"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="christopher.king@tes.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
git config --global core.editor "/usr/bin/vim"



export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm



# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"



 if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")



   if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc



# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh



eval "$(bosco --completion=zsh)"



source ~/.profile


cd projects/tes/tes-attract/
