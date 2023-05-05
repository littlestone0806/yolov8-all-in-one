@echo off
CHCP 65001

set CONDA_ROOT_PREFIX=%cd%\env_install\conda
set INSTALL_ENV_DIR=%cd%\env_install\env

call "%CONDA_ROOT_PREFIX%\condabin\conda.bat" activate "%INSTALL_ENV_DIR%" || ( echo. && echo 未找到conda创建的虚拟环境env。 && goto end )

cmd /k "%*"

:end
pause
