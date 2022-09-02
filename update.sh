set -e

bash env.sh

##WALK OVER THE BOOKS
for d in books/*/ ; do
    pushd $d
    dest=$d && template 
    popd
done


echo "****DONE****"
