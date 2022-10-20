# you-need-python-stub

No you don't need python, mostly, but for installers and scripts to be sent to third parties, 
you might need it. You don't want to expose anyone to shell hackery. So this is a .bat file that 
serves as a bootloader for a Python script, if Python can be found. If not, it will prompt to 
install Python. If Python contains pip imports, it is wise to start the python script with prompt 
to install them, if they are missing. Of course the script could be extended to automate everything. 

The script makes an effort to maintain line-numbers, such that when there is a Python error, the 
error message will refer to the correct line. 

### Usage

Try running it both ways in cmd.exe:

    > you-need-python-stub                  # the slow way
    > py you-need-python-stub.bat           # the fast way

Both ways the output is "Hello, this is my python code!". The only difference is that the .bat 
version also executes a clear screen command (to hide REM ''' output). 

### WTF

All I can say about .bat hacking is: do not ever try this at home. Not even a `\n` character can 
be typed directly. This scrips also uses some Powershell to do search-n-replace, and no matter how 
fancy it is supposed to be, what a big disappointment that was. In this trade there are always new 
lows. 
