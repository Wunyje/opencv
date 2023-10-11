sudo apt -y update
sudo apt -y install cmake --fix-missing

sudo apt -y install aptitude
sudo aptitude -y install build-essential

mkdir build
cd build
sudo cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local/opencv470 -D OPENCV_GENERATE_PKGCONFIG=ON -D BUILD_opencv_java=OFF -D BUILD_opencv_python3=ON -D WITH_OPENMP=OFF -D WITH_GSTREAMER_0_10=OFF -D WITH_VTK=OFF -D WITH_LIBV4L=ON -D WITH_OPENMP=ON -D WITH_OPENGL=ON -D WITH_TBB=ON -D BUILD_SHARED_LIBS=ON -D ENABLE_PIC=ON -D WITH_ARITH_DEC=ON -D WITH_ARITH_ENC=ON -D WITH_FFMPEG=ON -D WITH_GSTREAMER=ON -D WITH_IMGCODEC_HDR=ON -D WITH_IMGCODEC_PXM=ON -D WITH_IMGCODEC_SUNRASTER=ON -D WITH_JASPER=ON -D WITH_JPEG=ON -D WITH_LAPACK=ON -D WITH_PNG=ON -D WITH_QT=ON -D WITH_PTHREADS_PF=ON -D WITH_TIFF=ON -D WITH_WEBP=ON -D WITH_GTK=ON -D WITH_OPENCL=ON ..
sudo make -j8
sudo make install

export LD_LIBRARY_PATH=/usr/local/opencv470 #示例,请修改为自己的opencv安装地址
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/opencv470 #示例,请修改为自己的opencv安装地址
export PKG_CONFIG_LIBDIR=$PKG_CONFIG_LIBDIR:/usr/local/opencv470 #示例,请修改为自己的opencv安装地址

sudo apt install clinfo
