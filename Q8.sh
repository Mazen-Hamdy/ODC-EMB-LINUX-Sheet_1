#!/bin/bash

DIRECTORY=${1:-.}

find "$DIRECTORY" -type f -size 0 -print
