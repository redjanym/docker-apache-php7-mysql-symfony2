A Docker image based on Ubuntu, running PHP7 on Apache2 using a MySQL Database for a Symfony2 Web Application.

### Technical requirements  
 - Install Docker
 
The host machine must have Docker installed in order to build and run the Container.
Instructions on how to install Docker can be found on the official [page](https://docs.docker.com/engine/installation/)
 - Install Docker Compose
 
Docker Compose helps on orchestrating the communication between the `application` container and `mysql` container.
Instructions on how to install Docker Compose can be found on the official [page](https://docs.docker.com/compose/install/).
 
### Installation
 
 - Clone source code
 
 On the host machine clone the GitHub(`git` is required to be installed) repository by executing:
 
 ```
  git clone https://github.com/redjanym/docker-apache-php7-mysql-symfony2.git
 ```
 
 - Add the Symfony2 Application
 
 On the **application** directory setup the Symfony2 App. Do not install the Vendor packages, composer takes care of it during the building process.
 
 
 - Run Docker
 
 Go to the root directory of project and execute command:
 
 ``` 
    docker-compose up
 ``` 
 - Modify your `hosts` file on he host machine by adding the virtual host:
 
 ```
 127.0.0.1 www.example.com
 ```

> The docker installation exposes ports **80** and **3306** so this 2 ports must be free on the host machine

### Installed packages

- Ubuntu Server 16.04(official docker image **php:7.0-apache**)
- Apache2(official docker image **php:7.0-apache**)
- PHP7(official docker image **php:7.0-apache**)
- MySQL(official docker image, latest stable version)
- CURL
- Composer
