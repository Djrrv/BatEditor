@echo off
cls
title Bat Editor
color 6F
echo ��ӭ����bat�༭��
echo ��ǰ�汾 3.0.1.0.0 V3
echo ��������:10/29/2023
pause
:newproject
cls
echo ������������Ŀ
set /p projectname= �ڴ�������Ŀ��
echo @echo off>%projectname%.bat
:startedit
cls
echo ������Ҫ��ʲô?
set /p aakk= 1.˵һ�仰 2.����ɱ�ֹ��ܰ� 3.����ѡ�� 4.���幦�� 5.������ͣ 6.������ɫ 7.������� 8.�ػ� 
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
echo ��Ҫ˵ʲô?
set /p awakk= 
echo echo %awakk%>>%projectname%.bat
echo Done!
pause
goto startedit
:hkgnb
echo �⽫��ӻ���ɱ�ֵĹ��ܵ�������Ŀ�ȷ����
pause
echo :ma>>%projectname%.bat
echo cls>>%projectname%.bat
echo taskkill /f /im RedAgent.exe>>%projectname%.bat
echo goto ma>>%projectname%.bat
echo Done
pause
goto startedit
:addchoice
echo ��Ҫ��ʲô?
set /p Ques= 
echo ���ı�����?
set /p Bname= 
echo set /p %Bname%= %Ques%>>%projectname%.bat
echo �û�����?
set /p pand1= 
echo ���ؽ����
echo ���ؽ��Ӧ����?
set /p aawkk= 1.echo 2.goto
if /i '%aawkk%'=='1' goto shuohuahuida
if /i '%aawkk%'=='2' goto gotohuida
:shuohuahuida
set /p returndata= ����Ҫ˵�Ļ�
echo if /i '%Bname%'=='%pand1%' echo %returndata%>>%projectname%.bat
:gotohuida
echo �� Ҫȥ��?
set /p wherego= 
echo if /i '%Bname%'=='%pand1%' goto %wherego%>>%projectname%.bat
:asking
echo �Ƿ���Ҫ�����һ���жϣ�
set /p aakk= 1.Yes 2.No
if /i '%aakk%'=='1' goto EYES
if /i '%aakk%'=='2' goto ENOS
:EYES
echo �û�����?
set /p pand1= 
echo ���ؽ����
echo ���ؽ��Ӧ����?
set /p aawkk= 1.echo 2.goto
if /i '%aawkk%'=='1' goto shuohuahuida
if /i '%aawkk%'=='2' goto gotohuida
:shuohuahuida
set /p returndata= ����Ҫ˵�Ļ�
echo if /i '%Bname%'=='%pand1%' echo %returndata%>>%projectname%.bat
:gotohuida
echo �� Ҫȥ��?
set /p wherego= 
echo if /i '%Bname%'=='%pand1%' goto %wherego%>>%projectname%.bat
goto asking
goto ENOS
:ENOS
echo Done
pause
goto startedit
:addfunction
echo ��������Ҫ��������ܵ����֡�
set /p funame= 
echo :%funame%>>%projectname%.bat
echo Done
pause
goto startedit
:RECOR6
cls
::����ɱ���̴���killcsΪ0
set  killcs=0
:startkill
echo ��%killcs%��ɱ����!
taskkill /f /im RedAgent.exe
::ɱ���̳ɹ�������+1
set /a killcs+=1
::���ؿ�ʼɱ����
goto startkill
:addcolor
cls
echo �������ʲô��ɫ?����NX��ʽ��ʾ(��:6F,3E)
set /p colorname=
echo color %colorname%>>%projectname%.bat
echo Done!
pause
goto startedit
:addv
cls
echo ��������Ҫ����ı�������ֵ
set /p valuename= ������
set /p valuezhi= ����ֵ
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