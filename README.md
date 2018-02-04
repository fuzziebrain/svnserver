# Docker Image for SVN Server
To build and/or customize the image:
```bash
$ git clone https://github.com/fuzziebrain/svnserver.git
$ cd svnserver
# Update ENV variables in the Dockerfile to customize default username, password and/or repository name, then
$ docker build -t svnserver .
```

To run a container:
```bash
# Update the external port number if necessary.
$ docker run -d -p 8080:80 svnserver

# OR to grab the latest build from Docker Hub:
$ docker run -d -p 8080:80 fuzziebrain/svnserver
```

To create a new repository:
```bash
# Get the container ID or name.
$ docker ps
$ docker exec -it <CONTAINER ID or NAME> /var/svn/scripts/createRepo.sh anotherproject
```