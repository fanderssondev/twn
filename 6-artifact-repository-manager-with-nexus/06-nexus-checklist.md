# Module Checklist Artifact Repository Manager
By TechWorld with Nana

## Video Overview
- ★ [01 -Introduction to Artifact Repository Manager](#introduction-to-artifact-repository-manager)
- ★ [02 -Install and Run Nexus on Droplet](#install-and-run-nexus-on-droplet)
- ★ [03 -Nexus UI Tour](#nexus-ui-tour)
- ★ [04 -Repository Types](#repository-types)
- ★ [05 -Publish Artifact to Nexus](#publish-artifact-to-nexus)
- ★ [06 -Nexus API](#nexus-api)
- ★ [07 -Blob Store](#blob-store)
- ★ [08 -Component vs Asset](#component-vs-asset)
- ★ [09 -Cleanup Policies](#cleanup-policies)

<a id="introduction-to-artifact-repository-manager"></a>
## 01 - Introduction to Artifact Repository Manager
- [x] Watched video

---
<a id="install-and-run-nexus-on-droplet"></a>
## 02 - Install and Run Nexus on Droplet
- [x] Watched video
- [x] Demo executed
- [x] Installed Nexus on DigitalOcean Droplet
- [x] Created a new Linux User for Nexus
- [x] Changed permissions of Nexus executable and sonatype-work folder
- [x] Set Nexus conﬁiguration to run as Nexus User (nexus.rc ﬁile)
- [x] Started Nexus with Nexus User
- [x] Conﬁigured Firewall Rules to open port 8081 to access Nexus from
browser

### Useful Links:
- Nexus Download URLs: https://help.sonatype.com/repomanager3/download

### Useful Commands:
```
```bash
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
```bash
```

---
<a id="nexus-ui-tour"></a>
## 03 - Nexus UI Tour
- [x] Watched video

---
<a id="repository-types"></a>
## 04 - Repository Types
- [x] Watched video

### Useful Links:
- Nexus Repository Types: - [https://help.sonatype.com/repomanager2/confguration/managing repositories]

---
<a id="publish-artifact-to-nexus"></a>
## 05 - Publish Artifact to Nexus
- [x] Watched video
- [x] Demo executed
- [x] Created new User on Nexus with permission to upload artifacts
- [x] Java Gradle Project: Build Jar File & Upload Jar File to Nexus
- [x] Java Maven Project: Build Jar File & Upload Jar File to Nexus

---
<a id="nexus-api"></a>
## 06 - Nexus API & Repository URLs
- [x] Watched video
- [x] Demo executed
- [x] Queried Repositories
- [x] Queried components of a repository
- [x] Queried assets of a component

### Useful Links:
- API Reference:
https://help.sonatype.com/repomanager3/integrations/rest-and-integration-api

---
<a id="blob-store"></a>
## 07 - Blob Store
- [x] Watched video
- [x] Demo executed - create a new blob store

---
<a id="component-vs-asset"></a>
## 08 - Component vs Asset
- [x] Watched video

---
<a id="cleanup-policies"></a>
## 09 - Cleanup Policies
- [x] Watched video
- [x] Demo executed
- [x] Created new cleanup policy
- [x] Attached to a repository
- [x] Execute task manually
