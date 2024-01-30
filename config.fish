export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
# export PATH="$HOME/.npm-global/bin:$PATH"
export GOPATH="$HOME/go"
# export GOROOT="/usr/local/go"
export GOROOT="/usr/local/opt/go/libexec"
export PATH="$GOPATH/bin:$GOROOT/bin:$PATH"
export PATH="$PATH:/usr/local/sbin:$PATH"
export PATH="$PATH:/Users/teerapatprommarak/Desktop/nand2tetris/tools:$PATH"
export PATH="$HOME:/.local/bin:$PATH" # lunarvim
export PATH="$HOME:/Library/Java/JavaVirtualMachines/jdk-15.0.1.jdk/Contents/Home:$PATH" # jenv
export PATH="$HOME:/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home:$PATH" # jenv
export PATH="$PATH:/usr/local/share/android-commandlinetools/emulator"
export ANDROID_HOME="/usr/local/bin/sdkmanager"
# export ANDROID_SDK_ROOT="/usr/local/bin/sdkmanager"
# export ANDROID_SDK_ROOT="$HOME:/Library/Android/sdk"
# export android_sdk_root="/usr/local/share/android-commandlinetools"
export ANDROID_SDK_ROOT="/usr/local/share/android-commandlinetools"
# export ANDROID_AVD_HOME="$HOME:/.android/avd:$PATH"
export PATH="$PATH:$HOME/.rvm/bin"

export DPRINT_INSTALL="/Users/teerapatprommarak/.dprint"
export PATH="$DPRINT_INSTALL/bin:$PATH"

# dapr
export PATH="$PATH:/Users/teerapatprommarak/.dapr/bin:$PATH"

# exo
export PATH="$PATH:/Users/teerapatprommarak/.exo/bin:$PATH"

# export PATH="$HOME/usr/local/opt/mysql@5.7/bin:$PATH"
set -g fish_user_paths "/usr/local/opt/mysql@5.7/bin" $fish_user_paths

alias start_mysql="mysql.server start"
alias stop_mysql="mysql.server stop"

# source fish shell
alias src_fish="source ~/.config/fish/config.fish"

# create node project
alias create_node="npm init -y && npx gitignore node && touch index.js"

# create ts-project
alias create_ts="npm init -y && npx gitignore node && mkdir src && touch src/index.ts && tsc --init"

# create react app with vite
alias vite_react="yarn create @vitejs/app . --template react"

# create react app with snowpack
alias snowpack_react="npx create-snowpack-app . --template @snowpack/app-template-react --use-yarn --no-git --force"

# mongodb
alias mongod="mongod --dbpath "/Users/teerapatprommarak/data/db""

# vlang
alias v="/Users/teerapatprommarak/vlang/v/v"

# terraform
alias tf="terraform"

# neovim
alias nv="nvim"

# lunarvim
alias lvim="/Users/teerapatprommarak/.local/bin/lvim"

# gcp cloud_sql_proxy
alias sql_proxy="/Users/teerapatprommarak/cloud_sql_proxy"

# git
alias g=git
alias ga="git add"
alias gcm="git commit -m"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gps="git push"
alias gpl="git pull"
alias gs="git status"


# git emoji
alias gmj=gitmoji

# python
alias python="python3"

# k8s
alias ku="kubectl"

# docker
alias dk="docker"
alias dcp="docker-compose"

# alias rm -rf
alias del="rm -rf"

# alias pip python
alias pip="pip3"

# alias pulumi
alias plm="pulumi"

# alias pnpm
alias pnm="pnpm"
alias pdx="pnpm dlx"

# find node_modules
function find_node_modules
    find . -name "node_modules" -type d -prune -print | xargs du -chs
end

# delete all node_modules
function delete_node_modules
    find . -name 'node_modules' -type d -prune -print -exec rm -rf '{}' \;
end

functions -c fish_prompt _old_fish_prompt
function fish_prompt
  if set -q VIRTUAL_ENV
    echo -n -s (set_color -b blue white) "(" (basename "$VIRTUAL_ENV") ")" (set_color normal) " "
  end
  _old_fish_prompt
end

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/teerapatprommarak/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/Users/teerapatprommarak/Downloads/google-cloud-sdk/path.fish.inc'; end

# starship init fish | source
alias lzd="lazydocker"

# Bun
set -Ux BUN_INSTALL "/Users/teerapatprommarak/.bun"
set -px --path PATH "/Users/teerapatprommarak/.bun/bin"

# THEME PURE #
# set fish_function_path /Users/teerapatprommarak/.config/fish/functions/theme-pure/functions/ $fish_function_path
# source /Users/teerapatprommarak/.config/fish/functions/theme-pure/conf.d/pure.fish

rvm default

# pnpm
set -gx PNPM_HOME "/Users/teerapatprommarak/Library/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end
[ -f ~/.inshellisense/key-bindings.fish ] && source ~/.inshellisense/key-bindings.fish
