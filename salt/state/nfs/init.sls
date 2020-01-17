include:
  - system

nfs-common:
  pkg.installed: []

/helluin/homes:
  mount.mounted:
    - mkmnt: True
    - device: 10.0.18.18:/volume2/homes
    - fstype: nfs
    - require: 
      - pkg: nfs-common

/home/jodys/Drive:
  file.symlink:
    - target: /helluin/homes/jodys/Drive/Drive/
    - require:
      - user: jodys

