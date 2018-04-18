@echo off
pushd %~dp0

rem For App to load lib from
SET APP_CLASSPATH=lib\*;lib\clib\*

SET PATH="C:\Program Files\Java\jre1.8.0_161\bin"

IF "%~1" == "" (
start javaw -Xms128m -Xmx1024m -Dfile.encoding=UTF-8 -cp cognizant-intelligent-test-scripter-ide-1.1.jar;%APP_CLASSPATH%; com.cognizant.cognizantits.ide.main.Main %*
) ELSE (
java -Xms128m -Xmx1024m -Dfile.encoding=UTF-8 -cp cognizant-intelligent-test-scripter-ide-1.1.jar;%APP_CLASSPATH%; com.cognizant.cognizantits.ide.main.Main %*
)