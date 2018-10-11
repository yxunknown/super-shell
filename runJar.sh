# run a jar file in docker 
# to use this shell
# you need to provide the path and name of jar
# then you should provide the port that the jar app would use
# finally, you can provide your favorite jdk image to this shell
# jar path = $1
# jar name = $2
# port = $3
# image name = $4
echo "docker run -d -p $3:$3 --name $2 -v $1:/home/$2 $4 java -jar /home/$2"
docker run -d -p $3 --name $2 -v $1:/home/$2 $4 java -jar /home/$2