@echo off
CLS

:MENU
ECHO.
ECHO           Vagrant Menu
ECHO =================================
ECHO    1. Login
ECHO    2. Start
ECHO    3. Start + Provision
ECHO    4. Stop
ECHO    5. Provision
ECHO    6. Destroy
ECHO    7. Close
ECHO =================================

SET /P M=Enter a number and press ENTER: 
IF %M%==1 GOTO VAGRANTLOGIN
IF %M%==2 GOTO VAGRANTSTART
IF %M%==3 GOTO VAGRANTSTARTPROVISION
IF %M%==4 GOTO VAGRANTSTOP
IF %M%==5 GOTO VAGRANTPROVISION
IF %M%==6 GOTO VAGRANTDESTROY
IF %M%==7 GOTO EOF

:VAGRANTLOGIN
CLS
vagrant login
GOTO MENU

:VAGRANTSTART
CLS
vagrant up
GOTO MENU

:VAGRANTSTARTPROVISION
CLS
vagrant up --provision
GOTO MENU

:VAGRANTSTOP
CLS
vagrant halt
GOTO MENU

:VAGRANTSTOP
CLS
vagrant halt
GOTO MENU

:VAGRANTPROVISION
CLS
vagrant provision
GOTO MENU

:VAGRANTDESTROY
CLS
SET /P AREYOUSURE="Your local Virtual Machine will be deleted. Continue? (Y/N) "
IF /I "%AREYOUSURE%" NEQ "Y" GOTO MENU
vagrant destroy
GOTO MENU
