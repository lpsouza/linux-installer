# linux-installer

My linux tools installer

## Install

Essentials:

```sh
bash apt-essentials.sh
```

Basic tools

```sh
for i in `ls -1 basic/`; do bash basic/$i; done
```

Virtualization tools

```sh
for i in `ls -1 virtual/`; do bash virtual/$i; done
```

Desktop tools

```sh
for i in `ls -1 desktop/`; do bash desktop/$i; done
```
