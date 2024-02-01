#!/bin/bash -e

# change these to your needs
name=x_ezrei
sshkey=~/.ssh/tetralith_id_ed25519

# could be changed if another local direcotry name is desired
mntpoint=/mnt/bolinc

# could be changed if another remote directory is desired
mntsrc=$name@tetralith.nsc.liu.se:/proj/bolinc/users/$name

# should not need edits further than here
if [[ -z $1 ]]; then
  echo "One argument required: mount or unmount"
  exit 1
fi

case "$1" in
mount)
  [ -d $mntpoint ] || sudo mkdir $mntpoint
  sudo sshfs -o allow_other,default_permissions,follow_symlinks,identityfile=$sshkey,uid=$(id -u),gid=$(id -g) $mntsrc $mntpoint
  ;;
unmount)
  sudo umount $mntpoint
  sudo rmdir $mntpoint
  ;;
esac
