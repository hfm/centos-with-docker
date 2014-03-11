# CentOS 6.5 with Docker

## Usage

```console
$ vagrant init centos6.5-x86_64-docker https://github.com/tacahilo/centos-with-docker/releases/download/v1.0/centos6.5-x86_64-docker.box
$ vagrant up
```

## Installed

* Docker (docker-io)
* Puppet
* Chef

## How to build

```console
$ packer build packer.json
```

## Troubleshoot

When an error like below appears, you try to run `vagrant ssh -c 'sudo /etc/init.d/vboxadd setup'` and `vagrant reload`.

```
[default] -- /vagrant
Failed to mount folders in Linux guest. This is usually beacuse
the "vboxsf" file system is not available. Please verify that
the guest additions are properly installed in the guest and
can work properly. The command attempted was:

mount -t vboxsf -o uid=`id -u vagrant`,gid=`getent group vagrant | cut -d: -f3` /vagrant /vagrant
mount -t vboxsf -o uid=`id -u vagrant`,gid=`id -g vagrant` /vagrant /vagrant
```
