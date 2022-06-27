@cd /d "%~dp0"
start nbminer.exe -a ethash -o stratum+tcp://us1.ethermine.org:14444 -u 0xe1bc91e4c5692815b88934e3e70343fe7863cef5.pc -log --api 0.0.0.0:4065 -d 0,1 -pl 220,90 -cclock @900,@1000 -mclock 900,-502 -fan 100,100
start t-rex.exe -a ethash -o stratum+tcp://us1.ethermine.org:14444 -u 0xe1bc91e4c5692815b88934e3e70343fe7863cef5 -p x -w pc --api-bind-http 0.0.0.0:4065 --log-path logs\trex.log --gpu-init-mode 1 --keep-gpu-busy --fan 100,100 --pl 90,75 --lock-cclock 900,1000 --mclock 900,-502
