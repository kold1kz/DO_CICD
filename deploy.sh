#!/bin/bash


scp -p22 src/cat/s21_cat protectk@192.168.1.121:/home/protectk
scp -p22 src/grep/s21_grep protectk@192.168.1.121:/home/protectk
ssh -p22 protectk@192.168.1.121 "ls -a"
