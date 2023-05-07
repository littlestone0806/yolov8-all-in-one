@echo off
CHCP 65001

cd datasets
..\env\python.exe split_data.py
pause