# Module Checklist Containers with Docker
By TechWorld with Nana

## Video Overview
- ★ [01 - What is a Container?](#what-is-a-container)
- ★ [02 - Container vs Image](#container-vs-image)
- ★ [03 - Docker (Container) vs Virtual Machine](#docker-vs-virtual-machine)
- ★ [04 - Docker Architecture and its components](#docker-components)
- ★ [05 - Main Docker Commands](#main-docker-commands)
- ★ [06 - Debug Commands](#debug-commands)
- ★ [07 - Demo Project: Overview](#demo-project-overview)
- ★ [08 - Demo Project: Developing with Docker](#demo-project-developing-with-docker)
- ★ [09 - Demo Project: Docker Compose - Running multiple services](#demo-project-docker-compose-running-multiple-services)
- ★ [10 - Demo Project: Dockerfile - Building our own Docker Image](#demo-project-dockerfile-building-our-own-docker-image)
- ★ [11 - Demo Project: Private Docker Repository - Pushing our Docker Image into a private Registry on Nexus](#demo-project-private-docker-repository)
- ★ [12 - Demo Project: Deploying our containerized application](#demo-project-deploying-our-containerized-application)
- ★ [13 - Docker Volumes - Persist data in Docker](#docker-volumes-persist-data-in-docker)
- ★ [14 - Demo Project: Volumes - Configuring persistence for our application](#demo-project-volumes-configuring-persistence)
- ★ [15 - Demo Project: Run Nexus as Docker container](#demo-project-run-nexus-as-docker-container)
- ★ [16 - Docker Best Practices](#docker-best-practices)

---
<a id="what-is-a-container"></a>
## 01 - What is a Container?
- [x] Watched video

---
<a id="container-vs-image"></a>
## 02 - Container vs Image
- [x] Watched video
- [x] Installed Docker on your local machine
- [x] Demo executed - run two different Versions of Postgres Docker Images

### Useful Links:
- Docker Installation Guides for different OS: https://docs.docker.com/get-started/get-docker/
- Postgres Docker Images: https://hub.docker.com/_/postgres

---
<a id="docker-vs-virtual-machine"></a>
## 03 - Docker vs Virtual Machine
- [x] Watched video

---
<a id="docker-components"></a>
## 04 - Docker components
- [x] Watched video

---
<a id="main-docker-commands"></a>
## 05 - Main Docker Commands
- [x] Watched video
- [x] Demo executed
- [x] Pull Redis Docker Image `docker pull`
- [x] List existing Docker Images `docker images`
- [x] Run Container `docker run`
- [x] Run Container in a detached mode `docker run -d`
- [x] List running containers `docker ps`
- [x] Start container `docker start`
- [x] Stop container `docker stop`
- [x] List all containers - running and stopped ones `docker ps -a`
- [x] Bind port `docker run -p`

### Useful Links:
- Redis Docker Images: https://hub.docker.com/_/redis

---
<a id="debug-commands"></a>
## 06 - Debug Commands
- [x] Watched video
- [x] Demo executed
- [x] See logs of container `docker logs`
- [x] Get interactive terminal of running container for troubleshooting `docker exec -it`

---
<a id="demo-project-overview"></a>
## 07 - Demo Project: Overview
- [x] Watched video

---
<a id="demo-project-developing-with-docker"></a>
## 08 - Demo Project: Developing with Docker
- [x] Watched video
- [x] Demo executed
- [x] Git cloned example git project or created new one
- [x] Pulled mongodb image
- [x] Pulled mongo-express image
- [x] Created mongo-network
- [x] Started mongodb container with all necessary parameters
- [x] Started mongo-express container with all necessary parameters
- [x] Created new database via Mongo Express UI
- [x] Configured Nodejs application code to connect with database

### Useful Links:
- MongoDB Docker Image: https://hub.docker.com/_/mongo
- Mongo Express Docker Image: https://hub.docker.com/_/mongo-express

---
<a id="demo-project-docker-compose-running-multiple-services"></a>
## 09 - Demo Project: Docker Compose - Running multiple services
- [x] Watched video
- [x] Demo executed
- [x] Installed Docker Compose (should already be installed with Docker Desktop)
- [x] Created a docker-compose file to start mongodb and mongo express containers instead of using docker run
- [x] Created new database

### Useful Links:
- Docker Compose Installation Guides for different OS: https://docs.docker.com/compose/install/

---
<a id="demo-project-dockerfile-building-our-own-docker-image"></a>
## 10 - Demo Project: Dockerfile - Building our own Docker Image
- [x] Watched video
- [x] Demo executed
- [x] Created Dockerfile for our Node application (the name of the file MUST be Dockerfile!)
- [x] Built Docker Image from our Dockerfile and tag it
- [x] Started newly created Docker Image

---
<a id="demo-project-private-docker-repository"></a>
## 11 - Demo Project: Private Docker Repository - Push/Pull to Nexus Repository
- [x] Watched video
- [x] Demo executed
- [x] Created a Docker Repository on Nexus
- [x] Created a User Role for Docker Repository on Nexus
- [x] Configured Repository Connector (port 8083)
- [x] Configured Firewall Rule to open port 8083 on Droplet
- [x] Configured Token Issuing on Nexus (Realm - activate Docker Bearer Token Realm)
- [x] Configured insecure registries for Nexus IP and Port in Docker Desktop (Docker Engine Tab)
- [x] Logged in to Nexus Docker Repo (docker login)
- [x] Pushed Docker Image to Nexus Repo
- [x] Fetched Docker Image from Nexus Repo

---
<a id="demo-project-deploying-our-containerized-application"></a>
## 12 - Demo Project: Deploying our containerized application
- [x] Watched video
- [x] Demo executed
- [x] Added our example application to Docker compose file
- [x] Changed mongodb server url from localhost to mongodb service name in Node Code
- [x] Started docker containers with docker-compose

---
<a id="docker-volumes-persist-data-in-docker"></a>
## 13 - Docker Volumes - Persist data in Docker
- [ ] Watched video

<a id="demo-project-volumes-configuring-persistence"></a>
## 14 - Demo Project: Volumes - Configuring persistence for our application
- [ ] Watched video
- [ ] Demo executed - defined a Named Volume in Docker Compose File

---
<a id="demo-project-run-nexus-as-docker-container"></a>
## 15 - Demo: Project Run Nexus as Docker Container on DigitalOcean Droplet
- [ ] Watched video
- [ ] Demo executed
- [ ] Created a new Droplet
- [ ] Attached Droplet to existing Firewall
- [ ] Installed Docker on Droplet
- [ ] Created docker volume to persist Nexus data
- [ ] Ran Nexus as Docker container with necessary parameters
- [ ] Accessed Nexus in browser

### Useful Links:
- Nexus Docker Image: https://hub.docker.com/r/sonatype/nexus3

---
<a id="docker-best-practices"></a>
## 16 - Official Resources
- Best practices for writing Dockerfiles: https://docs.docker.com/build/building/best-practices/
- Docker development best practices: https://docs.docker.com/develop/dev-best-practices/
- Tips for Caching, reducing Image size, maintainability, reproducibility: https://www.docker.com/blog/intro-guide-to-dockerfile-best-practices/
- Tip: Enforce Dockerfile best practices automatically by using a static code analysis tool (e.g. https://github.com/hadolint/hadolint )

