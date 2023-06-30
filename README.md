# dotfiles

### Usage:

1. Clone the repo:

`git clone https://github.com/derekfrogget/dotfiles.git`

2. Enter the repository's directory

`cd dotfiles`

3. Init and update submodules:

`git submodule init && git submodule update`

4. (Optional) Rename directory to `.dotfiles`

`cd .. && mv dotfiles .dotfiles && cd .dotfiles`

5. Create symbolic links in the home directory:

`stow -t ~/ */`

6. Done!
