echo convert psd to png
magick.exe mogrify -format png *.psd[0]
echo delete psd
del "*.psd"
echo done
pause