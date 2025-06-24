wall "Starting Minecraft Server..."
java -Xms4G -Xmx12G -XX:+UseG1GC -XX:+ParallelRefProcEnabled \
     -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions \
     -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=30 \
     -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M \
     -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 \
     -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 \
     -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem \
     -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=true -Dcom.mojang.eula.agree=true \
     -jar server.jar nogui
wall "Minecraft Server Closed!!!"
