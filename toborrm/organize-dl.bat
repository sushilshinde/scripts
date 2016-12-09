@ECHO OFF

SET DL=C:\Users\shinde_s\Downloads

robocopy "%DL%" "%DL%\PDF" "*.PDF" /move 
robocopy "%DL%" "%DL%\ZIP" "*.zip" /move 
robocopy "%DL%" "%DL%\Softwares" "*.exe" /move
robocopy "%DL%" "%DL%\Softwares" "*.msi" /move

robocopy "%DL%" "%DL%\Documents" "*.doc" /move
robocopy "%DL%" "%DL%\Documents" "*.docx" /move

robocopy "%DL%" "%DL%\Documents" "*.xls" /move
robocopy "%DL%" "%DL%\Documents" "*.xlsx" /move

robocopy "%DL%" "%DL%\Other" "*.*" /xd "*" /move


EXIT