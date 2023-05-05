@echo off
set "image_dir=.\images"
set "label_dir=.\labels"
set "folders=test train val"
for %%f in (%folders%) do (
    echo Deleting files in %image_dir%\%%f...
    del /q %image_dir%\%%f\*.*
)
for %%f in (%folders%) do (
    echo Deleting files in %label_dir%\%%f...
    del /q %label_dir%\%%f\*.*
)
del /q labels\train.cache
del /q labels\val.cache
echo Done.
pause