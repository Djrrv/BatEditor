@echo off
cls
title Bat Editor
color 6F
echo 欢迎来到bat编辑器
echo 当前版本 3.0.1.0.0 V3
echo 编译日期:10/29/2023
pause
:newproject
cls
echo 请命名您的项目
set /p projectname= 在此输入项目名
echo @echo off>%projectname%.bat
:startedit
cls
echo 您现在要做什么?
set /p aakk= 1.说一句话 2.华锐杀手功能包 3.加入选择 4.定义功能 5.加入暂停 6.加入颜色 7.定义变量 8.关机 
if /i '%aakk%'=='1' goto sayec
if /i '%aakk%'=='2' goto hkgnb
if /i '%aakk%'=='3' goto addchoice
if /i '%aakk%'=='4' goto addfunction
if /i '%aakk%'=='5' goto addpause
if /i '%aakk%'=='6' goto addcolor
if /i '%aakk%'=='7' goto addv
if /i '%aakk%'=='8' goto addshutdown
:addpause
echo pause>>%projectname%.bat
echo Done!
pause
goto startedit
:sayec
echo 您要说什么?
set /p awakk= 
echo echo %awakk%>>%projectname%.bat
echo Done!
pause
goto startedit
:hkgnb
echo 这将添加华锐杀手的功能到您的项目里，确定吗？
pause
echo :ma>>%projectname%.bat
echo cls>>%projectname%.bat
echo taskkill /f /im RedAgent.exe>>%projectname%.bat
echo goto ma>>%projectname%.bat
echo Done
pause
goto startedit
:addchoice
echo 您要问什么?
set /p Ques= 
echo 您的变量名?
set /p Bname= 
echo set /p %Bname%= %Ques%>>%projectname%.bat
echo 用户输入?
set /p pand1= 
echo 返回结果？
echo 返回结果应该是?
set /p aawkk= 1.echo 2.goto
if /i '%aawkk%'=='1' goto shuohuahuida
if /i '%aawkk%'=='2' goto gotohuida
:shuohuahuida
set /p returndata= 输入要说的话
echo if /i '%Bname%'=='%pand1%' echo %returndata%>>%projectname%.bat
:gotohuida
echo 你 要去哪?
set /p wherego= 
echo if /i '%Bname%'=='%pand1%' goto %wherego%>>%projectname%.bat
:asking
echo 是否需要在添加一个判断？
set /p aakk= 1.Yes 2.No
if /i '%aakk%'=='1' goto EYES
if /i '%aakk%'=='2' goto ENOS
:EYES
echo 用户输入?
set /p pand1= 
echo 返回结果？
echo 返回结果应该是?
set /p aawkk= 1.echo 2.goto
if /i '%aawkk%'=='1' goto shuohuahuida
if /i '%aawkk%'=='2' goto gotohuida
:shuohuahuida
set /p returndata= 输入要说的话
echo if /i '%Bname%'=='%pand1%' echo %returndata%>>%projectname%.bat
:gotohuida
echo 你 要去哪?
set /p wherego= 
echo if /i '%Bname%'=='%pand1%' goto %wherego%>>%projectname%.bat
goto asking
goto ENOS
:ENOS
echo Done
pause
goto startedit
:addfunction
echo 请输入你要叫这个功能的名字。
set /p funame= 
echo :%funame%>>%projectname%.bat
echo Done
pause
goto startedit
:RECOR6
cls
::设置杀进程次数killcs为0
set  killcs=0
:startkill
echo 第%killcs%次杀进程!
taskkill /f /im RedAgent.exe
::杀进程成功，次数+1
set /a killcs+=1
::返回开始杀进程
goto startkill
:addcolor
cls
echo 你想加入什么颜色?请用NX格式表示(例:6F,3E)
set /p colorname=
echo color %colorname%>>%projectname%.bat
echo Done!
pause
goto startedit
:addv
cls
echo 请输入你要定义的变量名与值
set /p valuename= 变量名
set /p valuezhi= 变量值
echo set %valuename%=%valuezhi%>>%projectname%.bat
echo Done!
pause
goto startedit
:addshutdown
cls
echo shutdown /s /t 1>>%projectname%.bat
echo Done!
pause
goto startedit