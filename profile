# Load ~/.bash/extra, ~/.bash/prompt, and ~/.bash/aliases
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.bash/{extra,prompt,aliases}; do
	[ -r "$file" ] && source "$file"
done
unset file

# init rbenv
export RBENV_ROOT=/usr/local/var/rbenv
eval "$(rbenv init -)"

export PATH="/usr/local/bin:$PATH"

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin


#https://github.com/bobthecow/git-flow-completion/wiki/Install-Bash-git-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
