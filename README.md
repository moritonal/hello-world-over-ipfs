# hello-world-over-ipfs

You can most the details about this project on my blog [here](https://blog.bonner.is/docker-registry-for-ipfs/).

The steps required are as follows:

#### Start IPFS

```
docker run -d --name "ipfs" -p 4001:4001 -p 4004:4004 -p 8080:8080 ipfs/go-ipfs:latest
```

#### Start the Registry
```
docker run -d --name "registry" -p 127.0.0.1:5000:5000 -e REGISTRY_STORAGE_IPFS_ADDRESS=172.17.0.2:5001 moritonal/distribution-ipfs-client
```

#### Pull an image 
``` 
docker login --username test --password test123 127.0.0.1:5000
docker pull 127.0.0.1:5000/bonner.is/hello-world-over-ipfs
```

#### Run the image
```
docker run -it --rm -p 80:8080 127.0.0.1:5000/bonner.is/hello-world-over-ipfs
```

And you should see the output.