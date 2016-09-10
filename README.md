# HOW TO RUN
docker create --net=host --name unifi -v </path/to/datastore>:/data tjsimmons/unifi-docker

# THE DATASTORE
The datastore passed in is used as a symlink for the Unifi /var/lib/unifi folder.

(https://community.ubnt.com/t5/UniFi-Wireless/changing-the-mongod-dbpath/td-p/1178765)
