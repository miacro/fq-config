################################################# antigen begin
## https://github.com/zsh-users/antigen.git
ADOTDIR=~/.antigen
[[ ! -d ${ADOTDIR} ]] && mkdir -p ${ADOTDIR}
[[ -f ${ADOTDIR}/antigen.zsh ]] || curl -fSL git.io/antigen > ${ADOTDIR}/antigen.zsh
source ${ADOTDIR}/antigen.zsh

# Load the oh-my-zsh's library.
# antigen bundle https://github.com/robbyrussell/oh-my-zsh.git
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle svn
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

antigen bundle https://github.com/radhermit/gentoo-zsh-completions.git src
antigen bundle https://github.com/zsh-users/zsh-completions.git src
antigen bundle https://github.com/zsh-users/zsh-syntax-highlighting
antigen bundle https://github.com/voronkovich/gitignore.plugin.zsh.git

# Load the theme.
antigen theme clean
antigen theme Soliah

# Tell antigen that you're done.
antigen apply
################################################# antigen end

[[ -f /etc/profile.d/autojump.sh ]] && source /etc/profile.d/autojump.sh
#fpath=(${COMMON_HOME}/gentoo-zsh-completions/src $fpath)

autoload -U compinit promptinit && compinit && promptinit
setopt completealiases
GREP_OPTIONS=""
