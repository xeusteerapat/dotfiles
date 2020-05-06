source "$HOME/anaconda3/etc/fish/conf.d/conda.fish"
export PATH="$PATH:/usr/local/bin:$PATH"
export PATH="$PATH:/usr/local/bin/node:$PATH"
export PATH="$HOME/anaconda3/bin:$PATH"
# export PATH="$HOME/usr/local/bin/bin:$PATH"
export PATH="$HOME/usr/local/bin/git:$PATH"
export PATH="$HOME/usr/local/opt/qt/bin:$PATH"
export PATH="$HOME/.npm-global/bin:$PATH"
export PATH="$HOME/usr/local/mysql/bin:$PATH"
export PATH="$HOME/usr/local/bin/mongo:$PATH"
export PATH="$PATH:/usr/local/go/bin:$PATH"
alias python='python3'
alias g=git
alias mongod="mongod --dbpath "/Users/Xeus/data/db""
alias sql_start="mysql.server start"
alias sql_stop="mysql.server stop"
alias sql_use="mysql -u root -p"

# find node_modules
function find_node_modules
    find . -name "node_modules" -type d -prune -print | xargs du -chs
end

# delete all node_modules
function delete_node_modules
    find . -name 'node_modules' -type d -prune -print -exec rm -rf '{}' \;
end