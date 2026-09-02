ASSISTANCE RECORD SYSTEM - WINDOWS EXE

IMPORTANT
The HTML file is the existing system and has not been redesigned or rewritten.
This package only adds the Windows desktop wrapper/build files.

EASIEST METHOD (NO NODE.JS INSTALL ON YOUR PC)
1. Upload the contents of this folder to a GitHub repository.
2. Open the repository's Actions tab.
3. Select "Build Windows EXE".
4. Click "Run workflow".
5. Wait for the green checkmark.
6. Open the completed workflow run.
7. Under Artifacts, download "Assistance-Record-System-Windows-EXEs".
8. Extract that downloaded ZIP.
9. Double-click the NSIS installer EXE to install the application.

LOCAL WINDOWS METHOD
1. Install Node.js 22.12 or newer.
2. Double-click build-windows.bat.
3. Wait for BUILD SUCCESSFUL.
4. Open the dist folder.
5. Run the installer EXE.

OUTPUTS
- Installer: Assistance-Record-System-1.0.0-x64.exe
- Portable:  Assistance-Record-System-1.0.0-portable-x64.exe

If Windows displays a SmartScreen warning for an unsigned locally built application,
use the More info / Run anyway option only if you trust the source and you built it
from this package.
