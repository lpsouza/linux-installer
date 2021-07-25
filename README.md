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

Desktop tools

```sh
for i in `ls -1 desktop/`; do bash desktop/$i; done
```
