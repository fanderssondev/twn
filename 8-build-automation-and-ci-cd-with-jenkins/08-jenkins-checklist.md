# Module Checklist Build Automation & CI/CD with Jenkins
By TechWorld with Nana

## Video Overview
- ★ [01 - Introduction to Build Automation](#introduction-to-build-automation)
- ★ [02 - Install Jenkins](#install-jenkins)
- ★ [03 - Jenkins UI Tour](#jenkins-ui-tour)
- ★ [04 - Install Build Tools](#install-build-tools)
- ★ [05 - Jenkins Basics Demo](#jenkins-basics-demo)
- ★ [06 - Docker in Jenkins](#docker-in-jenkins)
- ★ [07 - Freestyle to Pipeline Job](#freestyle-to-pipeline-job)
- ★ [08 - Introduction to Pipeline Job](#introduction-to-pipeline-job)
- ★ [09 - Jenkinsfile Syntax](#jenkinsfile-syntax)
- ★ [10 - Create full Pipeline](#create-full-pipeline)
- ★ [11 - Introduction to Multibranch Job](#introduction-to-multibranch-job)
- ★ [12 - Wrap Up Jenkins Job](#wrap-up-jenkins-jobs)
- ★ [13 - Credentials in Jenkins](#credentials-in-jenkins)
- ★ [14 - Jenkins Shared Library](#jenkins-shared-library)
- ★ [15 - Trigger Jenkins Job - Webhook](#trigger-jenkins-jobs-webhooks)
- ★ [16 - Versioning your application - Part 1](#versioning-your-application-part-1)
- ★ [17 - Versioning your application - Part 2](#versioning-your-application-part-2)

---
<a id="introduction-to-build-automation"></a>
## 01 - Introduction to Build Automation
- [x] Watched video

---
<a id="install-jenkins"></a>
## 02 - Install Jenkins
- [x] Watched video
- [x] **Demo executed**
  - [x] Created a Server (Droplet) on DigitalOcean
  - [x] Configured Firewall Rules to open port 22 and port 8080 for our new server
  - [x] Installed Docker on DigitalOcean Droplet
  - [x] Started Jenkins Docker container with named volume
  - [x] Initialized Jenkins

### Useful Links:
- Jenkins Docker Image: https://hub.docker.com/r/jenkins/jenkins

### Useful Commands:
```bash
docker run -p 8080:8080 -p 50000:50000 -d -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts
docker volume inspect jenkins_home

# print the initialisation password
cat /var/snap/docker/common/var-lib-docker/volumes/jenkins_home/_data/secrets/initialAdminPassword
```

---
<a id="jenkins-ui-tour"></a>
## 03 - Jenkins UI Tour
- [x] Watched video

---
<a id="install-build-tools"></a>
## 04 - Install Build Tools
- [x] Watched video
- [x] **Demo executed**
  - [x] Configured Plugin for Maven
  - [x] Installed npm and node in Jenkins container

### Useful Links:
- Node Installation for Linux distributions: https://github.com/nodesource/distributions
- Jenkins Plugins: https://plugins.jenkins.io/

### Useful Commands:
```bash
# enter container as root
docker exec -u 0 -it a3f305b0b63f bash

# check with Linux distro container is running
cat /etc/issue

apt update
apt install curl

curl -sL https://deb.nodesource.com/setup_20.x -o nodesource_setup.sh
bash nodesource_setup.sh
apt install nodejs

node -v
npm -v
```

---
<a id="jenkins-basics-demo"></a>
## 05 - Jenkins Basics Demo
- [x] Watched video
- [x] **Demo executed - create a simple Freestyle Job**
  - [x] Configured Git Repository to checkout the code from
  - [x] Configured Job to run tests and build Java Application

---
<a id="docker-in-jenkins"></a>
## 06 - Docker in Jenkins
- [x] Watched video
- [x] **Demo executed - push Image to DockerHub Repository**
  - [x] Made Docker available in Jenkins container (mount docker runtime inside container as a volume)
  - [x] Fixed permissions on docker.sock
  - [x] Configured Job to build Docker Image
  - [x] Configured Job to push Image to DockerHub
    - [x] Prerequisite: Account on DockerHub
    - [x] Created a repository on DockerHub
    - [x] Created Credentials for DockerHub in Jenkins UI
    - [x] Tag Docker Image with your DockerHub repository, login and push to repository
- [x] **Demo executed - push Image to Nexus Repository**
  - [x] Configured "insecure-registries" on Droplet server (daemon.json file)
  - [x] Fixed permission for docker.sock again after restart of Jenkins container
  - [x] Created Credentials for Nexus in Jenkins UI
  - [x] Tag Docker Image with your Nexus host and repository, login and push to repository

### Useful Commands:
```bash
# create jenkins container with mounted docker
docker run -p 8080:8080 -p 50000:50000 -d -v jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock

# enter as root and complete docker installation
docker exec -u 0 -it 0c73a1692b75 bash
curl https://get.docker.com/ > dockerinstall && chmod 777 dockerinstall && ./dockerinstall

# modify docker socket file permissions
chmod 666 /var/run/docker.sock

# edit or create /etc/docker/daemon.json ON THE HOST
vim /etc/docker/daemon.json
{
  "insecure-registries" : ["167.99.248.163:8083"]
}

# restart docker
systemctl restart docker

# start container again
docker start 0c73a1692b75

# enter as root and modify docker.sock permission
docker exec -u 0 -it 0c73a1692b75 bash
chmod 666 /var/run/docker.sock
```

---
<a id="freestyle-to-pipeline-job"></a>
## 07 - Freestyle to Pipeline Job
- [x] Watched video

---
<a id="introduction-to-pipeline-job"></a>
## 08 - Introduction to Pipeline Job
- [x] Watched video
- [x] **Demo executed - create a basic Pipeline Job**
  - [x] Configured Git Repository
  - [x] Created a valid Jenkinsfile with required field

---
<a id="jenkinsfile-syntax"></a>
## 09 - Jenkinsfile Syntax
- [ ] Watched video
- [ ] **Demo executed**
  - [ ] Used Post attribute
  - [ ] Defined a Condition
  - [ ] Used an environment variable
  - [ ] Used Tools Attribute
  - [ ] Used a Parameter
  - [ ] Used an external Groovy Script
  - [ ] Used an Input Parameter

### Useful Links:
- List available environment variables: `<your-ip-of-jenkins>:8080//env-vars.html`

---
<a id="create-full-pipeline"></a>
## 10 - Create full Pipeline
- [ ] Watched video
- [ ] **Demo executed - create a full Pipeline Job**
  - [ ] Build Jar
  - [ ] Build Docker Image
  - [ ] Push to private Repository DockerHub

---
<a id="introduction-to-multibranch-job"></a>
## 11 - Introduction to Multibranch Job
- [ ] Watched video
- [ ] **Demo executed**
  - [ ] Added branch based logic in Jenkinsfile

---
<a id="wrap-up-jenkins-jobs"></a>
## 12 - Wrap Up Jenkins Jobs
- [ ] Watched video

---
<a id="credentials-in-jenkins"></a>
## 13 - Credentials in Jenkins
- [ ] Watched video

---
<a id="jenkins-shared-library"></a>
## 14 - Jenkins Shared Library
- [ ] Watched video
- [ ] **Demo executed**
  - [ ] Created Shared Library Project/Repository
  - [ ] Made Shared Library globally available in Jenkins
  - [ ] Used Shared Library in Jenkinsfile
  - [ ] Used Parameters in Shared Library
  - [ ] Extracted logic into Groovy Classes
  - [ ] Define Shared Library in Jenkinsfile directly (project scoped)

---
<a id="trigger-jenkins-jobs-webhooks"></a>
## 15 - Trigger Jenkins Jobs - Webhooks
- [ ] Watched video
- [ ] **Demo executed**

---
<a id="versioning-your-application-part-1"></a>
## 16 - Versioning your application - Part I
- [ ] Watched video
- [ ] **Demo executed: Increment version locally with maven build tool**
- [ ] **Demo executed: Increment version in Jenkins Pipeline**
  - [ ] Configured Jenkinsfile to increment version
  - [ ] Adjusted Dockerfile file
  - [ ] Executed Jenkins Pipeline

### Useful Links:
- Maven Build-Helper Plugin: https://www.mojohaus.org/build-helper-maven-plugin/parse-version-mojo.html

---
<a id="versioning-your-application-part-2"></a>
## 17 - Versioning your application - Part II
- [ ] Watched video
- [ ] **Demo executed: Commit version upgrade from Jenkins to Git**
- [ ] **Demo executed: Ignore Jenkins Commit from Triggering Pipeline**
