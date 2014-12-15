[ -f ~/.zsh/.zshrc.function ] && source ~/.zsh/.zshrc.function
[ -f ~/.zsh/.zshrc.basic    ] && source ~/.zsh/.zshrc.basic
[ -f ~/.zsh/.zshrc.path     ] && source ~/.zsh/.zshrc.path
[ -f ~/.zsh/.zshrc.theme    ] && source ~/.zsh/.zshrc.theme
[ -f ~/.zsh/.zshrc.alias    ] && source ~/.zsh/.zshrc.alias
[ -f ~/.zsh/.zshrc.app      ] && source ~/.zsh/.zshrc.app
[ -f ~/.zshrc.local ] && source ~/.zshrc.local

eval "$(rbenv init -)"

case "${OSTYPE}" in
    # Mac(Unix)
    darwin*)
    [ -f ~/.zsh/.zshrc.mac ] && source ~/.zsh/.zshrc.mac
    ;;
    # Linux
    linux*)
    [ -f ~/.zsh/.zshrc.linux ] && source ~/.zsh/.zshrc.linux
    ;;
esac

# Attache tmux
if ( ! test $TMUX ) && ( ! expr $TERM : "^screen" > /dev/null ) && which tmux > /dev/null; then
    if ( tmux has-session ); then
        session=`tmux list-sessions | grep -e '^[0-9].*]$' | head -n 1 | sed -e 's/^\([0-9]\+\).*$/\1/'`
        if [ -n "$session" ]; then
            echo "Attache tmux session $session."
            tmux attach-session -t $session
        else
            echo "Session has been already attached."
            tmux list-sessions
        fi
    else
        echo "Create new tmux session."
        tmuxx
    fi
fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
