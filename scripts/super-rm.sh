#/usr/bin/bash

# Remove files that have funky characters in their name
# Such as '~' (goddamnit windows)

inode=$(ls -il | grep $1 | cut -d' ' -f2); 
find . -maxdepth 1 -inum $inode -exec rm -i {} \;

