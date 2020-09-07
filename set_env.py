#!/usr/bin/env python3

import sys
from os import fdopen, remove
from tempfile import mkstemp
from shutil import move

if(len(sys.argv) > 2):
    filename = sys.argv[1]
    
    to_use = sys.argv[2]
    # Create temp file
    fh, abs_path = mkstemp()
    with fdopen(fh, 'w') as new_file:
        with open(filename) as old_file:
            for line in old_file:
                if ("REACT_APP_DEV_BACK_URL" in line):
                    if(to_use in line):
                        new_file.write(line.replace("1_", ""))
                    else:
                        new_file.write("1_" + line)
                else: 
                    new_file.write(line)

    old_file.close()
    new_file.close()
    remove(filename)

    move(abs_path, filename)
    print("Environment set to " + to_use)
else: 
    print("Please supply filename and env to set")
