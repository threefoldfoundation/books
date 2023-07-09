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

mdbook serve . -p 8884 --open

popd