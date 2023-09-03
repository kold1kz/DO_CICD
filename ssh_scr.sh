#!/bin/bash

scp -p22 -o stricthostkeychecking=no -o userknownhostsfile=/dev/null ./src/cat/s21_cat protectk@192.168.1.121:/home/protectk
scp -p22 -o stricthostkeychecking=no -o userknownhostsfile=/dev/null ./src/grep/s21_grep protectk@192.168.1.121:/home/protectk
ssh -p22 protectk@192.168.1.121 "echo -e "kidaem" | sudo -S mv s21* /usr/local/bin"
