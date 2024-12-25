# NoteS

#Install Node.js 20+

```
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt install -y nodejs
```
# Verify the version:
```
node -v
npm -v
```




cd /home/sab/Desktop/SOFT_RUN
npm init
npm install -g cross-seed


if everything is working


```
cross-seed --help
```




2. Create a Config File


```
cross-seed gen-config

```


Output
```
sab@debian:~/Desktop/SOFT_RUN$ cross-seed gen-config
Configuration file created at /home/sab/.cross-seed/config.js

```

Here's an example of what your config.js might look like:



module.exports = {
	torznab: ["http://localhost:9696/1/api?apikey=123456"],
	torrentDir: "/path/to/torrent_dir",
	outputDir: "/path/to/output_dir",
	qbittorrentUrl: "http://username:password@localhost:8080",
	... several other settings you can read later ...
};




# my config
# https://www.cross-seed.org/docs/basics/getting-started




# https://www.cross-seed.org/docs/basics/options


module.exports = {
	torznab: ["http://localhost:9696/1/api?apikey=123456"],
	torrentDir: "/path/to/torrent_dir",
	outputDir: "/path/to/output_dir",
	qbittorrentUrl: "http://username:password@localhost:8080",
};



http://user:pass@localhost:9091/transmission/rpc




http://transmission:@localhost:9091/transmission/rpc

http://localhost:9091/transmission/rpc



action: "inject",

```

transmissionRpcUrl Examples (CLI)

cross-seed search --transmission-rpc-url http://transmission:8080/transmission/rpc
cross-seed search --transmission-rpc-url http://user:pass@localhost:8080

transmissionRpcUrl Examples (Config file)

transmissionRpcUrl: "http://transmission:8080/transmission/rpc",

transmissionRpcUrl: "http://username:password@localhost:9091/transmission/rpc",
```




http://transmission:12345@localhost:9091/transmission/rpc


Edit the Transmission settings file: Open the Transmission settings file to configure the username and password.



sudo nano /etc/transmission-daemon/settings.json




Clear the existing hashed password: First, you need to remove the existing rpc-password hash from the settings.json file.



transmission

"rpc-password": ""


    "rpc-password": "{25a8a41ca163e6fbbd210da9cab635a3102cccf4mzpCruZk",





# how to slove this




http://localhost:9091/transmission/rpc


401: Unauthorized

Unauthorized User. 48 unsuccessful login attempts.




http://www.amule.org/
http://www.emule-security.org/serverlist/

https://sourceforge.net/projects/amule/



#temp
/home/sab/.aMule









