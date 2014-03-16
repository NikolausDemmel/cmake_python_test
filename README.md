cmake_python_test
=================

Testing cmake FindPythonLibs modules

This was put together in response to the discussion of issue at https://github.com/Homebrew/homebrew/issues/25118

The proof of concept implementation is based on https://github.com/qgis/QGIS/blob/master/cmake/FindPythonLibrary.cmake, so all credit to them.

### 1. Download

    git clone https://github.com/NikolausDemmel/cmake_python_test.git
    cd cmake_python_test

### 2. Run with released modules

    # 1. manually edit Makefile and adjust the value of appropriately CMAKE_RELEASED_MODULES
    # 2. run the makefile
    make
    # 3. observe output

My output (cropped) is: https://gist.github.com/NikolausDemmel/9392464#file-findpythonlibs-2-8-12-1
    
### 3. Run with proof of concept using sysconfig

    # 1. manually edit Makefile, comment the line after "# option 1: ...", and uncomment the line after "# option 2: ..."
    # 2. run the makefile
    make
    # 3. observe output
    
My output (cropped) is: https://gist.github.com/NikolausDemmel/9392464#file-findpythonlibs-sysconfig
