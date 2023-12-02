#            _
#    _______| |__  _ __ ___
#   |_  / __| '_ \| '__/ __|
#  _ / /\__ \ | | | | | (__
# (_)___|___/_| |_|_|  \___|

#==============================================================================
	# .zshrc - configuration file for zsh shell 
	#==========================================================================
	# call to neofetch command allowing to display system info at zsh launch
	# neofetch
	# Path to your oh-my-zsh installation.
	export ZSH=$HOME/.oh-my-zsh

	export DIR="$(pwd)"

	export PATH=$PATH:~/bin:/Applications/Postgres.app/Contents/Versions/12/bin
  export PATH=$PATH:/usr/local/bin
  export PATH=$PATH:/usr/local/opt/icu4c/bin
  export PATH=$PATH:$HOME/Library/Python/3.9/bin
  export PATH=$PATH:/usr/texbin:/usr/local/sbin/
  export PATH=$PATH:~/.gem/ruby/2.3.0/bin
  export PATH=$PATH:$HOME/.composer/vendor/bin
	export PATH=/$PATH:$HOME/.local/bin:$PATH

#==============================================================================
	# Set default text editor 
	#==========================================================================
	export EDITOR="lvim"
	export VISUAL="lvim"
	editor="lvim"

#==============================================================================
    # Zsh theme 
    #==========================================================================
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
    ZSH_THEME="robbyrussell"

#==============================================================================
    # Zsh options 
    #==========================================================================
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
#==============================================================================
    # Oh-my-zsh plugins 
    #==========================================================================
    plugins=(zsh-vi-mode git history fzf)
    source $ZSH/oh-my-zsh.sh
    # required to make both fzf and zsh-vi-mode works
    zvm_after_init_commands+=('[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh && bindkey "©" fzf-file-widget')
	export FZF_CTRL_T_COMMAND="fd --type f --hidden --exclude .git"
	export FZF_CTRL_T_OPTS="--height=100% --layout=reverse --preview 'bat --color=always --line-range :50 {}'"
	export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -50'"
    # fzf: CTRL-T allow file search
    # fzf: CTRL-R allow history research
    # 'fzf-tmux -r 30%': open fzf in a tmux pane on the right side occuping 30% of available space 
    # 'fzf-tmux -l 30%': open fzf in a tmux pane on the left side occuping 30% of available space 

#==============================================================================
    # User configuration 
    #==========================================================================
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

#==============================================================================
    # At Startup
    #==========================================================================
	#node --no-warnings ~/bin/vimtipsdaily.js

#        _ _
#   __ _| (_) __ _ ___
#  / _` | | |/ _` / __|
# | (_| | | | (_| \__ \
#  \__,_|_|_|\__,_|___/

#==============================================================================
    # Alias general 
    #==========================================================================
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
    alias cheatv="cheat -p vimwiki"
	  alias ip="ipconfig getifaddr en0"

#==============================================================================
    # Alias zsh 
    #==========================================================================
    alias zshrc="${editor} ~/.zshrc"
    alias ohmyzsh="${editor} ~/.oh-my-zsh"
    alias srczsh="source ~/.zshrc"

#==============================================================================
    # Alias posgresql 
    #==========================================================================
    alias pstop='pg_ctl -D ~/Library/Application\ Support/Postgres/var-12 stop'
    alias pstatus='pg_ctl -D ~/Library/Application\ Support/Postgres/var-12 status'
    pstart() {
    	local dbName="$1"
    	pg_ctl -D ~/Library/Application\ Support/Postgres/var-12 start
    	psql $dbName
    }

#==============================================================================
    # Alias mamp 
    #==========================================================================
    alias mstart="/Applications/MAMP/bin/start.sh && terminal-notifier -title 'Terminal' -message 'MAMP Servers Started'"
    alias mstop="/Applications/MAMP/bin/stop.sh && terminal-notifier -title 'Terminal' -message 'MAMP Servers Stopped'"
    alias openmamp='open -j /Applications/MAMP/MAMP.app/ && terminal-notifier -title "Terminal" -message "MAMP Opened"'
    alias localhost='chrome http://localhost:8888/'

#==============================================================================
    # Alias directory quick acces 
    #==========================================================================
    alias desk="cd ~/desktop"
    alias htdocs='cd /Applications/MAMP/htdocs'
    alias ind='cd ~/Library/Preferences/Adobe\ InDesign/Version\ 16.0/fr_FR/Scripts/Scripts\ Panel'
    alias gdrive='cd ~/Google\ Drive'
    alias vlc='/Applications/VLC.app/Contents/MacOS/VLC -I ncurses'
   	function fcd () { [ -f "$1" ] && { cd "$(dirname "$1")"; } || { cd "$1"; } ; pwd; }
  	alias cd=fcd

#==============================================================================
    # Alias vim 
    #==========================================================================
    alias v="${editor}"
    alias lvim="/Users/sebastientraber/.local/bin/lvim"
    alias vimrc="${editor} ~/.vim/vimrc"
    alias nvimrc="${editor} ~/.config/nvim/init.vim"
    alias vimplug="cd ~/.vim/pack/plugins/start"
    alias nvimplug="cd ~/.local/share/nvim/site/pack/packer/start"
    alias svimrc="${editor} ~/.SpaceVim.d/init.toml"
    alias srcvimrc='source ~/.vim/.vimrc'
    alias svim='vim -u ~/.SpaceVim/vimrc'
    alias f="vifm"
	  alias nvim-js='nvim -u /Users/sebastientraber/dotfiles/nvim/nvim/init-ts.vim'
	  alias nvim-py='nvim -u /Users/sebastientraber/dotfiles/nvim/nvim/init-py.vim'
    alias note="${editor} ~/Google\ Drive/vimwiki/common/note.md"
    export WIKI='/Users/sebastientraber/Google Drive/vimwiki'

    # @descritpion open chosen vim wiki
    # @param $1 vimwiki number, default value is 1
    function wiki() {
    	if [[ "$1" -eq "1" ]]; then
    		cd ~/Google\ Drive/vimwiki
    		"${editor}" ~/Google\ Drive/vimwiki/index.md
    	elif [[ "$1" -eq "2" ]]; then
    		cd ~/Documents/HEIG
    		"${editor}" ~/Documents/HEIG/index.md
    	else
    		cd ~/Google\ Drive/vimwiki
    		"${editor}" ~/Google\ Drive/vimwiki/index.md
    	fi
    }
    alias w="~/dotfiles/vim/.vim/getIndex.ps1 && wiki"

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
    	param=$(sed -E 's/^[A-Za-z0-9]+ *//g' <<<"${@}")
    	command=$(echo curl -X "${1:u}" http://admin:root@127.0.0.1:5984/"${param}")
    	echo "$command"
    	# eval "$command"
    }

    alias json="python -m json.tool"

#==============================================================================
    # Tmux 
    #==========================================================================
    function tmuxnew() {
    	tmux new -s $1
    }
    # alias tat="tmux new-session -As $(basename $PWD | tr .-)"
    # function tmuxopen(){
    # 	tmux attach -t $1
    # }
    function tmuxkill() {
    	tmux kill-session -t $1
    }
    alias tmuxkillall="tmux ls |cut -d:-f1 | xargs -I {} tmux kill-session -t {}"

    # $1?: socket name
    # $2?: config name
    function tmuxnewsocket() {
      local socket="$1"
      local config="$2"
      if [ -z "$socket" ] 
      then
        socket=$(date '+%s')
      fi
      if [ -z "$config" ] 
      then
        config=~/dotfiles/home/.tmux2.conf
      fi
      tmux -L "$socket" -f "$config"
    }

#==============================================================================
    # Functions 
    #==========================================================================
    if type brew &>/dev/null; then
    	FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    	autoload -Uz compinit
    	compinit
    fi

#==============================================================================
    # Spaceship const 
    #==========================================================================
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

#==============================================================================
    # VIFM 
    #==========================================================================
    vifm() {
    	if [ -f ~/dotfiles/vifm/vifm/lastdir ]; then
    		rm ~/dotfiles/vifm/vifm/lastdir
    	fi
    	# "command" prevents recursive call
    	command vifm "$@"
    	if [ -f ~/dotfiles/vifm/vifm/lastdir ]; then
    		cd "$(cat ~/dotfiles/vifm/vifm/lastdir)"
    	fi
    }

#==============================================================================
    # Cheat 
    #==========================================================================
    # $1 = tag
    # $2 = search query
    # cheats() {
    # 	local output=$(cheat -t "personal,$1" -s "$2")
    # 	local result=$(echo "$output" | sed '/2m(personal)/d')
    # 	echo "$result"
    # }

	# TODO: convert case sensitive regexp in vim to \C
    cheatsheet() {
    	local output=$(cheats --topic "$1" --search "$2")
		if [ -z "$output" ] 
		then
			echo "No cheatsheet available !"
		else
			"${editor}" -c "set filetype=vimwiki|set nospell|vimgrep ${2} %|copen" -R <(echo "$output")
		fi
    }

#==============================================================================
    # Conda  
    #==========================================================================
	  # >>> conda initialize >>>
	  # !! Contents within this block are managed by 'conda init' !!
	  __conda_setup="$('/Users/sebastientraber/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
	  if [ $? -eq 0 ]; then
		  eval "$__conda_setup"
	  else
		  if [ -f "/Users/sebastientraber/opt/anaconda3/etc/profile.d/conda.sh" ]; then
			  . "/Users/sebastientraber/opt/anaconda3/etc/profile.d/conda.sh"
		  else
			  export PATH="/Users/sebastientraber/opt/anaconda3/bin:$PATH"
		  fi
	  fi
	  unset __conda_setup
	  # <<< conda initialize <<<
    export HOMEBREW_NO_AUTO_UPDATE=1

