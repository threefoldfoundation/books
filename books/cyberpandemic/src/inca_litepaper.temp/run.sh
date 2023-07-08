set -e

## IS A GOOD TRICK SO WE CAN RUN IT FROM ANY DIR AND WE CHECK ON LENGTH NAME
SCRIPT_PATH="${BASH_SOURCE[0]:-$0}";
DIR_PATH="$(dirname $SCRIPT_PATH)"
pushd $DIR_PATH
source env.sh
if ! [ ${#NAME} -ge 3 ];then 
    echo "NAME is not right length '$NAME'"
    exit 1
fi

rm -rf book
pushd src
git add * -f 
popd
mdbook build
rsync -rav --delete book/ ../../docs/$NAME/
rsync -rav --delete book/ ~/Documents/tfbooks/output/$NAME/
rm -rf book

