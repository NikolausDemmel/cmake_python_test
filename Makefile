
# For me "~/work/CMake/Modules" points to the 2.8.12.1 release version
CMAKE_RELEASED_MODULES=~/work/CMake/Modules

# option 1: use released modules only
#CMAKE_CUSTOM_MODULES=$(CMAKE_RELEASED_MODULES)

# option 2: use the modules in this test-repo on top of released modules
CMAKE_CUSTOM_MODULES="$(shell pwd)/modules;$(CMAKE_RELEASED_MODULES)"


all: test test-interp test-2.7 test-2.7-interp test-2.6 test-2.6-interp test-3 test-3-interp

.PHONY: all test test-interp test-2.5 test-2.5-interp test-2.6 test-2.6-interp test-2.7 test-2.7-interp test-3 test-3-interp

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

test-3:
	rm -rf $@
	mkdir $@
	cd $@ && cmake .. -DVERSION=3 -DFIND_INTERP=NO -DCMAKE_MODULE_PATH=$(CMAKE_CUSTOM_MODULES)

test-3-interp:
	rm -rf $@
	mkdir $@
	cd $@ && cmake .. -DVERSION=3 -DFIND_INTERP=YES -DCMAKE_MODULE_PATH=$(CMAKE_CUSTOM_MODULES)
