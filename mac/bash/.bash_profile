# .bashrc

# User specific aliases and functions

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

alias ll='ls -lh'
alias python='python3'
alias python2='python'
alias pip='pip3'


export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad
export PS1="\[\e[35m\]\[\e[0m\]$\[\e[31m\]\t\[\e[0m\][\[\e[36m\]\W\[\e[0m\]]\[\e[32m\]\u\[\e[0m\]\[\e[33m\]@\[\e[0m\]\[\e[34m\]\h\[\e[0m\]\[\e[35m\]\[\e[0m\]\[\033[33m\]\$(parse_git_branch)\[\033[00m\]$"
export TERM=xterm-color

export M2_HOME=/Users/tigersong/tools/apache-maven-3.5.2
export PATH=$PATH:$M2_HOME/bin

#ARTISTIC_STYLE_OPTIONS=~/.astylerc
alias astyle="astyle --style=attach --convert-tabs --indent=spaces=4 --add-brackets \
--pad-header --unpad-paren --pad-oper --max-code-length=100 --formatted --align-pointer=type \
--align-reference=type --break-blocks -Y"

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

#JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/"
JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_162.jdk/Contents/Home/"
export PATH="$JAVA_HOME/bin:$PATH"

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
