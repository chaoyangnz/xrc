case "$(uname -s)" in
    Linux*)     os=linux;;
    Darwin*)    os=osx;;
    *)          os=""
esac

if [ "$os" -eq "linux" ]; then
  antigent=/usr/share/zsh-antigen/antigen.zsh
else
  antigent=/opt/homebrew/share/antigen/antigen.zsh
fi

source $antigen

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme https://github.com/chaoyangnz/xrc.git pro

# Tell Antigen that you're done.
antigen apply

# source ~/.bash_profile
