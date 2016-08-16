# Platform for teaching purpose

## Pre-requisites

If you are using Ubuntu 16.04, you will need the following packages:

```bash
sudo apt-get install git build-essential autoconf libtool flex bison
```

## How to install

To prepare the environment for the fist execution, you only need the following commands:

```bash
git clone https://github.com/rjazevedo/base_platform.git
cd base_platform
./builddeps.sh
```

## How to use the base platform?

To compile and execute the platform:

```bash
source acenv.sh
make all run
```

The *source acenv.sh* can be included in your *.bashrc* file to be executed everytime you start a new shell. 

You can split the *make all run* into two distinct commands: *make all* to compile and *make run* to execute the platform.


