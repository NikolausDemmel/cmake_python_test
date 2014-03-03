
#CMAKE_CUSTOM_MODULES=~/work/CMake/Modules
#CMAKE_CUSTOM_MODULES=./modules:~/work/CMake/Modules


all: test test-interp test-2.7 test-2.7-interp test-2.6 test-2.6-interp

.PHONY: all test test-interp test-2.5 test-2.5-interp test-2.6 test-2.6-interp test-2.7 test-2.7-interp

test:
	rm -rf $@
	mkdir $@
	cd $@ && cmake .. -DFIND_INTERP=NO -DCMAKE_MODULE_PATH=$(CMAKE_CUSTOM_MODULES)

test-interp:
	rm -rf $@
	mkdir $@
	cd $@ && cmake .. -DFIND_INTERP=YES -DCMAKE_MODULE_PATH=$(CMAKE_CUSTOM_MODULES)

test-2.5:
	rm -rf $@
	mkdir $@
	cd $@ && cmake .. -DVERSION=2.5 -DFIND_INTERP=NO -DCMAKE_MODULE_PATH=$(CMAKE_CUSTOM_MODULES)

test-2.5-interp:
	rm -rf $@
	mkdir $@
	cd $@ && cmake .. -DVERSION=2.5 -DFIND_INTERP=YES -DCMAKE_MODULE_PATH=$(CMAKE_CUSTOM_MODULES)

test-2.6:
	rm -rf $@
	mkdir $@
	cd $@ && cmake .. -DVERSION=2.6 -DFIND_INTERP=NO -DCMAKE_MODULE_PATH=$(CMAKE_CUSTOM_MODULES)

test-2.6-interp:
	rm -rf $@
	mkdir $@
	cd $@ && cmake .. -DVERSION=2.6 -DFIND_INTERP=YES -DCMAKE_MODULE_PATH=$(CMAKE_CUSTOM_MODULES)

test-2.7:
	rm -rf $@
	mkdir $@
	cd $@ && cmake .. -DVERSION=2.7 -DFIND_INTERP=NO -DCMAKE_MODULE_PATH=$(CMAKE_CUSTOM_MODULES)

test-2.7-interp:
	rm -rf $@
	mkdir $@
	cd $@ && cmake .. -DVERSION=2.7 -DFIND_INTERP=YES -DCMAKE_MODULE_PATH=$(CMAKE_CUSTOM_MODULES)
