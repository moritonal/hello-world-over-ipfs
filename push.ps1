docker rm hello-world-over-ipfs
docker build -t hello-world-over-ipfs .
docker tag hello-world-over-ipfs 127.0.0.1:35432/bonner.is/hello-world-over-ipfs
docker login 127.0.0.1:35432 --username "test" --password "test123"
docker push 127.0.0.1:35432/bonner.is/hello-world-over-ipfs
