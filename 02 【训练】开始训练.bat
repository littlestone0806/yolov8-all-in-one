@echo off
CHCP 65001

del /q %APPDATA%\Ultralytics\settings.yaml

env\python.exe env\Scripts\yolo.exe detect train data=data.yaml model=yolov8n.pt epochs=300
pause
