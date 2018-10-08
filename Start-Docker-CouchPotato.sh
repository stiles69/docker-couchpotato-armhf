#!/bin/bash
#====================================================
#
#          FILE: Start-Docker-CouchPotato.sh
# 
#         USAGE: ./Start-Docker-CouchPotato.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Brett Salemink (BS), admin@roguedesigns.us
#  ORGANIZATION: Rogue Designs
#       CREATED: 10/01/2018 00:08
#      REVISION:  ---
#====================================================
set -o nounset                              # Treat unset variables as an error

#------------ SOURCED ----------------

#-------------------------------------
#---------- GLOBAL VARIABLES ---------

#-------------------------------------
function Main ()
{

docker create \
	--name=couchpotato \
	-v /home/brettsalemink/development/Docker/docker-couchpotato-armhf/config:/config \
	-v /torrents:/downloads \
	-v /torrents/completed/Movies:/movies \
	-e PGID=1001 -e PUID=1001  \
	-e TZ=America/Chicago \
	-e UMASK_SET=022 \
	-p 5050:5050 \
	stiles/couchpotato




}	# end Main

Main

#===EXIT===
exit 0

