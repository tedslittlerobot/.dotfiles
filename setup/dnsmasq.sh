#! /usr/bin/env bash

# Configures DNSmasq to point all *.test domains to localhost.
# Adapted from https://www.github.com/weprovide/valet-plus

# From https://gist.github.com/tedslittlerobot/6b0fb0b2b97e94f18fc9a9ea9b9d723c
# @todo - TEST!!!

mkdir -p /etc/resolver
mv ~/.dotfiles/setup/dnsmasq/resolver-test /etc/resolver/test

mkdir -p /usr/local/opt/dnsmasq
mv ~/.dotfiles/setup/dnsmasq/test.conf /usr/local/opt/dnsmasq/test.conf

# @todo - check if exists, or line has already been added
echo 'conf-file=/usr/local/opt/dnsmasq/test.conf' >> /usr/local/etc/dnsmasq.conf

sudo brew services stop dnsmasq
sudo brew services start dnsmasq
