REM ='''
@echo off && powershell -Command "(gc "%~dpnx0" -raw) -replace('[\s].*[\s].*?#-start\-of-Python-code-#[\s\S]+?$','') -replace('(.*)','') | Out-File -encoding ASCII "%TMP%\\pyth0n-stub.py" 
             powershell -Command "(gc "%~dpnx0" -raw) -replace(      '[\s\S]*#-start\-of-Python-code-#.*','')                            | Out-File -encoding ASCII "%TMP%\\pyth0n-stub.py" -append
py     -c "print('')" 2> NUL  && if not errorlevel 0 goto pyfail
py     %TMP%\\pyth0n-stub.py  %1 %2 %3 %4 %5 %6 %7 %8 %9  
goto :EOF
:pyfail
python -c "print('')" 2> NUL  && if not errorlevel 0 goto fail
python %TMP%\\pyth0n-stub.py  %1 %2 %3 %4 %5 %6 %7 %8 %9  
goto :EOF
:fail
echo:&&echo:&&echo:&&echo:
echo:&&echo             For this to work, download Python at https://www.python.org/downloads/
echo:&&echo                In the install be sure to "Add Python to environment variables"!
echo:&&echo:
echo                                        Press any key to exit
pause >nul  &&  goto :EOF
:: ==================================================================================
:: == THE ABOVE PROMPTS THE USER TO INSTALL PYTHON, IF IT ISN'T INSTALLED ALREADY ===
:: ==       WHEN PYTHON IS INSTALLED AND ACCESSIBLE IT RUNS THE CODE BELOW        ===
:: ==================================================================================
'''
#-start-of-python-code-#

# check imports and prompt if they are not yet installed
try:
    import sys
    from icecream import ic
except:
    # prompt to install dependencies
    print('''
  Python found: yes!
  Python dependencies installed: no!

  To complete the installation run the following command in cmd.exe:
    pip install icecream

''')
    input("Press any key to exit..")
    exit()

# everything is as it should be, start running your code
if len(sys.argv) <= 1: 
    print('''
  you-need-python-stub allows you to distribute Python scripts without worrying 
  about the Python installation on the user machine. Adapt this code to get started, 
  but leave something similar.  

  Usage:
    you-need-python-stub                        # default
    py you-need-python-stub.bat                 # much faster
    python you-need-python-stub.bat             # if the above doesn't work

    ''')



