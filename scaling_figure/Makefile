all: montage.png

landsat.2000x1600.png: common.sh crop.sh landsat_1m.tif usda_1m.tif
	./crop.sh

montage.png: landsat.2000x1600.png montage.sh
	./montage.sh

download:
	skicka download 'usda_1m.tif' .
	skicka download 'landsat_1m.tif' .

status:
	earthengine task list

clean:
	rm -rf *.png
