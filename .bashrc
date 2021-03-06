# Misc bash options
shopt -s autocd checkwinsize checkjobs extglob globstar  

# Make bash use a better pager
export PAGER='less'
export MANPAGER='less -R '

# Setup prompt
PS1="$(tput setaf 11)[\u@\h \W] $(tput sgr0)"
PS2="> "

# vim on z/OS has problems; suggest vi instead
alias vim='echo You probably meant vi...'

# Make sure child processes see TERM and TERMINFO
export TERM=$TERM
export TERMINFO=$TERMINFO

# Node.js configuration
PROJNODE=$(echo /proj/*/node)
export PATH=$PROJNODE/installs/node-v0.12.18-os390-s390x/bin:$PATH
export NODE_PATH=$PROJNODE/installs/node-v0.12.18-os390-s390x/lib/node_modules

# Git configuration, based on z/OS Git release notes
export ZOS_GIT_DIR=/rsusr/portgit
export _BPXK_AUTOCVT=ON
export _CEE_RUNOPTS='FILETAG(AUTOCVT,AUTOTAG) POSIX(ON)'
export _TAG_REDIR_IN=txt
export _TAG_REDIR_OUT=txt
export _TAG_REDIR_ERR=txt
# We put git at the end of the path to avoid overriding bash
export PATH=$PATH:$ZOS_GIT_DIR/bin
export LIBPATH=$ZOS_GIT_DIR/lib/perl5/5.24.0/os390/CORE:$LIBPATH
export PERL5LIB=$ZOS_GIT_DIR/lib/perl5
export MANPATH=$ZOS_GIT_DIR/man:$MANPATH
export GIT_SHELL=$ZOS_GIT_DIR/bin/bash
export GIT_EXEC_PATH=$ZOS_GIT_DIR/libexec/git-core
export GIT_TEMPLATE_DIR=$ZOS_GIT_DIR/share/git-core/templates

# Some helpful aliases
alias l='ls -F '
alias la='ls -FA '
alias ll='LC_COLLATE=C ls -lATk '
alias lx='LC_COLLATE=C ls -lAEHWTk '

# File-tag manipulation
alias tagE='chtag -tc 1047 '
alias tagA='chtag -tc ISO8859-1 '
alias tagB='chtag -b '
alias untag='chtag -r '

# Allow for easy access to various scripts present in this folder.
# You may need to change the path below:
export PATH=$PATH:~/ussfiles/scripts
