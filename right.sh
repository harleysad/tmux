#!/bin/bash

for i in {0..255}; do
  printf "\e[48;5;${i}m%-4d " "$i"
  if (( i % 16 == 15 )); then
    printf "\e[0m\n"
  fi
done
printf "\e[0m\n"