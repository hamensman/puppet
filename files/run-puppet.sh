#!/bin/bash
cd /etc/puppetlabs/code/environments/production && git pull
/usr/bin/puppet apply manifests/
