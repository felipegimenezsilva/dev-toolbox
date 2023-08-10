# dev-toolbox
This repository contains an isolated environment to develop projects

## Motivation

As a linux user, is really important keep our system organized. When we start to develop,
apt-get, pip install, npm install became very commom in our daily tasks, and keep all this
things organized is a challenging activity.

One time ago, I was trying to avoid install every thing in my host. My idea was create a
kind of 'python virtual environment' for anything, and then I discover the Podman and the
podman-toolbox. I was trying to use Docker to keep everything conteinerd, and configuring
volumes to my files, but I was having some trouble with permissions, usability, etc.

Podman is very similar to docker, and has the podman-toolbox that already solve these problems,
and other difficulties founded in 'immutable linux distros'. So, I decided to keep this
solution here :D .

## How to use

### Requirements

To use dev-toolbox, you need:

* Use linux system;
* Install podman in your host;
* Install podman-toolbox in your host too.

### Building the image

To build the container, you can:
* use the script available in container/build.sh;
* use podman directly (same commands in the script, very similar to docker commands).

OBS: the build script creates the image, container and toolbox. If you need
to rebuild, (and recriate the container and toolbox), use /container/remove.sh
before run the build.

### Activating the environment

To activate, you can :
* use the script available in container/activate.sh; 
* use the podman-toolbox directly (toolbox enter dev-toolbox)

### Deativating the environment

After the environment is activated, you can use 'exit' in your terminal to
back for your 'real' host. It is similar to "virtualenv deactivate" for python
developers.

OBS: toolbox starts the container during the activation, but it does not stop
the container automatically. To stop the container, you can use:
* the script available in container/stop.sh
* the podman command directly (podman stop dev-toolbox)

### Adictional configurations

Is possible to change the system, pre-installed packages and etc. To
configure this changes, you just need to :
* update the Dockerfile, available in container/Dockerfile.dev-toolbox;
* remove the actual environment (container/remove.sh) ;
* build the new image (container/build.sh).
