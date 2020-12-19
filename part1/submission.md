# Part 1 Submission
All commands are ran either from part1 folder or exercise specific folder. (Can't remember which one with the case of directories)

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
```
docker build -t oneten .
docker run -d -p 5000:5000 --name ten oneten
```

### 1.11

Dockerfile is in the folder named 1.11.
Create file "lelogs.txt" on host machine first or docker will create a folder which will result in an error due to file mismatch.
```
docker build -t oneeleven .
docker run -d -v $(pwd)/lelogs.txt:/backend/logs.txt -p 8000:8000 --name eleven oneeleven
```

### 1.12
- added environment variables to dockerfiles of 11 & 12
- changed ```docker run``` params
```
#backend
docker run --network host --rm -d -v $(pwd)/lelogs.txt:/backend/logs.txt -p 8000:8000 --name eleven oneeleven
```
```
#frontend
docker run --network host --rm -d -p 5000:5000 --name ten oneten
```

### 1.13
build and run with the following two commands
build: ```docker build -t spring .```
run: ```docker run -it -p 8080:8080 --name sp3 spring```

### 1.14
build and run with the following two commands\
build: ```docker build -t rub .```\
run: ```docker run -it -p 8080:8080 --name rub rub```

### 1.15
build, run and post example for reversing a letter order of text\
build: ```docker build -t nod .```\
run: ```docker run -it -p 8080:8080 --name nod nod```\
some scripts are broken. code is also hardcoded to port 8080 due to deadline issues back in the day.
working example: ./sendMessage.sh 1 kotimato \
NOTE: it's self repairing app that brings up workers as they are killed -> might need force removal "docker container rm -f \<id\>"

### 1.16
skipped

### 1.17

linux 16.04 as base\
added node and react, by default my fac terminal is bash and it is already included in the linux destro\
build: ```docker build -t development .```\
run: ```docker run -it -p 3000:3000 --name dev development```\
node version verification run next: ```node -v```\
create a react app: 
```
npx create-react-app my-app
cd my-app
npm start 
```


## Self cheat sheet
1.5 for multiline cmd
-p -v host_machine:container
entrypoint when hardcoding flags makes life easy

