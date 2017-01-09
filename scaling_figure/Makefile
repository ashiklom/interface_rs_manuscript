all: montage.png

landsat.2000x1600.png: common.sh crop.sh
	./crop.sh

montage.png: landsat.2000x1600.png montage.sh
	./montage.sh

clean:
	rm -rf *.png
