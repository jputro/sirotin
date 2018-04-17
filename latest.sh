#!/bin/bash
# Copyright 2018 Tero Karvinen http://TeroKarvinen.com GPL 3

set -o verbose
find $HOME -printf "%T+ %p\n"|sort|tail -15
sudo find /etc/ -printf "%T+ %p\n"|sort|tail -15

