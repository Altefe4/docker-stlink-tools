# About

A docker container based on   zoobab/stlink-docker  for the stlink utility, to flash STM32 and STM8 devices, with cheap chinese 2USD usb dongles labelled "st-link v2".


## Usage

Start a sh inside the docker with usb devices and a volume to flash files.

```bash
$ docker run -ti --privileged -v /dev/bus/usb:/dev/bus/usb -v $(pwd):/files:cached altefe4/docker-stlink-tools:0.2 sh
```

**Commands examples**

Inside the docker

***FLASH_ST-LINK_LIN***
```bash
$ st-flash --reset write BUILD/NUCLEO_L433RC_P/GCC_ARM/{workspaceFolderBasename}.bin  0x8000000 && echo BUILD and FLASH DONE
```

***TERMINAL***
```bash
$ minicom -D /dev/ttyACM0  -b  115200
```

## Contribute

Feel free to fork, PRs welcome.

## License

Apache 2. See LICENSE.
