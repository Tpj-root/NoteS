# NoteS



Build_python


sudo apt install build-essential python3-dev libboost-all-dev libssl-dev libgeoip-dev libtorrent-rasterbar-dev cmake


cmake .. -DBoost_INCLUDE_DIR=/usr/include/boost -Dpython3=ON
make
sudo python3 setup.py install



-----------


sudo dpkg --configure -a
sudo apt update
sudo apt install python3-pip
sudo apt install python3-venv





./b2 --with-python

sudo ./b2 install


The Boost C++ Libraries were successfully built!

The following directory should be added to compiler include paths:

    /home/sab/Desktop/RUN_AND_BUILD/boost_1_76_0

The following directory should be added to linker library paths:

    /home/sab/Desktop/RUN_AND_BUILD/boost_1_76_0/stage/lib







https://www.libtorrent.org/projects.html



include_directories(/home/sab/Desktop/RUN_AND_BUILD/boost_1_76_0)
link_directories(/home/sab/Desktop/RUN_AND_BUILD/boost_1_76_0/stage/lib)
target_link_libraries(your_target boost_system boost_filesystem boost_python3)





Build Boost from Source

```
sudo apt-get install build-essential g++ python3-dev autotools-dev libicu-dev libbz2-dev
sudo apt-get install libmpfr-dev libgmp-dev


df -h /usr/local
sudo chmod -R 755 /usr/local






wget https://boostorg.jfrog.io/artifactory/main/release/1.76.0/source/boost_1_76_0.tar.gz

tar -xzf boost_1_76_0.tar.gz
cd boost_1_76_0

./bootstrap.sh
sudo ./b2 install
```



sudo ./b2 pch=on


sudo ./b2 --clean
sudo ./b2 install

sudo ./b2 pch=off


Ensure GCC is correctly installed and accessible:
gcc --version


