# you-need-python-stub

No you don't need python, mostly, but for installers and scripts to be sent to third parties, you want a smooth way to run a Python script. This is a .bat file that serves as a bootloader for a Python script, if Python can be found. If not, it will prompt to install Python. If Python contains pip imports, it will prompt to install them if they are missing. Otherwise, as all conditions for the code to run have been met, it will simply run the Python code. 

The script makes an effort to maintain line-numbers, such that when there is a Python error, the error message will refer to the correct line. 

### Usage

Try running it both ways in cmd.exe:

    > you-need-python-stub.py.bat           # the slow way
    > py you-need-python-stub.py.bat        # the fast way

Both ways the output is the same. The only difference is that the .bat version also executes a clear screen command (to hide REM ''' output). 

Yes, this is Windows only. 

### WTF

All I can say about shell hacking is: do not ever try this at home. Not even a `\n` character can be typed directly into a .bat string. This scrips also uses some Powershell to do search-n-replace, and no matter how fancy it is supposed to be, what a big disappointment that was. There are always new lows. 
