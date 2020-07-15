docker run -it -d -p 8887:8888 --runtime=nvidia -e NVIDIA_VISIBLE_DEVICES=0 --name=tf-1 -v /home/kunalgoyal.goyal9:/home/kunalgoyal.goyal9 --network=host tf-1
