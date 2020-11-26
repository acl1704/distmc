#!/bin/sh

cd $(dirname $0)

ADVANCED_PORTALS_VERSION=0.5.10
rm Advanced-Portals-*.jar
wget "https://github.com/sekwah41/Advanced-Portals/releases/download/$ADVANCED_PORTALS_VERSION/Advanced-Portals-$ADVANCED_PORTALS_VERSION-snapshot.jar"

wget "https://ci.nukkitx.com/job/GeyserMC/job/Geyser/job/master/lastSuccessfulBuild/artifact/bootstrap/bungeecord/target/Geyser-BungeeCord.jar"

# We can eventually do something like this... However, we're not going to do it now.
#wget "https://ci.nukkitx.com/job/GeyserMC/job/Floodgate/job/master/lastSuccessfulBuild/artifact/bungee/target/floodgate-bungee.jar"