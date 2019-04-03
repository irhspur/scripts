#!/usr/bin/python3

import sys
import subprocess

if (len(sys.argv) > 1):
    args = sys.argv[1]
    split_array = [x.strip() for x in args.split(',')]

    print("Splitting", split_array)

    result = ""
    for component in split_array:
        result += "import " + component + " from '@material-ui/core/" + component + "';" '\n'

    first_part = subprocess.Popen(["echo", result], stdout=subprocess.PIPE)
    second_part = subprocess.Popen(["xclip -selection c"], stdin=first_part.stdout, shell=True)
else:
    print("Not enough arguments")
