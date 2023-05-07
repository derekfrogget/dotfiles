# dotfiles

### Usage:

1. Clone the repo:

`git clone https://github.com/derekfrogget/dotfiles.git`

2. Clone submodules:

`git submodule update --recursive --remote`

3. (Optional) Rename repository with a `.` to mark it hidden

`mv dotfiles/ .dotfiles/`

4. Enter the repository's directory

`cd .dotfiles`

5. Create symbolic links in the home directory:

`stow -t ~/ */`

6. Done!
