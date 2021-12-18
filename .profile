# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

export EDITOR='vim'
export VISUAL='vim'

# load aliases from external file
if [ -f "$HOME/.aliases" ] ; then
    . "$HOME/.aliases"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# PATH
export NPM_CONFIG_PREFIX="$HOME/.npm-global"
export GEM_HOME="$HOME/gems"
export PATH=$PATH:\
    /usr/bin:\
    $NPM_CONFIG_PREFIX/bin:\
    $GEM_HOME/bin