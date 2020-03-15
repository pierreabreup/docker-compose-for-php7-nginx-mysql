# What is it?

This project is a PHP 7 docker environment with Mysql and Nginx instance. In addition, the docker environment install globally PHPunit 7.1 and Composer(https://getcomposer.org/)

# Why should you use it?

First of all, it is helpful to run php and installs dependencies avoiding conflicts with other php projects. The second reason, it is to make your local machine clean

# How to use it?

After you've clone this project, follow the steps:
- open a terminal session in your terminal tool (Iterm, Terminal, Putty)
- go to folder where you've clone the project (Ex.: ```cd docker-compose-for-php7-nginx-mysql```)
- type the command: ```make run```

##### IMPORTANT!
when you run ```make run```in the first time, the docker image will be created. In the next times, docker compose will use the image.

# Extra commands

- `make mysql`: use this command to enter in mysql console. This command must be typed in a new termina session, in other words, you must keep alive the session where you've run `make run`
- `make console`: use this command to enter in container where php-nginx is running. This command must be typed in a new termina session, in other words, you must keep alive the session where you've run `make run`
- `make destroy`: use this command to destroy the project. To use this command, to to the terminal session where you've run `make run` and press CTRL+C. After that, type `make destroy`

# FAQ

=> **I already have a php project. How can I use this docker container?**
**A:** Pretty simple. Clone this docker container project and copy the files Dockerfile, docker-compose.yml and Makefile, and paste them inside your php root path.  After that, type the command: ```make run```.

=> **I'm having problems to up the container or run rails project. What can I do ?**
**A:** create a [github issue](https://github.com/pierreabreup/docker-compose-for-php7-nginx-mysql/issues) . I promise will answer as soon as possible
