## downloads a repo then builds the image in it and publishes the image to dockerhub
- use with bash

- requires git to be installed and logged in on docker in the terminal

- 1st param is repository url that will be used in git clone
- 2nd param is the name of the repo. the name will also be the name of the image and dockerhub repo.
- 3rd param is given tag for the published image
- 4th param is the username that you are logged in on docker

Example usage: ```./DockerHubPublisher.sh git@github.com/examokeUser/exampleRepo a-tag username```
