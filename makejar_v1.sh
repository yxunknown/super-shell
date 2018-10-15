# use maven to build a jar from maven project
# you need to provide project path to this shell
# by hercats <hercats@qq.com>
# path = $1
# name = $2
cd $1
echo "enter $1"
echo "run mvn install"
mvn install
if test $? -ne 0
then 
	echo "build jar failed"
else 
	echo "build jar success."
	echo "upload to server (yes/no)?"
	read answer
	if test $answer = 'yes'
	then
		echo "starting upload"
		~/app/sh/ascp.sh $1/target/$2-0.0.1-SNAPSHOT.jar "~/java/$2.jar"
	fi
fi
