set -ex

export DIR_CT=~/code/github/threefoldfoundation
export CURDIR=$PWD

if [[ -d "books" ]] && [[ -d "content" ]] && [[ -d "docs" ]];then
    echo
else
    echo '**ERROR** please make sure you are in a books folder'
    exit 1
fi


ssh-add -l &>/dev/null
if [ "$?" == 0 ];
then
   echo " - ssh-agent is running, key loaded"
   # Do something knowing the pid exists, i.e. the process with $PID is running
else
    ssh-add -l
    echo "**ERROR** please make sure your ssh-key for github has been loaded in your ssh-agent"
    exit 1
fi

if ! [[ -d "${DIR_CT}/books" ]]; then 
    echo ' - books have not been checked out yet'
    pushd ${DIR_CT}
    git clone git@github.com:threefoldfoundation/books.git
    popd
fi

if ! [[ -d "${DIR_CT}/books" ]]; then 
    echo '**ERROR** Could not find & checkout: ${DIR_CT}/books'
    exit 1
else
    echo ' - books are already checked out'
fi

#check mdbooks installed
if ! [ -x "$(command -v cargo)" ]; then
    echo ' - rust is not installed, do install.'
    pushd /tmp
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    popd
fi

if ! [ -x "$(command -v mdbook)" ]; then
    echo ' - mdbooks is not installed, do install.'
    cargo install mdbook
    cargo install mdbook-mermaid
    #mdbook-mermaid install .
fi

function llink {
    #CHECK WE CAN FIND THE CONTENT DIR
    if ! [[ -d "../../threefoldfoundation/books/content/$NAME" ]]; then 
        echo '**ERROR** Could not find content section in repo of books'
        exit 1
    fi

    #LINK
    if ! [ -L $CURDIR/content/$NAME ];then
        echo ' - link to books does not exist yet or broken'
        rm -f $CURDIR/content/$NAME
        ln -s ../../../threefoldfoundation/books/content/$NAME $CURDIR/content/$NAME
    fi
}

#MAKE SURE WE HAVE ALL THE RIGHT LINKS
NAME='technology' && llink
NAME='mission' && llink