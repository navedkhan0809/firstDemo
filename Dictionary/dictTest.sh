#!/bin/bash -x

declare -A sounds

sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "all animal sounds ::" ${sounds[@]}
echo "Dog sound ::" ${sounds[dog]}
echo "number of animals::" ${#sounds[@]}
#to delete value
unset sounds[wolf]
echo "after deleting dic::" ${sounds[@]}
