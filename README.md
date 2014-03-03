# CentOS 6.5 with Docker

## Usage

```console
$ vagrant init centos6.5-x86_64-docker https://github.com/tacahilo/centos-with-docker/releases/download/v1.0/centos6.5-x86_64-docker.box
$ vagrant up
```

## Installed

* Docker (docker-id)
* Puppet
* Chef

## How to build

```console
$ packer build packer.json
```
