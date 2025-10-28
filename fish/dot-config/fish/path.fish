set -x PYENV_ROOT $HOME/.pyenv

fish_add_path -p $PYENV_ROOT/bin

fish_add_path -a /usr/lib/jvm/default/bin
fish_add_path -a /usr/lib/rustup/bin
fish_add_path -a $HOME/.local/bin
fish_add_path -a $HOME/.cargo/bin
fish_add_path -a $HOME/.nimble/bin
fish_add_path -a $HOME/.choosenim/toolchains/nim-1.6.14/bin
fish_add_path -a $HOME/go/bin
