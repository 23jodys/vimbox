include:
  - system
vim_repo:
  pkgrepo.managed:
    - ppa: jonathonf/vim
    - require_in: 
      - pkg: vim

vim:
  pkg.latest:
    - refresh: True

fzf_repo:
  pkgrepo.managed:
    - ppa: fmarier/ppa 
    - reqire_in:
      - pkg: fzf

fzf:
  pkg.installed: []

silversearcher-ag:
  pkg.installed: []

https://github.com/23jodys/vim-dot-files.git:
  git.latest:
    - target: /home/jodys/.vim
    - require:
      - user: jodys
    - user: jodys
    - force_reset: True  
    - submodules: True

git clean -ffdx:
  cmd.run:
    - cwd: /home/jodys/.vim/

/home/jodys/.vim/swap:
  file.directory:
    - user: jodys
       
/home/jodys/.vimrc:
  file.symlink:
    - target: /home/jodys/.vim/.vimrc

# vim: ft=yaml sw=2 ts=2 sts=2 tw=125
