# jenkins_ansible
Docker files for installing Jenkins and Ansible in the same container.

Below steps will get you a working Jenkins docker container that also has the latest Ansible installed.

### Steps:
<pre>
$ mkdir jenkins_ansible
$ cd jenkins_ansible

Copy the Dockerfile and plugins-default.txt file to this directory. Then run below:
$ docker build . -t jenkins_ansible

Once the image is successfully built and is ready, you can use the below command to start the container.
$ docker run -p 8080:8080 -p 50000:50000 --volume jenkins-data:/var/jenkins_home --volume /var/run/docker.sock:/var/run/docker.sock -d --name jenkins_ansible jenkins_ansible
</pre>

Happy DevOps!
