

# Promt for debian
PS1="\[\033[31;38m\]\w\[\033[1;31m\]\$(__git_ps1)\[\033[00m\] "
export GIT_PS1_SHOWDIRTYSTATE=1

# Editor
export GIT_EDITOR='vim'

# Shortcuts

# Creates git repostitory with some reasonable default settings in current folder
function git_here() {
	git init
	git config color.ui auto
	echo "log tmp db/*.sqlite3 nbproject/private bin .DS_Store" | tr " " "\n" > .gitignore
	git add .gitignore
	git commit -m "initial project setup"
}
