#!/bin/sh

cat /dev/urandom | base64 | tr -dc "[:alnum:]" | fold -w 32 | head -n 1
