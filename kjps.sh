IFS=$'\n'

for i in $(jps | grep -i $1 | awk '{print $1;}')
do
        echo "Killing Java Process $i"
        kill -9 $i
done
