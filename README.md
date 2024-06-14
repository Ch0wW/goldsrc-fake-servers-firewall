# goldsrc-fake-servers-firewall
A repository listing all the IP address that contains fake servers

# The problem

Since the SteamPIPE update in 2013, which would bring the GoldSrc's query system as the same as all Source-based games, Counter-Strike 1.6 suffered from an exploit that would flood the masterservers with fake servers, deceiving players by redirecting all of them to a single, central server. Their purposes would be to scam people with fake, and potentially steal players' SteamIDs to simulate fake "active players". This problem does not only target Counter-Strike 1.6, but also Counter-Strike: Source, Half-Life 2: Deathmatch, Team-Fortress 2, and even Counter-Strike 2, which are as problematic as CS 1.6.

Despite being a clear issue with this, VALVe does not believe this is a problem, and is refusing to fix it since a whole decade. On the contrary, according to them, their solution to prevent these from happening would simply to use a server token (GSLT) that you would generate along with the APPID to prove you made the server, as it has to be unique between each server. But, it only supports 3 games: TF2, CS2 and Garry's Mod, and does not fully fix the issue, especially on TF2's quickplay menu.

To make matters worse, this problem has been recently extended in Half-Life, shortly after the 25th anniversary update, where almost 90% of the servers listed were redirected to a same, static, server. 

Unfortunately for the community, and unlike any Source-based game, the GoldSRC's UI menu does not have any blacklisting options, meaning that blocking these fake servers within the game is **outright impossible**. 

# The Solution

To fix that issue... Sadly there aren't much to do. Only to get the IPs of the fake servers, and block them with a firewall rule.

This project was thus made to block these servers directly through a rule on your Windows firewall, so that it gets immediately filtered by your system, resulting in more honest servers.

# What about Source?
If you are looking for a similar solution for the Source engine, please check out this repository : https://github.com/Ballganda/css-server-blacklist
