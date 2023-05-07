@echo off
CHCP 65001

cd datasets
..\env\python.exe xml2txt.py
pause