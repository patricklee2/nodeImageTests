@echo off

rm -rf results/*

REM create site
REM defaults to starthosting.html
lprun tests/test0.linq
timeout 180
curl http://site1.patle7.antares-test.windows-int.net > results/test0.txt

REM deploy code to site
REM defaults to package.json
lprun tests/test1.linq
timeout 180
curl http://site1.patle7.antares-test.windows-int.net/ > results/test1.txt

REM startupcmd=process.json
lprun tests/test2.linq
timeout 180
curl http://site1.patle7.antares-test.windows-int.net/ > results/test2.txt

REM startupcmd=index.js
lprun tests/test3.linq
timeout 180
curl http://site1.patle7.antares-test.windows-int.net/ > results/test3.txt

REM startupcmd=npm start
lprun tests/test4.linq
timeout 180
curl http://site1.patle7.antares-test.windows-int.net/ > results/test4.txt

REM startupcmd=pm2 start process.json
lprun tests/test5.linq
timeout 180
curl http://site1.patle7.antares-test.windows-int.net/ > results/test5.txt

REM startupcmd=node index.js
lprun tests/test6.linq
timeout 180
curl http://site1.patle7.antares-test.windows-int.net/ > results/test6.txt

REM startupcmd=/bin/bash -c /home/site/wwwroot/startup.sh
lprun tests/test7.linq
timeout 180
curl http://site1.patle7.antares-test.windows-int.net/ > results/test7.txt

REM startupcmd=process.json with remotedebug
lprun tests/test8.linq
timeout 180
curl http://site1.patle7.antares-test.windows-int.net/ > results/test8.txt

REM startupcmd=npm start with remote debug
lprun tests/test9.linq
timeout 180
curl http://site1.patle7.antares-test.windows-int.net/ > results/test9.txt

REM startupcmd=pm2 start process.json with remote debug
lprun tests/test10.linq
timeout 180
curl http://site1.patle7.antares-test.windows-int.net/ > results/test10.txt

REM startupcmd=node index.js with remote debug
lprun tests/test11.linq
timeout 180
curl http://site1.patle7.antares-test.windows-int.net/ > results/test11.txt

REM startupcmd=node index.js with remote debug
lprun tests/test12.linq
timeout 180
curl http://site1.patle7.antares-test.windows-int.net/ > results/test12.txt

REM startupcmd=/bin/bash -c /home/site/wwwroot/startup.sh with remote debug
lprun tests/test13.linq
timeout 180
curl http://site1.patle7.antares-test.windows-int.net/ > results/test13.txt


REM lprun deleteLinuxSite.linq

@echo on

REM diff should be empty

echo "diffs should be empty"

diff expected/test0.txt results/test0.txt
diff expected/test1.txt results/test1.txt
diff expected/test2.txt results/test2.txt
diff expected/test1.txt results/test3.txt
diff expected/test2.txt results/test4.txt
diff expected/test1.txt results/test5.txt
diff expected/test2.txt results/test6.txt
diff expected/test1.txt results/test7.txt
diff expected/test2.txt results/test8.txt
diff expected/test1.txt results/test9.txt
diff expected/test2.txt results/test10.txt
diff expected/test1.txt results/test11.txt
diff expected/test2.txt results/test12.txt
diff expected/test13.txt results/test13.txt