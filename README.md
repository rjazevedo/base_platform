# Platform for teaching purpose #

## How to use the simple platform? ##

Make sure that you installed the ArchC project ( [github.com/ArchC/ArchC] (https://www.github.com/ArchC/ArchC) ).

To prepare the environment for the fist execution:

```bash
git clone https://github.com/rjazevedo/base_platform.git
cd base_platform
git submodule update --init --recursive
./builddeps.sh
```

To compile and execute the platform:

```bash
source acenv.sh
make all run
```


