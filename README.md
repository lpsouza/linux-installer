# linux-installer

My linux tools installer

## Install

Essentials:

```sh
bash apt-essentials.sh
```

Basic tools

```sh
for i in basic/*.sh; do bash $i; done
```

Virtualization tools

```sh
for i in virtual/*.sh; do bash $i; done
```

Desktop tools

```sh
for i in desktop/*.sh; do bash $i; done
```
