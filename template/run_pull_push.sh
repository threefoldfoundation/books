set -e

bash env.sh

pushd $DIR_CT/books
git pull
popd

##WALK OVER THE BOOKS
for d in books/*/ ; do
    pushd $d
    bash run.sh
    popd
done

git add . -A && git commit -m "update."; git push

echo "****DONE****"
