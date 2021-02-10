HISTFILE=/zsh_history/.zsh_history
ZSH_AUTOSUGGEST_USE_ASYNC="true"

source ~/.zinit/bin/zinit.zsh

zinit light zsh-users/zsh-autosuggestions
zinit light zdharma/fast-syntax-highlighting

# setopt promptsubst

# zinit wait lucid for \
#         OMZL::git.zsh \
#   atload"unalias grv" \
#         OMZP::git

# PS1="READY >" # provide a simple prompt till the theme loads

# zinit wait'!' lucid for \
#     OMZL::prompt_info_functions.zsh \
#     OMZT::gnzh



# zinit light zsh-users/zsh-completions

# autoload compinit
# compinit

# zinit light zdharma/fast-syntax-highlighting

# zinit light zsh-users/zsh-autosuggestions

# zinit ice from"gh-r" as"program"
# zinit load junegunn/fzf-bin


# antigen use oh-my-zsh

# antigen bundle debian
# antigen bundle gcloud
# antigen bundle git
# antigen bundle github
# antigen bundle node
# antigen bundle npm

# antigen bundle zsh-users/zsh-completions
# antigen bundle zsh-users/zsh-autosuggestions
# antigen bundle zsh-users/zsh-syntax-highlighting

# antigen theme gentoo

# antigen apply

zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache