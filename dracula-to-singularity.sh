#!/bin/sh
# Simple script to convert the Dracula color scheme to Singularity, a clone of doom-one.

if [ -f $1 ]; then
    :
else
    echo "invalid file"
    exit 1
fi

# bg
sed -i 's/282a36/282c34/g' $1

# fg
sed -i 's/f8f8f2/bbc2cf/g' $1

# red
sed -i 's/ff5555/ff6c6b/g' $1 # normal
sed -i 's/ff6e67/ff6c6b/g' $1 # bright
sed -i 's/ff2222/ff6c6b/g' $1 # dim

# green
sed -i 's/50fa7b/98be65/g' $1 # normal
sed -i 's/5af78e/98be65/g' $1 # bright
sed -i 's/1ef956/98be65/g' $1 # dim

# yellow
sed -i 's/f1fa8c/ecbe7b/g' $1 # normal
sed -i 's/f4f99d/ecbe7b/g' $1 # bright
sed -i 's/ebf85b/ecbe7b/g' $1 # dim

# blue
sed -i 's/bd93f9/51afef/g' $1 # normal
sed -i 's/caa9fa/51afef/g' $1 # bright
sed -i 's/4d5b86/51afef/g' $1 # dim

# magenta
sed -i 's/ff79c6/c678dd/g' $1 # normal
sed -i 's/ff92d0/c678dd/g' $1 # bright
sed -i 's/ff46b0/c678dd/g' $1 # dim

# cyan
sed -i 's/8be9fd/46d9ff/g' $1 # normal
sed -i 's/9aedfe/46d9ff/g' $1 # bright
sed -i 's/59dffc/46d9ff/g' $1 # dim

# white
sed -i 's/bfbfbf/dfdfdf/g' $1 # normal
sed -i 's/e6e6e6/9ca0a4/g' $1 # bright
sed -i 's/e6e6d1/5b6268/g' $1 # dim

# black
sed -i 's/1b2229/1b2229/g' $1 # normal
sed -i 's/4d4d4d/3f444a/g' $1 # bright
sed -i 's/14151b/1c1f24/g' $1 # dim
