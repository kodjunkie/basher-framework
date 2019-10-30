#!/usr/bin/env bash
function progam:exists(){
  [ -x "$(command -v "$1")" ]
}
function func:exists() {
    declare -f -F "$1" > /dev/null
    return $?
}
function func:success() {
    [[ $? -lt 1 ]]
}
function func:failed() {
    [[ $? -ge 1 ]]
}
function func:inspect(){
  command -V "$1"
}