REM ='''
@echo off && cls && powershell -Command "(gc "%~dpnx0" -raw) -replace('[\s].*[\s].*?#-start\-of-Python-code-#[\s\S]+?$','') -replace('(.*)','') | Out-File -encoding ASCII "%TMP%\\pyth0n-stub.py" 
@echo off &&        powershell -Command "(gc "%~dpnx0" -raw) -replace(      '[\s\S]*#-start\-of-Python-code-#.*','')                            | Out-File -encoding ASCII "%TMP%\\pyth0n-stub.py" -append
py -c "print('')"      && if not errorlevel 0 goto pyfail
py     %TMP%\\pyth0n-stub.py  %1 %2 %3 %4 %5 %6 %7 %8 %9  
goto :EOF
:pyfail
python -c "print('')"  && if not errorlevel 0 goto fail
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


print("\nHello, this is my python code!")


