@echo off
title Crear estructura FOL y archivos BAT

:: Crear carpeta C:\FOL\Github
echo Creando estructura de carpetas...
mkdir "C:\FOL" 2>nul
mkdir "C:\FOL\Github" 2>nul

:: Crear UpBach.bat en C:\FOL\
echo Creando UpBach.bat...
echo @echo off > "C:\FOL\UpBach.bat"
echo title Auto Upload to FOL Repo - TaruGames >> "C:\FOL\UpBach.bat"
echo. >> "C:\FOL\UpBach.bat"
echo :: Configuraci¢n de rutas y credenciales >> "C:\FOL\UpBach.bat"
echo set REPO_PATH=C:\FOL\Github >> "C:\FOL\UpBach.bat"
echo set GIT_REPO=https://github.com/TaruGames/FOL.git >> "C:\FOL\UpBach.bat"
echo set GIT_USER=TaruGames >> "C:\FOL\UpBach.bat"
echo set GIT_EMAIL=agussx123@gmail.com >> "C:\FOL\UpBach.bat"
echo. >> "C:\FOL\UpBach.bat"
echo :: Configurar git para guardar credenciales >> "C:\FOL\UpBach.bat"
echo git config --global credential.helper wincred >> "C:\FOL\UpBach.bat"
echo git config --global user.name "%%GIT_USER%%" >> "C:\FOL\UpBach.bat"
echo git config --global user.email "%%GIT_EMAIL%%" >> "C:\FOL\UpBach.bat"
echo. >> "C:\FOL\UpBach.bat"
echo :: Verificar si la carpeta existe >> "C:\FOL\UpBach.bat"
echo if not exist "%%REPO_PATH%%" ( >> "C:\FOL\UpBach.bat"
echo     echo La carpeta %%REPO_PATH%% no existe. Creando... >> "C:\FOL\UpBach.bat"
echo     mkdir "%%REPO_PATH%%" >> "C:\FOL\UpBach.bat"
echo ) >> "C:\FOL\UpBach.bat"
echo. >> "C:\FOL\UpBach.bat"
echo :: Navegar a la carpeta >> "C:\FOL\UpBach.bat"
echo cd /d "%%REPO_PATH%%" >> "C:\FOL\UpBach.bat"
echo. >> "C:\FOL\UpBach.bat"
echo :: Verificar si es un repositorio git >> "C:\FOL\UpBach.bat"
echo git status ^>nul 2^>^&1 >> "C:\FOL\UpBach.bat"
echo if %%ERRORLEVEL%% neq 0 ( >> "C:\FOL\UpBach.bat"
echo     echo Esta carpeta no es un repositorio git. Clonando... >> "C:\FOL\UpBach.bat"
echo     git clone %%GIT_REPO%% "%%REPO_PATH%%" >> "C:\FOL\UpBach.bat"
echo     if %%ERRORLEVEL%% neq 0 ( >> "C:\FOL\UpBach.bat"
echo         echo Error al clonar el repositorio. >> "C:\FOL\UpBach.bat"
echo         pause >> "C:\FOL\UpBach.bat"
echo         exit /b >> "C:\FOL\UpBach.bat"
echo     ) >> "C:\FOL\UpBach.bat"
echo     cd /d "%%REPO_PATH%%" >> "C:\FOL\UpBach.bat"
echo ) >> "C:\FOL\UpBach.bat"
echo. >> "C:\FOL\UpBach.bat"
echo :: A¤adir cambios >> "C:\FOL\UpBach.bat"
echo git add . >> "C:\FOL\UpBach.bat"
echo. >> "C:\FOL\UpBach.bat"
echo :: Hacer commit >> "C:\FOL\UpBach.bat"
echo git commit -m "Auto update %%date%% %%time%%" >> "C:\FOL\UpBach.bat"
echo. >> "C:\FOL\UpBach.bat"
echo :: Subir cambios >> "C:\FOL\UpBach.bat"
echo git push origin main >> "C:\FOL\UpBach.bat"
echo. >> "C:\FOL\UpBach.bat"
echo echo Operaci¢n completada con ‚xito. >> "C:\FOL\UpBach.bat"
echo pause >> "C:\FOL\UpBach.bat"

:: Crear DownBach.bat en C:\FOL\
echo Creando DownBach.bat...
echo @echo off > "C:\FOL\DownBach.bat"
echo title Descargar Repositorio FOL - TaruGames >> "C:\FOL\DownBach.bat"
echo. >> "C:\FOL\DownBach.bat"
echo :: Configuraci¢n >> "C:\FOL\DownBach.bat"
echo set REPO_PATH=C:\FOL\Github >> "C:\FOL\DownBach.bat"
echo set GIT_REPO=https://github.com/TaruGames/FOL.git >> "C:\FOL\DownBach.bat"
echo set GIT_USER=TaruGames >> "C:\FOL\DownBach.bat"
echo set GIT_EMAIL=agussx123@gmail.com >> "C:\FOL\DownBach.bat"
echo. >> "C:\FOL\DownBach.bat"
echo :: Configurar git (solo si no est  configurado) >> "C:\FOL\DownBach.bat"
echo git config --global credential.helper wincred >> "C:\FOL\DownBach.bat"
echo git config --global user.name "%%GIT_USER%%" >> "C:\FOL\DownBach.bat"
echo git config --global user.email "%%GIT_EMAIL%%" >> "C:\FOL\DownBach.bat"
echo. >> "C:\FOL\DownBach.bat"
echo :: Verificar si la carpeta existe >> "C:\FOL\DownBach.bat"
echo if not exist "%%REPO_PATH%%" ( >> "C:\FOL\DownBach.bat"
echo     echo Creando directorio %%REPO_PATH%%... >> "C:\FOL\DownBach.bat"
echo     mkdir "%%REPO_PATH%%" >> "C:\FOL\DownBach.bat"
echo ) >> "C:\FOL\DownBach.bat"
echo. >> "C:\FOL\DownBach.bat"
echo cd /d "%%REPO_PATH%%" >> "C:\FOL\DownBach.bat"
echo. >> "C:\FOL\DownBach.bat"
echo :: Verificar si ya es un repositorio git >> "C:\FOL\DownBach.bat"
echo git status ^>nul 2^>^&1 >> "C:\FOL\DownBach.bat"
echo if %%ERRORLEVEL%% equ 0 ( >> "C:\FOL\DownBach.bat"
echo     echo Actualizando repositorio existente... >> "C:\FOL\DownBach.bat"
echo     git pull origin main >> "C:\FOL\DownBach.bat"
echo ) else ( >> "C:\FOL\DownBach.bat"
echo     echo Clonando repositorio por primera vez... >> "C:\FOL\DownBach.bat"
echo     git clone %%GIT_REPO%% . >> "C:\FOL\DownBach.bat"
echo ) >> "C:\FOL\DownBach.bat"
echo. >> "C:\FOL\DownBach.bat"
echo if %%ERRORLEVEL%% neq 0 ( >> "C:\FOL\DownBach.bat"
echo     echo Ocurri¢ un error durante la operaci¢n >> "C:\FOL\DownBach.bat"
echo     pause >> "C:\FOL\DownBach.bat"
echo     exit /b >> "C:\FOL\DownBach.bat"
echo ) >> "C:\FOL\DownBach.bat"
echo. >> "C:\FOL\DownBach.bat"
echo echo Operaci¢n completada con ‚xito! >> "C:\FOL\DownBach.bat"
echo echo Repositorio en: %%REPO_PATH%% >> "C:\FOL\DownBach.bat"
echo pause >> "C:\FOL\DownBach.bat"

echo Proceso completado.
echo Se han creado:
echo - Carpeta: C:\FOL\Github
echo - Archivos: 
echo   - C:\FOL\UpBach.bat
echo   - C:\FOL\DownBach.bat
pause