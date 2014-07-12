#
# NodeJS
#

export LGROUP="staff"
export TMP_DIR="/Temporary"
export DESTINATION_DIR="/opt"

cd $TMP_DIR
git clone https://github.com/joyent/node.git node/

sudo mv node/ $DESTINATION_DIR
