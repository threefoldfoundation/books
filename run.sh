set -e

bash env.sh

##WALK OVER THE BOOKS
for d in books/*/ ; do
    pushd $d
    if [[ -f "run.sh" ]];then
        bash run.sh
    fi
    popd
done


echo "****DONE****"
