# NoteS



+feature_option(build_tests "build tests" ON)
+feature_option(build_examples "build examples" ON)
+feature_option(build_tools "build tools" ON)

+feature_option(gnutls "build using GnuTLS instead of OpenSSL" ON)




**Build**

git clone https://github.com/arvidn/libtorrent.git
git submodule update --init --recursive









mkdir build

cd build

cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_STANDARD=14 -G "Unix Makefiles" ..

make




sab@debian:~/Desktop/RUN_AND_BUILD/libtorrent/build$ ls
 bindings              libtorrent-rasterbar.so          Makefile
 CMakeCache.txt        libtorrent-rasterbar.so.2.0     'Migration (2023) [720p] [BluRay] [YTS.MX]'
 CMakeFiles            libtorrent-rasterbar.so.2.0.11   torrent-rasterbar-pkgconfig
 cmake_install.cmake   main2.cpp                        torrent_test
 LibtorrentRasterbar   main.cpp










g++ -o torrent_test main.cpp -I/home/sab/Desktop/RUN_AND_BUILD/libtorrent/include -L/home/sab/Desktop/RUN_AND_BUILD/libtorrent/build -ltorrent-rasterbar -lssl -lcrypto -lboost_system -lpthread





LD_LIBRARY_PATH=/home/sab/Desktop/RUN_AND_BUILD/libtorrent/build/ ./torrent_test




export LD_LIBRARY_PATH=/home/sab/Desktop/RUN_AND_BUILD/libtorrent/build:$LD_LIBRARY_PATH









g++ -o main3 main3.cpp -I/home/sab/Desktop/RUN_AND_BUILD/libtorrent/include -L/home/sab/Desktop/RUN_AND_BUILD/libtorrent/build -ltorrent-rasterbar -lssl -lcrypto -lboost_system -lpthread





magnet:?xt=urn:btih:3b94fb99eb3757bb5e3c8641cc7e4509eaa90dd1&dn=Migration%20%282023%29%20%5B720p%5D%20%5BBluRay%5D%20%5BYTS.MX%5D&tr=http%3A%2F%2F125.227.35.196%3A6969%2Fannounce&tr=http%3A%2F%2F210.244.71.25%3A6969%2Fannounce&tr=http%3A%2F%2F210.244.71.26%3A6969%2Fannounce&tr=http%3A%2F%2F213.159.215.198%3A6970%2Fannounce&tr=http%3A%2F%2F37.19.5.139%3A6969%2Fannounce&tr=http%3A%2F%2F37.19.5.155%3A6881%2Fannounce&tr=http%3A%2F%2F46.4.109.148%3A6969%2Fannounce&tr=http%3A%2F%2F87.248.186.252%3A8080%2Fannounce&tr=http%3A%2F%2Fasmlocator.ru%3A34000%2F1hfZS1k4jh%2Fannounce&tr=http%3A%2F%2Fbt.evrl.to%2Fannounce&tr=http%3A%2F%2Fbt.rutracker.org%2Fann&tr=https%3A%2F%2Fwww.artikelplanet.nl&tr=http%3A%2F%2Fmgtracker.org%3A6969%2Fannounce&tr=http%3A%2F%2Fpubt.net%3A2710%2Fannounce&tr=http%3A%2F%2Ftracker.baravik.org%3A6970%2Fannounce&tr=http%3A%2F%2Ftracker.dler.org%3A6969%2Fannounce&tr=http%3A%2F%2Ftracker.filetracker.pl%3A8089%2Fannounce&tr=http%3A%2F%2Ftracker.grepler.com%3A6969%2Fannounce&tr=http%3A%2F%2Ftracker.mg64.net%3A6881%2Fannounce&tr=http%3A%2F%2Ftracker.tiny-vps.com%3A6969%2Fannounce&tr=http%3A%2F%2Ftracker.torrentyorg.pl%2Fannounce&tr=https%3A%2F%2Finternet.sitelio.me%2F&tr=https%3A%2F%2Fcomputer1.sitelio.me%2F&tr=udp%3A%2F%2F168.235.67.63%3A6969&tr=udp%3A%2F%2F182.176.139.129%3A6969&tr=udp%3A%2F%2F37.19.5.155%3A2710&tr=udp%3A%2F%2F46.148.18.250%3A2710&tr=udp%3A%2F%2F46.4.109.148%3A6969&tr=udp%3A%2F%2Fcomputerbedrijven.bestelinks.nl%2F&tr=udp%3A%2F%2Fcomputerbedrijven.startsuper.nl%2F&tr=udp%3A%2F%2Fcomputershop.goedbegin.nl%2F&tr=udp%3A%2F%2Fc3t.org&tr=udp%3A%2F%2Fallerhandelenlaag.nl&tr=udp%3A%2F%2Ftracker.openbittorrent.com%3A80&tr=udp%3A%2F%2Ftracker.opentrackr.org%3A1337&tr=udp%3A%2F%2Ftracker.publicbt.com%3A80&tr=udp%3A%2F%2Ftracker.tiny-vps.com%3A6969



echo $LD_LIBRARY_PATH


export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH


