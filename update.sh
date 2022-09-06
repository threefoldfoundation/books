set -ex

source env.sh

ACCOUNT='threefoldfoundation' && REPO='books' && update_git
ACCOUNT='ourworld-tsc' && REPO='ourworld_books' && update_git

echo "****DONE****"
