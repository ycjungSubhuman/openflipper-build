# OpenFlipper Build Environment for Linux

This dockerfile provides a readymade environment for building OpenFlipper-3.1.

## Prerequisite

* A Linux machine with docker installed
* Source codes for (OpenFlipper-3.1)[https://www.openflipper.org/]
* OpenMesh Patch for gcc-6 compatability(included)

* Your `$PATH_OF_YOUR_OPENFLIPPER` should be configured like this

```
-$PATH_OF_YOUR_OPENFLIPPER/
--OpenFlipper-3.1/
---CMakeLists.txt
---COPYING
---...etc
--build/
```

### Patch

```bash
$ cd $PATH_OF_YOUR_OPENFLIPPER/OpenFlipper-3.1/libs_required/
$ patch -p0 < $DIRECTORY_OF_THIS_REPOSITORY/patch/gcc-6.patch
```

## Usage

### Building Docker Image Image

First, build the Dockerfile into Docker image by issuing

```bash
$ cd $DIRECTORY_OF_THIS_REPOSITORY
$ docker build --tag openflipper-build:1.0 .
```
Or you can just run `di-build.sh`

### Building OpenFlipper

After creating the Docker image, you can simply build the project with

```bash
docker run -v $PATH_OF_YOUR_OPENFLIPPER:/src openflipper-build:1.0
```

Or you can just run `run.sh $PATH_OF_YOUR_OPENFLIPPER`



