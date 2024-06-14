# goldsrc-fake-servers-firewall
A repository listing all the IP address listing fake, bloaty servers, and creates a firewall rule on Windows, blocking them on the spot.

# The problem

Since the SteamPIPE update in 2013, which would bring the GoldSrc's query system as the same as all Source-based games, Counter-Strike 1.6 suffered from an exploit that would flood the masterservers with fake servers, deceiving players by redirecting all of them to a single, central server. Their purposes would be to scam people with fake, and potentially steal players' SteamIDs to simulate fake "active players". 

This problem does not only target Counter-Strike 1.6, but also Counter-Strike: Source, Half-Life 2: Deathmatch, Team-Fortress 2, Left 4 Dead 2, and even Counter-Strike 2, which present the same problematic issues as CS 1.6.

Despite being repeatedly reported on VALVe's Github repositories, and that the community insists it is a critical issue, **VALVe does not believe this is a problem, and is refusing to fix it since a whole decade**. On the contrary, according to them, their solution to prevent these from happening would simply to use a server token (GSLT) that you would generate along with the APPID to prove you made the server, as it has to be unique between each server. But, it only supports 3 games: TF2, CS2 and Garry's Mod, and does not fully fix the issue, especially on TF2's quickplay menu.

To make matters worse, this problem has been recently extended in Half-Life, shortly after the 25th anniversary update, where almost 75% of the servers listed were redirected to a single static server. 

Unfortunately for the community, and unlike any Source-based game, the GoldSRC's UI menu does not have any blacklisting options, meaning that blocking these fake servers within the game is **outright impossible**. 

# The Solution

Sadly there isn't much to do engine-sided. The only solution to prevent seeing these IPs is to get the IPs of the fake servers, and block outgoing connections to these IPs with a firewall rule.

This project was thus made to block these servers directly through a rule on your Windows firewall, so that it gets immediately filtered by your system, resulting in more honest servers.


# Spotting these fake servers

If you have doubts seeing a regular server or a fake server, you can quickly find out with these quick checks:

- Any server that has more than 32 players spots **is guaranteed** to be a fake server. GoldSRC can only support 32 players in a single server.
- When querying a server you think is suspicious, don't hesitate to repeat that operation a few times. If the server name, map or the player counter repeatedly changes, it's a fake server that can be safely blocklisted.

# What about Source?

Since the original scope of this project is GoldSRC games, we did not plan to include them on the list.

However, the Source Engine includes the ability to blocklist IPs through a file. So, if you are looking for a similar solution for the Source engine, please check out this repository that does the job for you : https://github.com/Ballganda/css-server-blacklist

# What about Linux / Steam Deck ?

Considering the increasing number of Steam Deck users, this is something we plan creating in a near future.