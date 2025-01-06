# Include custom scripts
export PATH="$PATH:$HOME/.scripts"

# To set vim as default editor
alias vi=vim
export VISUAL=vim
export EDITOR="$VISUAL"

### KUBERNETES ###
export PATH="$PATH:$HOME/.kube"

# List K8s pods (optional arg: namespace)
function lspods(){
    if [ $# -eq 0 ]
        then
        kubectl get pods -o wide
    else
        kubectl get pods -n $1 -o wide
    fi
}

# List K8s services (optional arg: namespace)
function lssvc(){
    if [ $# -eq 0 ]
        then
        kubectl get svc
    else
        kubectl get svc -n $1
    fi
}

# Pyenv environment variables
# Reference: https://levelup.gitconnected.com/install-multiple-python-versions-on-linux-8bd6d301d78c?gi=31d0a229019b
# git clone https://github.com/pyenv/pyenv.git ~/.pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
