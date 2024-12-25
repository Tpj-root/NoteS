# NoteS





https://www.libtorrent.org/projects.html



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













1. eDonkey (eDonkey2000)

    Purpose: eDonkey is a peer-to-peer (P2P) file-sharing network that allows users to share and download files.
    Key Features:
        Centralized server-based indexing.
        Files are divided into chunks and distributed across peers.
        Users can search for files through the eDonkey network.
        It uses a client-server model with a central server for indexing and finding files, but the actual transfer of files is P2P.
    File Sharing Protocol: eDonkey uses a proprietary protocol for file sharing and has a network of servers that help users locate files (like a centralized index).
    File Types: Any file type, including videos, music, software, etc.
    Clients: Popular clients like eMule and aMule support the eDonkey network.

2. BitTorrent (Torrent)

    Purpose: BitTorrent is another peer-to-peer (P2P) file-sharing protocol but with a focus on more efficient file distribution.
    Key Features:
        Decentralized (no central server needed for file indexing or searching).
        Files are split into smaller pieces, which are shared among peers, making the downloading process more efficient.
        Unlike eDonkey, there is no need for a central server to search for files; users directly download from peers.
        BitTorrent protocol is more optimized for handling large files, like movies or software.
    File Sharing Protocol: The BitTorrent protocol itself handles the file distribution process.
    File Types: Primarily large files such as movies, games, software, etc.
    Clients: Examples include uTorrent, qBittorrent, and BitTorrent.

Comparison:
Feature	eDonkey	BitTorrent (Torrent)
Primary Function	P2P file sharing with central server indexing	Decentralized P2P file sharing
File Distribution	Central server-based indexing and search	No central server; direct P2P sharing
File Types	Any type (audio, video, software, etc.)	Primarily large files (movies, software, etc.)
Protocol	eDonkey protocol with central indexing server	BitTorrent protocol with decentralized indexing
Clients	eMule, aMule, eDonkey client	uTorrent, qBittorrent, BitTorrent
Speed and Efficiency	Slower for large files (due to centralization)	More efficient for large files (due to decentralization)
Popularity	Less common today; eMule is the primary client	Very popular and widely used worldwide



Key Differences:

    Centralization:
        eDonkey uses a centralized server-based system for file indexing and search, making it more dependent on servers.
        BitTorrent is a fully decentralized system, which is more scalable and efficient because there is no central server bottleneck.

    File Transfer:
        eDonkey splits files into chunks but uses a centralized server to locate peers.
        BitTorrent splits files into chunks and directly connects peers to share the chunks.

    Efficiency:
        BitTorrent is generally considered more efficient and faster for large file transfers, thanks to its decentralized nature, which can handle massive traffic more effectively.
        eDonkey, while reliable for older content, is often slower because of the reliance on centralized servers.

    Popularity:
        BitTorrent is more widely used today, as it has become the standard for file-sharing.
        eDonkey (especially eMule) was more popular in the early 2000s but has seen a decline in use over time.

Conclusion:

    eDonkey is a centralized file-sharing protocol that relies on servers for indexing and searching for files, whereas BitTorrent is a decentralized P2P protocol with a more efficient method for distributing large files without the need for a central server.
    BitTorrent is more commonly used today and offers more scalability and efficiency, while eDonkey (via eMule) was more popular in the past and is still used by a smaller community.
    
    
    





Creating your own centralized server-based indexing for torrents involves setting up a server that can handle the process of indexing torrent files and providing a means for users to search and retrieve those files. You would essentially create a torrent tracker and a web interface for searching and managing torrents. Here’s how you can approach it:
1. Key Components for Centralized Torrent Indexing:

    Tracker: A server that helps peers find each other. The tracker does not host the actual torrent files but maintains a list of peers who are sharing the file.
    Indexer: This component indexes torrent files, allowing users to search for torrents by name, category, size, etc.
    Web Interface: A website or portal that allows users to browse, search, and download torrents.
    
    
    
2. Steps to Create Your Own Centralized Torrent Indexing System:
Step 1: Set up a Torrent Tracker

    A torrent tracker is essential for any centralized system. It keeps track of which peers are sharing a particular file.
    You can set up your own tracker using open-source software. Some popular open-source trackers are:
        XBT Tracker: A lightweight, high-performance tracker that is often used for custom torrent solutions.
        Opentracker: A very popular, efficient, and easy-to-set-up tracker software.
        Drift: A BitTorrent tracker written in Python, suitable for smaller, lightweight projects.
        Tribler: An advanced peer-to-peer network with its own tracker and decentralized features.



Installation Example with XBT Tracker:

    Clone the repository from GitHub: git clone https://github.com/arakashic/XBT-Tracker.git
    Follow the installation instructions in the repository to set up the tracker on your server.
    
    
Step 2: Torrent Indexing Software

The indexer will allow you to index the torrent files based on the metadata like file name, size, category, and other details.

    Custom Scripts: You can write custom scripts that will read .torrent files, extract metadata, and store the information in a database for easier searching.
        Use libraries like python-libtorrent or torrent-parser in Python to handle .torrent files.
    WebTorrent: If you're looking for something more complex, WebTorrent is an open-source solution that enables streaming of torrents and also includes indexing functionality.
    
    
import libtorrent as lt

def get_torrent_metadata(torrent_file):
    info = lt.torrent_info(torrent_file)
    print(f"Name: {info.name()}")
    print(f"Total size: {info.total_size()} bytes")
    print(f"Files: {len(info.files())}")



Step 3: Web Interface for Searching Torrents

A web interface allows users to search for torrents, view metadata, and download them.

    Custom Web Application: Build a simple web interface using PHP, Python (Flask/Django), or Node.js. You can integrate it with a database (MySQL, PostgreSQL) where you store the torrent metadata.
    Integrating with Tracker: The web interface will send search requests to your tracker, receive metadata from the tracker, and display the results to users.



You could use:

    PHP and MySQL for a simple, fast solution.
    Flask/Django (Python) for more flexibility and ease of integration with the backend.
    Node.js for a real-time search and interface.

Example of Web Interface Components:

    Search Page: A form where users can enter keywords to search for torrents.
    Results Page: Displays the search results with torrent metadata (name, size, category).
    Torrent Download Page: A page that generates a .torrent file or magnet link for users to download.
    
    
    
3. Software Available for Centralized Torrent Indexing:

Here are some open-source solutions for creating a centralized torrent index:

    Jackett:
        Jackett is an open-source software that acts as a proxy for torrent indexers and trackers. It integrates with various public and private trackers, allowing you to aggregate and index torrents.
        It's mostly used for integration with Sonarr, Radarr, and Plex, but you can also use it as a standalone indexer.
        GitHub link: Jackett

    RuTorrent:
        RuTorrent is a web-based torrent client with many features and plugin support, including searching and indexing.
        It includes features like file management, downloading, and a built-in tracker that can be used for indexing torrents.
        GitHub link: RuTorrent

    Torrents.io:
        Torrents.io is a centralized torrent indexer that lets you create your own torrent search engine with support for multiple torrent sites.
        It’s a customizable solution that aggregates information from other trackers and shows search results on your website.

    Nyaa.si (Nyaa Indexer):
        Nyaa is a popular torrent index for anime. You can deploy a similar system by using Nyaa's open-source code.
        GitHub link: Nyaa.si

4. Considerations for Hosting Your Own Torrent Indexer:

    Legal Issues: Torrent indexing can be legally tricky depending on the content being indexed. Ensure that your platform is in compliance with local laws and regulations.
    Security: Make sure your server is secure and can handle potentially high traffic, especially if you’re running a public tracker/indexer.
    Scaling: If your indexer grows in size, you might need to consider load balancing, caching, and high-availability database setups to handle large volumes of data.

Conclusion:

To build your own centralized server-based torrent indexing system, you will need a torrent tracker (such as XBT Tracker or Opentracker), an indexing system to store torrent metadata, and a web interface for users to search and access the torrents. You can either build these components from scratch or use existing open-source software like Jackett or RuTorrent for an easier setup.



