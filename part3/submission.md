# Part 3 Submission
All commands are ran from the exercise specific folder. project file is copied multiple time to not include multiple exercises in a single file
### 3.1

 - original frontend and backend copied from 1.10 and 1.11

 - before frontend: 1.15GB
 - after frontend: 565MB
 - before backend: 961MB
 - after backend: 367MB
 - Biggest change: "FROM node:14" to "FROM ubuntu:16.04" in backend and frontend
 - all "RUN" into single line, though it required app folder creation beforehand
 - run starts by gettung curl and npm then building the app
 - frontend seems to still have some room for improvement?
 - but because backend is within expected range with same steps no further action was taken

### 3.2
skipped

### 3.3
in the folder. Instuction in its README.md

### 3.4

in the folder

### 3.5

dockerfiles and project copied from 3.1

 - before frontend: 565MB
 - after frontend: 334MB
 - before backend: 367MB
 - after backend: 132MB
 - Biggest change: "FROM ubuntu:16.04" to "FROM node:14-alpine" in backend and frontend
 - since environment is basically set then workdir was set at beginning
 - deleted some dev-dependencies
 - with the exception of multi-stage build (next exercise). i am not sure how to get this smaller in frontend.
 - backend size ended up being smaller than expected :)

### 3.6

in the folder

### 3.7

src copied from 1.15
some scripts are broken. code is also hardcoded to port 8080 due to deadline issues back in the day.
working example: ./sendMessage.sh 1 kotimato
NOTE: it's self repairing app that brings up workers as they are killed -> might need force removal "docker container rm -f \<id\>"
in the folder

### 3.8

in the file 3.8.png

