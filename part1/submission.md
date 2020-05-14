# Part 1 Submission

### 1.1

Output of ``` docker ps -a``` is
``` 
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS                      PORTS               NAMES
0bebacd54c68        nginx               "nginx -g 'daemon of…"   2 minutes ago       Exited (0) 11 seconds ago                       eager_montalcini
9ee0005ab160        nginx               "nginx -g 'daemon of…"   2 minutes ago       Exited (0) 11 seconds ago                       eloquent_chandrasekhar
238fd5bda311        nginx               "nginx -g 'daemon of…"   2 minutes ago       Up 2 minutes                80/tcp              eager_kirch
c17349bf1f70        nginx               "-d"                     4 minutes ago       Created                     80/tcp              serene_wozniak
62c1b3b946cf        nginx               "-d"                     4 minutes ago       Created                     80/tcp              vigorous_chandrasekhar
00a22bded24c        nginx               "-d -n one"              5 minutes ago       Created                     80/tcp              gifted_pare
33b11b416062        hello-world         "/hello"                 41 minutes ago      Exited (0) 41 minutes ago                       recursing_rubin
c562d180a859        hello-world         "/hello"                 45 minutes ago      Exited (0) 45 minutes ago                       musing_rosalind
```

### 1.2

Output of ``` docker ps -a``` is
```
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES

```
Output of ``` docker images``` is
```
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE

```

### 1.3

Secret message is: "This is the secret message"

### 1.4

Secret message is: "Docker is easy"

### 1.5

With some error messages (due to being a root? well no sudo recognized at least) it still managed to install curl
```
docker run -it ubuntu:16.04 apt update; apt upgrade; apt install curl; echo 'Input website'; read website; echo 'Searching..'; sleep 1; curl $website;

```

### 1.6

Dockerfile is in the folder named 1.6. From the folder ran these:
```
docker build -t docker-clock .
docker run -it docker-clock
```

### 1.7

Dockerfile and the script is in the folder named 1.7. From the folder ran these:
```
docker build -t curler .
docker run -it curler
helsinki.fi
```

### 1.8

logfile is 1.8_logs.txt. Command from part1 folder:
```
docker run -v $(pwd)/1.8_logs.txt:/usr/app/logs.txt devopsdockeruh/first_volume_exercise
```

### 1.9

Host machine port:4444
```
docker run -p 4444:80 devopsdockeruh/ports_exercise

```

### 1.10

Dockerfile is in the folder named 1.10

## Self cheat sheet
1.5 for multiline cmd
-p -v host_machine:container
entrypoint when hardcoding flags makes life easy

