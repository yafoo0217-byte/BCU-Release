@echo off
chcp 65001 >nul
cd /d "%~dp0"
rem 실행기 새 버전을 받아 두었으면 먼저 바꿔 끼워요
if exist "BCU-Launcher.jar.new" (
  move /y "BCU-Launcher.jar.new" "BCU-Launcher.jar" >nul
)
if not exist "BCU-Launcher.jar" (
  echo BCU-Launcher.jar 파일이 이 폴더에 없어요. BCU 폴더에 같이 넣어 주세요.
  pause
  exit /b 1
)
where javaw >/dev/null 2>nul
if errorlevel 1 (
  rem 자바가 PATH에 없으면 jar 연결 프로그램으로 열어요
  start "" "BCU-Launcher.jar"
) else (
  start "" javaw -jar "BCU-Launcher.jar"
)
