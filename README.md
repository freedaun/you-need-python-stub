# you-need-python-stub
This is a .bat file that contains a Python script. If a Python interpreter is available the script will be run, otherwise the user will be prompted to install it (and set the PATH). 

Try running it both ways in cmd.exe:

    > you-need-python-stub
    > py you-need-python-stub.bat

Both ways the output is "Hello, this is my python code!". 

The .bat version in addition executes a clear screen command. 

The script makes an effort to maintain line-numbers, such that when there is a Python error, the error message will refer to the correct line. 

