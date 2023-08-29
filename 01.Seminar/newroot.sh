#!/bin/bash
rm -rf newroot
mkdir -p newroot/lib/x86_64-linux-gnu
mkdir newroot/bin
mkdir newroot/lib64
cp /lib/x86_64-linux-gnu/libtinfo.so.6 newroot/lib/x86_64-linux-gnu/
cp /lib/x86_64-linux-gnu/libdl.so.2 newroot/lib/x86_64-linux-gnu/
cp /lib/x86_64-linux-gnu/libc.so.6 newroot/lib/x86_64-linux-gnu/
cp /lib64/ld-linux-x86-64.so.2 newroot/lib64/
cp /lib/x86_64-linux-gnu/libselinux.so.1 newroot/lib/x86_64-linux-gnu/
cp /lib/x86_64-linux-gnu/libc.so.6 newroot/lib/x86_64-linux-gnu/
cp /lib/x86_64-linux-gnu/libpcre2-8.so.0 newroot/lib/x86_64-linux-gnu/
cp /lib/x86_64-linux-gnu/libdl.so.2 newroot/lib/x86_64-linux-gnu/
cp /lib/x86_64-linux-gnu/libpthread.so.0 newroot/lib/x86_64-linux-gnu/
cp /bin/bash newroot/bin/
cp /bin/ls newroot/bin  
sudo chroot newroot /bin/bash


