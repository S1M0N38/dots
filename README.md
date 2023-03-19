These are **my** dotfiles, configurations, and installed programs for 
a Linux server over which I have limited control.

## :computer: Specifications

- **OS**: Linux 5.4.0-135-generic x86_64 - Ubuntu 20.04.4 LTS
---

## :arrow_down: Installation

1. Add to your public ssh key to the server with 
   ```bash
   ssh-copy-id [USER]@[HOST]
   ```

2. Clone this repo in `$HOME` with
   ```bash
   git clone https://github.com/S1M0N38/dots.git ~/dots
   ```
   
3. Enter dots and switch to dinozord branch
   ```bash
   cd ~/dots && git checkout dinozord
   ```
   
4. Install dots file by soft linking
   ```bash
   ln -f -s ~/dots/bashrc ~/.bashrc && \
   ln -f -s ~/dots/config/git ~/.config/git && \
   ln -f -s ~/dots/config/vim ~/.config/vim
   ```
---

## :technologist: Applications

Here is a list of preinstalled applications that I use to interact with
the server:

- [Tmux](https://github.com/tmux/tmux): a terminal multiplexer
- [Vim](https://github.com/vim/vim): a modal text editor
- [Htop](https://github.com/htop-dev/htop): an interactive process viewer
- [Conda](https://docs.conda.io/en/latest/miniconda.html):
  package/environment management system for Python
