#!/bin/sh

set -e

# epel
curl -o /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL -L "http://ftp.jaist.ac.jp/pub/Linux/Fedora/epel/RPM-GPG-KEY-EPEL"
rpm -ivh "http://ftp.jaist.ac.jp/pub/Linux/Fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm"

# puppet
curl -o /etc/pki/rpm-gpg/RPM-GPG-KEY-puppetlabs -L "http://yum.puppetlabs.com/RPM-GPG-KEY-puppetlabs"
rpm -ivh "https://yum.puppetlabs.com/el/6/products/x86_64/puppetlabs-release-6-10.noarch.rpm"
yum install -y puppet

# chef
curl -kL https://www.opscode.com/chef/install.sh | bash

yum install -y docker-io
yum update -y
