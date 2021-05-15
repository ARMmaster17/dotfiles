function gamp {
	git add -A
	git commit -m ""
	git push
}

export ZSH="/Users/joshuazenn/.oh-my-zsh"

zsh_spotify_status(){
	local track=$(spotify status track)
	local artist=$(spotify status artist)
	echo -n "\u266b $artist | $track"
}
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_CUSTOM_SPOTIFY_STATUS="zsh_spotify_status"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_spotify_status newline os_icon ssh root_indicator user host ip dir_writable dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs load ram swap time)

plugins=(
	git
	zsh-autosuggestions
	osx
)


source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme
