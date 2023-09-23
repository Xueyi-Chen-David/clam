# docker build -t ubuntu16 . --no-cache  # only do once
docker run -it --name ubuntu16 -d ubuntu16  /bin/bash
for file in file/*.c; do docker cp $file ubuntu16:/app; done # copy all file under file folder to container
docker exec ubuntu16 make
docker cp ubuntu16:/app/out .
docker stop ubuntu16
docker rm ubuntu16