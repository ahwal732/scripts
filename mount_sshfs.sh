#!/bin/bash
# Copyright (c) 2012 Benjamin Beurdouche. All rights reserved.
#

export PORT="22"
export USER="user"
export SERVER="server"
export REMOTE_PATH="/" 
export MOUNT_POINT="/mnt/mount_dir"

mkdir $MOUNT_POINT
sshfs -o idmap=user -p $PORT $USER@$SERVER:$REMOTE_PATH $MOUNT_POINT
