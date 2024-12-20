#include <libtorrent/session.hpp>
#include <libtorrent/magnet_uri.hpp>
#include <libtorrent/torrent_info.hpp>
#include <libtorrent/add_torrent_params.hpp>
#include <libtorrent/alert_types.hpp>
#include <libtorrent/alert.hpp>
#include <iostream>
#include <vector>
#include <string>

int main() {
    try {
        // Initialize a session
        libtorrent::settings_pack settings;
        settings.set_int(libtorrent::settings_pack::alert_mask, libtorrent::alert::all_categories);
        libtorrent::session ses(settings);

        // Define a magnet link for the test (you can replace this with any valid magnet link)
        std::string magnet_uri = "magnet:?xt=urn:btih:186d06a87af0dc3d27f2459e70a94179ba8d1375&dn=photography-memes.jpg&tr=udp%3A%2F%2Ftracker.opentrackr.org%3A1337%2Fannounce&tr=udp%3A%2F%2Fopen.demonii.com%3A1337%2Fannounce&tr=udp%3A%2F%2Fopen.stealth.si%3A80%2Fannounce&tr=udp%3A%2F%2Ftracker.torrent.eu.org%3A451%2Fannounce&tr=udp%3A%2F%2Fexplodie.org%3A6969%2Fannounce&tr=udp%3A%2F%2Ftracker.qu.ax%3A6969%2Fannounce&tr=udp%3A%2F%2Ftracker-udp.gbitt.info%3A80%2Fannounce&tr=udp%3A%2F%2Fopentracker.io%3A6969%2Fannounce&tr=udp%3A%2F%2Fopen.free-tracker.ga%3A6969%2Fannounce&tr=udp%3A%2F%2Fexodus.desync.com%3A6969%2Fannounce&tr=http%3A%2F%2Ftracker.xiaoduola.xyz%3A6969%2Fannounce&tr=http%3A%2F%2Ftracker.vanitycore.co%3A6969%2Fannounce&tr=http%3A%2F%2Ftracker.lintk.me%3A2710%2Fannounce&tr=http%3A%2F%2Ftracker.dmcomic.org%3A2710%2Fannounce&tr=http%3A%2F%2Ftracker.bz%3A80%2Fannounce&tr=http%3A%2F%2Ftracker.bt-hash.com%3A80%2Fannounce&tr=http%3A%2F%2Fshubt.net%3A2710%2Fannounce&tr=http%3A%2F%2Fseeders-paradise.org%3A80%2Fannounce&tr=http%3A%2F%2Fhome.yxgz.club%3A6969%2Fannounce&tr=http%3A%2F%2Fbuny.uk%3A6969%2Fannounce";

        // Add the torrent
        libtorrent::add_torrent_params p;
        p.url = magnet_uri;
        libtorrent::torrent_handle th = ses.add_torrent(p);

        std::cout << "Added torrent: " << magnet_uri << std::endl;

        // Loop to check the status of the torrent
        while (true) {
            std::vector<libtorrent::alert*> alerts;
            ses.pop_alerts(&alerts);

            for (libtorrent::alert* a : alerts) {
                std::cout << a->message() << std::endl;
            }

            // Check if torrent is downloading
            if (th.is_valid() && th.status().state == libtorrent::torrent_status::downloading) {
                std::cout << "Torrent is downloading..." << std::endl;
            }

            // Exit condition (stop the test after some time or some other condition)
            // For example, stop after 60 seconds or after downloading starts
            // Sleep for a bit to avoid busy waiting
            std::this_thread::sleep_for(std::chrono::seconds(1));
        }
    } catch (const std::exception& e) {
        std::cerr << "Error: " << e.what() << std::endl;
    }

    return 0;
}

