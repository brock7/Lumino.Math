
: VS2015 �́u�J���҃R�}���h�v�����v�g�v������s���邱�ƁB
: cmake �� PATH ��ʂ��Ă������ƁB


mkdir ".\build_vs2008_tmp"
cd "build_vs2008_tmp"
cmake ".." -G "Visual Studio 9 2008"
MSBuild "LuminoMath.sln" /p:Configuration=Debug /p:Platform=Win32
MSBuild "LuminoMath.sln" /p:Configuration=Release /p:Platform=Win32
"Debug\UnitTest.exe"
if "ERRORLEVEL" LEQ "0" goto UNITTEST_FAILED
"Release\UnitTest.exe"
if "ERRORLEVEL" LEQ "0" goto UNITTEST_FAILED
cd ".."

mkdir ".\build_vs2010_tmp"
cd "build_vs2010_tmp"
cmake ".." -G "Visual Studio 10"
MSBuild "LuminoMath.sln" /p:Configuration=Debug /p:Platform=Win32
MSBuild "LuminoMath.sln" /p:Configuration=Release /p:Platform=Win32
"Debug\UnitTest.exe"
if "ERRORLEVEL" LEQ "0" goto UNITTEST_FAILED
"Release\UnitTest.exe"
if "ERRORLEVEL" LEQ "0" goto UNITTEST_FAILED
cd ".."

mkdir ".\build_vs2012_tmp"
cd "build_vs2012_tmp"
cmake ".." -G "Visual Studio 11"
MSBuild "LuminoMath.sln" /p:Configuration=Debug /p:Platform=Win32
MSBuild "LuminoMath.sln" /p:Configuration=Release /p:Platform=Win32
"Debug\UnitTest.exe"
if "ERRORLEVEL" LEQ "0" goto UNITTEST_FAILED
"Release\UnitTest.exe"
if "ERRORLEVEL" LEQ "0" goto UNITTEST_FAILED
cd ".."

mkdir ".\build_vs2013_tmp"
cd "build_vs2013_tmp"
cmake ".." -G "Visual Studio 12"
MSBuild "LuminoMath.sln" /p:Configuration=Debug /p:Platform=Win32
MSBuild "LuminoMath.sln" /p:Configuration=Release /p:Platform=Win32
"Debug\UnitTest.exe"
if "ERRORLEVEL" LEQ "0" goto UNITTEST_FAILED
"Release\UnitTest.exe"
if "ERRORLEVEL" LEQ "0" goto UNITTEST_FAILED
cd ".."


mkdir ".\build_vs2015_tmp"
cd "build_vs2015_tmp"
cmake ".." -G "Visual Studio 14"
MSBuild "LuminoMath.sln" /p:Configuration=Debug /p:Platform=Win32
MSBuild "LuminoMath.sln" /p:Configuration=Release /p:Platform=Win32
"Debug\UnitTest.exe"
if "ERRORLEVEL" LEQ "0" goto UNITTEST_FAILED
"Release\UnitTest.exe"
if "ERRORLEVEL" LEQ "0" goto UNITTEST_FAILED
cd ".."

pause
exit

:UNITTEST_FAILED
echo "UnitTest failed."
pause
exit
