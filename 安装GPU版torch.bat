env_install\env\python.exe -m pip uninstall torch torchvision torchaudio -y
env_install\env\python.exe -m pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
pause