Docker-Container-for-Sontype-Nexus

-----I'm Documenting Docker Containers for Learning purpose not for Production Use------- <br>
-----Sonatype Nexus is property of Sontype and I'm not bundling or sharing sontype Nexus with this <br>

To build and run this Container Required Sonatype Nexus to be downloaded from sontype Nexus website <br>

Useful links:<br>
Sontype Nexus Links: 1.Download sontype Nexus Installers [64bit] <br>
https://www.sonatype.com/download-oss-sonatype <br>
2.Documentation for sontype Nexus <br>
http://books.sonatype.com/sonatype-clm-book/html <br>
Docker Links: <br>
3.How to start with Docker: <br>
https://docs.docker.com/docker-for-mac/  <br>
https://www.docker.com/  <br>
4.Documentation:  <br>
https://docs.docker.com/  <br>

Builing Image for Nexus <br>
Before Building Image install and configure Python to host http server for your installers[refer the dockerfile for URL and change it accordingly].<br>
1.create a Directory Artifactory and copy the Dockerfile in it <br>
2.Execute the docker Command to build the Image docker build -t nexus:stable. <br>
wait till it finish sucessfully without any error. <br>

Create Container for Artifactory:

docker run -P --expose <portNo>  -it <container-ID> /tmp/startup.sh


