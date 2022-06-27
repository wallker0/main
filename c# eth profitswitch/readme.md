[c# eth profitswitch]

![Screenshot_1](https://user-images.githubusercontent.com/42736457/176031236-d5a745a2-7c13-49fb-929c-645a1b7bf465.png)

***.net framework 4.5+ required***

Web-scrap values to calculate roi, profit and revenue
turn on/off local network ETH mining rigs.

to execute at startup, put 'logon.bat' shortcut inside 
windows startup programs folder.

In this version its only possible to see the outputs in BRL currency,
might consider adding USD toggle later.

[profitswitch]
- profitswitch.exe
- htmlagilitypack.dll
- config.cfg
- start.bat
- logon.bat
- main.cs

<help>

[config.cfg]
- //total mh: type your rigs total hasrate in MH.
- //power draw: type your rigs total power draw in W.
- //kwh price: type your kwh price.
- //low profit: type the minimum profit to evaluate switching the rig off.
- //trex <0> / nbminer <1> / dual <2> type which miner you are using, 2 for both.

[start.bat]
- start <miner.exe> <args> //start trex, nbminer or both.

[logon.bat] 
- put it inside windows startup programs.

[htmlagilitypack]
- must be placed where profitSwitch.exe is.

Currently, the miner`s .exe must be placed where profitSwitch.exe and start.bat are located.
