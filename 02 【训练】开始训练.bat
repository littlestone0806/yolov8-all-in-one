@echo off
CHCP 65001

del /q %APPDATA%\Ultralytics\settings.yaml

env_install\env\python.exe env_install\env\Scripts\yolo.exe detect train data=data.yaml model=yolov8n.pt epochs=300
pause
