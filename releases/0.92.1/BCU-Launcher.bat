@echo off
chcp 65001 >nul
cd /d "%~dp0"
set "LJ=BCU-Launcher.jar"
rem 실행기 새 버전을 받아 두었으면 바꿔 끼워요 (OneDrive 등이 잡고 있으면 몇 번 다시 해요)
if not exist "BCU-Launcher.jar.new" goto run
for /l %%i in (1,1,5) do (
  move /y "BCU-Launcher.jar.new" "BCU-Launcher.jar" >nul 2>nul && goto run
  timeout /t 1 /nobreak >nul
)
rem 끝내 못 바꾸면 새 실행기를 바로 켜요
set "LJ=BCU-Launcher.jar.new"
:run
if not exist "%LJ%" (
  echo BCU-Launcher.jar 파일이 이 폴더에 없어요. BCU 폴더에 같이 넣어 주세요.
  pause
  exit /b 1
)
where javaw >nul 2>nul
if errorlevel 1 (
  rem 자바가 PATH에 없으면 jar 연결 프로그램으로 열어요
  start "" "%LJ%"
) else (
  start "" javaw -jar "%LJ%"
)
