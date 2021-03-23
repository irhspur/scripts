#!/usr/bin/env bash

git log --author=Roop --pretty=format:"- %s" --since=8.hours | pbcopy & pbpaste
