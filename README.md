# Platform for teaching purpose

## Pre-requisites

If you are using Ubuntu 16.04, you will need the following packages:

```bash
sudo apt-get install git build-essential autoconf libtool flex bison
```

## How to use the simple platform?

To prepare the environment for the fist execution:

```bash
git clone https://github.com/rjazevedo/base_platform.git
cd base_platform
./builddeps.sh
```

To compile and execute the platform:

```bash
source acenv.sh
make all run
```


