#            _              
#    _______| |__  _ __ ___ 
#   |_  / __| '_ \| '__/ __|
#  _ / /\__ \ | | | | | (__ 
# (_)___|___/_| |_|_|  \___|

#=============================================================================
# .zshrc - configuration file for zsh shell
#=============================================================================
# call to neofetch command allowing to display system info at zsh launch
# neofetch
# Path to your oh-my-zsh installation.
export ZSH="/Users/sebastientraber/.oh-my-zsh"
export PATH=$PATH:~/bin:/Applications/Postgres.app/Contents/Versions/12/bin
export PATH="usr/local/bin:/usr/local/opt/icu4c/bin:/Users/sebastientraber/Library/Python/3.9/bin:/usr/texbin:/usr/local/sbin/:~/.gem/ruby/2.3.0/bin:$PATH"
# Path to current directory, set at zsh start
export DIR="$(pwd)"

#=============================================================================
# Set default text editor
#=============================================================================
export EDITOR="vim"
export VISUAL="vim"
editor="vim"

#=============================================================================
# Zsh theme
# 
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
#=============================================================================
ZSH_THEME="robbyrussell"

#=============================================================================
# Zsh options
#=============================================================================
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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

# set vim mod
# bindkey -v
# quicker key response
# export KEYTIMEOUT=1

#=============================================================================
# Oh-my-zsh plugins
# 
# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#=============================================================================
plugins=(git history zsh-vi-mode)
source $ZSH/oh-my-zsh.sh
# zsh-vi-mode

#=============================================================================
# User configuration
#=============================================================================

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"


#        _ _           
#   __ _| (_) __ _ ___ 
#  / _` | | |/ _` / __|
# | (_| | | | (_| \__ \
#  \__,_|_|_|\__,_|___/

#=============================================================================
# Alias general
# 
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#=============================================================================

# Permet de charger le contenu du/des fichier(s) suivant(s)
if [ -e $HOME/.zsh_criticalAliases ]; then
    source $HOME/.zsh_criticalAliases
fi

alias ls=colorls — light — sort-dirs — report’ 
alias lc=colorls — tree — light
alias ctags='/usr/local/bin/ctags'
alias update='sudo softwareupdate -ia --verbose; brew bundle -v; brew cleanup; brew doctor --verbose'
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'
alias words='cat /usr/share/dict/words'
alias tmux="TERM=screen-256color-bce tmux"

#=============================================================================
# Alias zsh
#=============================================================================
alias zshrc="${editor} ~/.zshrc"
alias ohmyzsh="${editor} ~/.oh-my-zsh"
alias srczsh='source ~/.zshrc'
alias src='source ~/.zshrc'

#=============================================================================
# Alias posgresql
#=============================================================================
alias pstop='pg_ctl -D ~/Library/Application\ Support/Postgres/var-12 stop'
alias pstatus='pg_ctl -D ~/Library/Application\ Support/Postgres/var-12 status'
pstart() {
    local dbName="$1"
    pg_ctl -D ~/Library/Application\ Support/Postgres/var-12 start
    psql $dbName
}

#=============================================================================
# Alias mamp
#=============================================================================
alias mstart="/Applications/MAMP/bin/start.sh && terminal-notifier -title 'Terminal' -message 'MAMP Servers Started'"
alias mstop="/Applications/MAMP/bin/stop.sh && terminal-notifier -title 'Terminal' -message 'MAMP Servers Stopped'"
alias openmamp='open -j /Applications/MAMP/MAMP.app/ && terminal-notifier -title "Terminal" -message "MAMP Opened"'
alias localhost='chrome http://localhost:8888/'

#=============================================================================
# Alias directory quick acces
#=============================================================================
alias desk="cd ~/desktop"
alias htdocs='cd /Applications/MAMP/htdocs'
alias ind='cd ~/Library/Preferences/Adobe\ InDesign/Version\ 16.0/fr_FR/Scripts/Scripts\ Panel'
alias gdrive='cd ~/Google\ Drive'
alias vlc='/Applications/VLC.app/Contents/MacOS/VLC -I ncurses'

#=============================================================================
# Alias vim
#=============================================================================
alias v="vim"
alias vimrc="${editor} ~/.vim/vimrc"
alias nvimrc="${editor} ~/.config/nvim/init.vim"
alias vimplug="cd ~/.vim/pack/plugins/start"
alias nvimplug="cd ~/.local/share/nvim/site/pack/packer/start"
alias svimrc="${editor} ~/.SpaceVim.d/init.toml"
alias srcvimrc='source ~/.vim/.vimrc'
alias svim='vim -u ~/.SpaceVim/vimrc'
alias wiki="cd ~/Google\ Drive/vimwiki ; vim ~/Google\ Drive/vimwiki/index.md"
alias w="wiki"
alias f="vifm"

# @description Perform a search in dash
# @param $1 search querry
# @param $2 language
dsh() {
	vim -c ":Dash $1 $2" -c "qa"
}

# @description Perform a search in dash in all docset
# @param $1 search querry
dshg() {
	vim -c ":Dash! $1" -c "qa"
}

cdb() {
	curl -X "${1}" http://admin:root@127.0.0.1:5984/"${2}"
}

alias json="python -m json.tool"

#=============================================================================
# Functions
#=============================================================================

if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
  fi

#=============================================================================
# Spaceship const
#=============================================================================
SPACESHIP_PROMPT_ADD_NEWLINE="true"
SPACESHIP_CHAR_SYMBOL="\uf0e7"
SPACESHIP_CHAR_PREFIX="\uf296"
SPACESHIP_CHAR_SUFFIX=(" ") 
SPACESHIP_CHAR_COLOR_SUCCESS="yellow"
SPACESHIP_PROMPT_DEFAULT_PREFIX="$USER" 
SPACESHIP_PROMPT_FIRST_PREFIX_SHOW="true" 
SPACESHIP_USER_SHOW="true"

eval "$(navi widget zsh)"
eval "$(rbenv init -)"

