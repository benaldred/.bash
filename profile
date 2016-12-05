# Load ~/.bash/extra, ~/.bash/prompt, and ~/.bash/aliases
# ~/.bash/extra can be used for settings you don’t want to commit
for file in ~/.bash/{extra,prompt,aliases}; do
	[ -r "$file" ] && source "$file"
done
unset file

#https://github.com/bobthecow/git-flow-completion/wiki/Install-Bash-git-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
