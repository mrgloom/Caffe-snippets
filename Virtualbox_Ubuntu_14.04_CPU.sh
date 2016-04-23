#install git
sudo apt-get -y install git

#install g++
sudo apt-get -y install g++

#install protobuf
sudo apt-get -y install libprotobuf-dev
sudo apt-get -y install protobuf-compiler

#install boost
sudo apt-get -y install --no-install-recommends libboost-all-dev

#install gflags
sudo apt-get -y install libgflags-dev

#install glog
sudo apt-get -y install libgoogle-glog-dev

#Install openblas
sudo apt-get -y install libopenblas-dev

#install opencv
sudo apt-get -y install libopencv-dev

#install hdf5
sudo apt-get -y install libhdf5-serial-dev

#install leveldb
sudo apt-get -y install libleveldb-dev

#install lmdb
sudo apt-get -y install liblmdb-dev

#install snappy
sudo apt-get -y install libsnappy-dev

cd ~/Downloads
#clone caffe master
git clone https://github.com/BVLC/caffe.git

cd caffe



make -j4
make -j4 test
make -j4 runtest

#For python support:

#install python-dev for python headers
sudo apt-get -y install python-dev

#install numpy
sudo apt-get -y install python-numpy

#install scikit-image
sudo apt-get -y install python-skimage

#install pip
#sudo apt-get -y install python-pip

#install protobuf for python
sudo pip install protobuf

make pycaffe
export PYTHONPATH=~/Downloads/caffe/python:$PYTHONPATH
