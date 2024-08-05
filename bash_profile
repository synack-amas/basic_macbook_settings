### BREW ###
eval "$(/opt/homebrew/bin/brew shellenv)"

### RVM ###
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

### NVM ###
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

### POSTGRES ###
# If you need to have postgresql@15 first in your PATH, run
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
#For compilers to find postgresql@15 you may need to set:
export LDFLAGS="-L/opt/homebrew/opt/postgresql@15/lib"
export CPPFLAGS="-I/opt/homebrew/opt/postgresql@15/include"
# For pkg-config to find postgresql@15 you may need to set:
export PKG_CONFIG_PATH="/opt/homebrew/opt/postgresql@15/lib/pkgconfig"
# To start postgresql@15 now and restart at login: brew services start postgresql@15
# Or, if you don't want/need a background service you can just run:
# LC_ALL="C" /opt/homebrew/opt/postgresql@15/bin/postgres -D /opt/homebrew/var/postgresql@15


### LOADING BASHRC ###
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/opt/google-cloud-sdk/path.bash.inc' ]; then . '/opt/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/opt/google-cloud-sdk/completion.bash.inc' ]; then . '/opt/google-cloud-sdk/completion.bash.inc'; fi

### GIT COMPLETION ###
if [ -f "$(brew --prefix)/etc/bash_completion.d/git-completion.bash" ]; then . $(brew --prefix)/etc/bash_completion.d/git-completion.bash; fi
