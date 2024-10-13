#!/bin/bash
cd velocity
wget -O velocity.jar https://api.papermc.io/v2/projects/velocity/versions/3.3.0-SNAPSHOT/builds/436/downloads/velocity-3.3.0-SNAPSHOT-436.jar
while [ true ]; do
    java -Xms4096M -Xmx4096M -XX:+UseG1GC -XX:G1HeapRegionSize=4M -XX:+UnlockExperimentalVMOptions -XX:+ParallelRefProcEnabled -XX:+AlwaysPreTouch -XX:MaxInlineLevel=15 -jar velocity.jar

    echo Server restarting...
    echo Press CTRL + C to stop.
done
