@echo OFF
goto banner
color D

:banner
cls
echo -------------------------------------------------------------------
color D
echo     10                        011010        
echo    1001                      /10/         
echo   01  //11 ////00  //////10 ///01/// //00 01 
echo  0101100101   01    0110100   /01     //101  
echo /01//////10  01    00    01   /10       10/01 
echo /10     /01 100101 //010111  /10      10 //01
echo //      // //////  ////////   //      //   //

set /a counter=1

title Multi-Tool "Azafx"

:loop
color D
echo -------------------------------------------------------------------
echo List:
echo 1) Ping 8.8.8.8                       2) Ping 127.0.0.1
echo 3) Ping x IP/a server                 4) ipconfig
echo 5) Curl Parrot                        6) Traceroute a network route
echo 7) Scan open ports                    8) Show system info
set /p option="Select an option (1-8): "

if "%option%" EQU "1" (
    cls
    color 1
    ping 8.8.8.8
	pause
	goto banner
)

if "%option%" EQU "2" (
    cls
    color 2
    ping 127.0.0.1
	pause
	goto banner
)

if "%option%" EQU "3" (
    cls
    color 3
    set /p ipQstn="Enter IP address: "
    ping %ipQstn%
	pause
	goto banner
)

if "%option%" EQU "4" (
    cls
    color C
    ipconfig
	pause
	goto banner
)

if "%option%" EQU "5" (
    cls
    color E
    curl parrot.live
	pause
	goto banner
)

if "%option%" EQU "6" (
    cls
    color 8
    set /p targetQstn="Enter target for traceroute: "
    tracert %targetQstn%
	pause
	goto banner
)

if "%option%" EQU "7" (
    cls
    color 4
    set /p port="Enter port to scan: "
    find "%port%"
	pause
	goto banner
)

if "%option%" EQU "8" (
    cls
    color 6
    systeminfo
	pause
	goto banner
)
echo ------------------------------------------------------------------
goto loop

pause
