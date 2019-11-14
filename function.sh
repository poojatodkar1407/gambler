#!/bin/bash -x

declare -A sounds
sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "Dog sounds " ${sounds[dog]}
echo "All animal sound " ${sounds[@]}
echo "Animal " ${!sounds[@]}
echo "Number of Animal " ${#sounds[@]}
unset sounds[dog]
 
