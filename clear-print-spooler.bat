echo off
cls
set TEXT_ERROR=ERROR: Possivelmente voce nao tem privilegios para executar essa operacao, entre em contato com alguem do setor de TI para resolver o problema.

echo Deseja limpar a fila de impressao?(Use CRTL+C para cancelar)
pause

net stop spooler

cd C:\windows\system32\spool\PRINTERS
IF %ERRORLEVEL% NEQ 0 (
  ECHO %TEXT_ERROR%
)ELSE (
  del /f /s *.shd
  del /f /s *.spl
)

net start spooler

pause

