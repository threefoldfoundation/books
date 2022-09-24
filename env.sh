set -ex

export DIR_CODE=~/code/github
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


#check mdbooks installed
if ! [ -x "$(command -v cargo)" ]; then
    echo ' - rust is not installed, do install.'
    pushd /tmp
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    popd
    export PATH=~/.cargo/bin:$PATH
fi

if ! [ -x "$(command -v mdbook)" ]; then
    echo ' - mdbooks is not installed, do install.'
    cargo install mdbook
    cargo install mdbook-mermaid
    #mdbook-mermaid install .
fi

if ! [ -x "$(command -v mdbook-mermaid)" ]; then
    echo ' - mdbooks-mermaid is not installed, do install.'
    cargo install mdbook-mermaid
    #mdbook-mermaid install .
fi


function template {

    if ! [ ${#DEST} -ge 3 ];then 
        echo "DEST is not right length '$DEST'"
        exit 1
    fi

    if ! [[ -d "template" ]]; then 
        if ! [[ -d "${DIR_CODE}/threefoldfoundation/books" ]]; then 
            echo ' - books have not been checked out yet'
            pushd ${DIR_CODE}/threefoldfoundation
            git clone git@github.com:threefoldfoundation/books.git
            popd
        fi
        TEMPLATEDIR="${DIR_CODE}/threefoldfoundation/books/template"
    else
        TEMPLATEDIR="template"
    fi
    if ! [[ -d "$TEMPLATEDIR" ]]; then 
        echo '**ERROR** Could not find templatedir on $TEMPLATEDIR'
        exit 1
    fi

    rm -rf ${DEST}book

    if ! [ -f ${DEST}book.toml ]; then 
        echo cp $TEMPLATEDIR/books/template/book.toml $DEST
        exit 1
    fi
    if ! [ -f "${DEST}env.sh" ]; then 
        cp $TEMPLATEDIR/books/template/env.sh $DEST
    fi
    if ! [ -f "${DEST}src/SUMMARY.md" ]; then 
        cp $TEMPLATEDIR/books/template/src/SUMMARY.md ${DEST}src/SUMMARY.md
    fi
        
    cp $TEMPLATEDIR/books/template/develop.sh $DEST
    cp $TEMPLATEDIR/books/template/run.sh $DEST/run.sh 
    cp $TEMPLATEDIR/books/template/mermaid-init.js $DEST
    cp $TEMPLATEDIR/books/template/mermaid.min.js $DEST
    rsync -rav --delete $TEMPLATEDIR/theme/ ${DEST}theme/

}

function llink {
    export DIR_ACCOUNT="${DIR_CODE}/${ACCOUNT}"
    export DIR_REPO="${DIR_CODE}/${ACCOUNT}/${REPO}"
    if ! [[ -d "${DIR_REPO}" ]]; then 
        echo ' - books have not been checked out yet'
        mkdir -p ${DIR_ACCOUNT}
        pushd ${DIR_ACCOUNT}
        git clone git@github.com:${ACCOUNT}/${REPO}.git
        popd
    fi

    if ! [[ -d "${DIR_REPO}" ]]; then 
        echo '**ERROR** Could not find & checkout: ${DIR_REPO}'
        exit 1
    else
        echo ' - books are already checked out'
    fi

    #CHECK WE CAN FIND THE CONTENT DIR
    CONTENTDIR="${ACCOUNT}/${REPO}/content/$NAME"
    if ! [[ -d "../../$CONTENTDIR" ]]; then 
        echo '**ERROR** Could not find content section in repo of books ${CONTENTDIR}'
        exit 1
    fi

    #LINK
    if ! [ -L $CURDIR/content/$NAME ];then
        echo ' - link to books does not exist yet or broken'
        rm -f $CURDIR/content/$NAME
        ln -s "../../../${CONTENTDIR}" $CURDIR/content/$NAME
    fi
}

function update_git {
    export DIR_ACCOUNT="${DIR_CODE}/${ACCOUNT}"
    export DIR_REPO="${DIR_CODE}/${ACCOUNT}/${REPO}"

    if ! [[ -d "${DIR_REPO}" ]]; then 
        echo '**ERROR** Could not find & checkout: ${DIR_REPO}'
        exit 1
    fi
    git pull
}


#MAKE SURE WE HAVE ALL THE RIGHT LINKS
# REPO='threefoldfoundation/books' && NAME='technology' && llink
# REPO='threefoldfoundation/books' && NAME='mission' && llink
# ACCOUNT='ourworld-tsc' && REPO='ourworld_books' && NAME='abundance_internet' && llink
# ACCOUNT='ourworld-tsc' && REPO='ourworld_books' && NAME='feasibility_study' && llink
# ACCOUNT='ourworld-tsc' && REPO='ourworld_books' && NAME='matrix_already' && llink
# ACCOUNT='ourworld-tsc' && REPO='ourworld_books' && NAME='ow_experiences' && llink


