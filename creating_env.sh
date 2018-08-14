#!/bin/bash
cont_count=$1
echo "creating $cont_count containers"
sleep 2;
for i in "seq$cont_count"
do
	echo "========="
	echo "creating www.tom $i container..."
	sleep 1
docker run --name www.tom$i -d -it --rm rajasekhar4512/raja-img /bin/bash
echo "www.tom $i container has been created"
done
