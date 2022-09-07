set -e

bash env.sh

bash run.sh

git add . -A && git commit -m "update."; git push

echo "****DONE****"
