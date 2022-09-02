set -e

bash env.sh

##WALK OVER THE BOOKS
for d in books/*/ ; do
    pushd $d
    bash run.sh
    popd
done


echo "****DONE****"
