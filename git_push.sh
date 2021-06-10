#!/bin/bash -e

git branch --unset-upstream

git push origin "$1":"$1"

git push --set-upstream origin "$1"

git push