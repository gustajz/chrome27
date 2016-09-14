# chrome27

Container with Chrome browser on specific version 27.0.1453.110-202711.

## Build
```
    docker build -t gustajz/chrome27 .
```

## Run
For execute you must have an running X server.
If you use Windows, I recommend [Xming](http://www.straightrunning.com/XmingNotes/)

```
    docker run -it --rm=true --name chrome -e DISPLAY=<MyDesktopIPAddress>:0.0 --net host --privileged -v /dev/shm:/dev/shm gustajz/chrome27
```    
