
REPO_PATH="`dirname "$(dirname "$(readlink -f $0)")"`"

for dir in $REPO_PATH/home/*/ $REPO_PATH/home/.*/
do
	echo Linking: $dir
	ln -s $dir ~
done
