@ECHO OFF

:: Run unit tests 
cd test\Steeltoe.Extensions.Logging.CloudFoundry.Test
dotnet restore --configfile ..\..\nuget.config
dotnet xunit -verbose
if not "%errorlevel%"=="0" goto failure
cd ..\..
echo Unit Tests Pass
goto success
:failure
echo Unit Tests Failure
exit -1
:success