# Module Checklist Artifact Repository Manager
By TechWorld with Nana

## Video Overview
- ★ [Introduction to Artifact Repository Manager](#introduction-to-artifact-repository-manager)
- ★ [Install and Run Nexus on Droplet](#install-and-run-nexus-on-droplet)
- ★ [Nexus UI Tour](#nexus-ui-tour)
- ★ [Repository Types](#repository-types)
- ★ [Publish Artifact to Nexus](#publish-artifact-to-nexus)
- ★ [Nexus API](#nexus-api)
- ★ [Blob Store](#blob-store)
- ★ [Component vs Asset](#component-vs-asset)
- ★ [Cleanup Policies](#cleanup-policies)

<a id="introduction-to-artifact-repository-manager"></a>
## Introduction to Artifact Repository Manager
- [ ] Watched video

---
<a id="install-and-run-nexus-on-droplet"></a>
## Install and Run Nexus on Droplet
- [ ] Watched video
- [ ] Demo executed
- [ ] Installed Nexus on DigitalOcean Droplet
- [ ] Created a new Linux User for Nexus
- [ ] Changed permissions of Nexus executable and sonatype-work folder
- [ ] Set Nexus conﬁguration to run as Nexus User (nexus.rc ﬁle)
- [ ] Started Nexus with Nexus User
- [ ] Conﬁgured Firewall Rules to open port 8081 to access Nexus from
browser

---
### Useful Links:
● Nexus Download URLs: https://help.sonatype.com/repomanager3/download

## Useful Commands:
apt update
apt install openjdk-8-jre-headless apt install net-tools
cd /opt
wget https://download.sonatype.com/nexus/3/latest-unix.tar.gz tar -zxvf latest-unix.tar.gz
adduser nexus
chown -R nexus:nexus nexus-3.35.0-01 chown -R nexus:nexus sonatype-work
vim nexus-3.35.0-01/bin/nexus.rc
run_as_user="nexus"
su - nexus /opt/nexus-3.35.0-01/bin/nexus start
ps aux | grep nexus netstat -lnpt


---
<a id="nexus-ui-tour"></a>
## Nexus UI Tour
- [ ] Watched video

<a id="repository-types"></a>
## Repository Types
- [ ] Watched video

## Useful Links:
- Nexus Repository Types: - https://help.sonatype.com/repomanager2/confguration/managing repositories

<a id="publish-artifact-to-nexus"></a>
## Publish Artifact to Nexus
- [ ] Watched video
- [ ] Demo executed
- [ ] Created new User on Nexus with permission to upload artifacts
- [ ] Java Gradle Project: Build Jar File & Upload Jar File to Nexus
- [ ] Java Maven Project: Build Jar File & Upload Jar File to Nexus

---
<a id="nexus-api"></a>
## Nexus API & Repository URLs
- [ ] Watched video
- [ ] Demo executed
- [ ] Queried Repositories
- [ ] Queried components of a repository
- [ ] Queried assets of a component

## Useful Links:
- API Reference:
https://help.sonatype.com/repomanager3/integrations/rest-and-integration-api

---
<a id="blob-store"></a>
## Blob Store
- [ ] Watched video
- [ ] Demo executed - create a new blob store

---
<a id="component-vs-asset"></a>
## Component vs Asset
- [ ] Watched video

---
<a id="cleanup-policies"></a>
## Cleanup Policies
- [ ] Watched video
- [ ] Demo executed
- [ ] Created new cleanup policy
- [ ] Attached to a repository
- [ ] Execute task manually
