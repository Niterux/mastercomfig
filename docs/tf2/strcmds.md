---
description: A list of all string commands in TF2.
search:
  exclude: true
...

# String commands

String commands, also known as strcmds or nonccmds, are strings forwarded over the network for processing, rather than being handled by the command system.

## Client string commands

This process occurs when a command is not found in the client, or when the `cmd` command is used to directly forward the command to the server. You can also run this for bots using `bot_command`.

There are a few types of client string commands:

* Engine client commands: these are special commands already registered on the client and server as console commands, but are handled through string forwarding. These are all listed in the cvarlist.
* Dispatch client commands: these are console commands only registered on the server (flagged as `GAMEDLL`), but are accepted to be run by the client. These are listed on the cvarlist as well.
* Client commands: these are all other commands, which are parsed manually by handlers through their string command and arguments. These are not listed on the cvarlist.

## List of client string commands

### In-Game menu commands

* `closedwelcomemenu`: handles what menu to display when joining the server (team or class menu depending on auto team). Useful to fix when you get stuck in spectator after closing MOTD.
* `team_ui_setup`: open team select
* `autoteam`: joins a team automatically.
* `menuopen`: open class menu
* `menuclosed`: close class menu
* `arena_changeclass`: changes class in arena mode
* `jointeam`: specify the team to change to, limited to every 2 seconds
* `joinclass`: specify the class to change to, limited to every 0.5 seconds
* `resetclass`: suicides and resets the player class in highlander mode
* `show_motd`: shows the MOTD
* `show_htmlpage`: shows a specified URL as MOTD
* `closed_htmlpage`: notifies the MOTD was closed
* `showroundinfo`: shows round info panel
* `voicemenu`: plays a voice command by menu and item index, ex: `voicemenu 1 2`
* `tournament_readystate`: set a team as ready.
* `tournament_teamname`: set the team name.
* `tournament_player_readystate`: set yourself as ready.
* `done_viewing_loot`: finishes viewing loot in MvM
* `ignoremsg`: says what chat messages to ignore. cycles between ignore none, ignore all, and ignore team.
* `Vote`: internal command for casting votes.
* `next_map_vote`: command for choosing between map selections in Casual, 0, 1 or 2.

### In-Game Actions

* `weapon_taunt`: does a taunt
* `taunt`: same as `weapon_taunt`
* `stop_taunt`: stops a long taunt
* `build`: builds a building or sapper
* `destroy`: destroys a building
* `eureka_teleport`: for the Eureka Effect, teleports home, or if specified, a specific location: 0 (home) or 1 (teleport exit)
* `extendfreeze`: extends death time by 2 seconds
* `pda_click`: play PDA click animation
* `boo`: while a ghost, says boo.
* `td_buyback`: buys back in MvM
* `loot_response`: plays voice line for getting loot in MvM game end. args: `common`, `rare`, `ultra_rare`.
* `coach_command`: when coaching, handles coaching instructions (attack, defend, look, go)
* `vehicleRole`: switches vehicle role index while in a vehicle.

### Developer

* `killtarget`: destroys an entity target by name/classname or uses picker. Only works with `developer 1` and `sv_cheats 1` when executed as the server host.
* `addcond`: adds player condition [by ID](https://wiki.teamfortress.com/wiki/Cheats#addcond)
* `removecond`: removes player condition by ID.
* `mp_playgesture`: play a gesture by name, requires `sv_cheats 1`
* `mp_playanimation`: play a sequence by name, requires `sv_cheats 1`
* `te`: spawns a test temp ent. Requires `sv_cheats 1`.
* `demorestart`: requests a full update packet from the server
* `fade`: fades the screen to a black tint
* `condump_on`: turn on Power Play, if there is another argument, will enable for the whole team.
* `condump_off`: turn off Power Play, if there is another argument, will disable for the whole team.

### Info

* `playerperf`: dumps player packet history
* `nextmap`: tells you the next map.
* `timeleft`: tells you the time left for the map.

### Spectator

* `spectate`: enters spectator mode
* `spec_goto`: spectates at coordinates x y z pitch yaw

### Voice

* `vban`: an internal command for sending a mask for telling the server what voice data from players to ignore due to muted status.
* `VModEnable`: tells the server to not send voice data (`0`) or to send voice data (`1`). Used to communicate the status of `voice_modenable`.

## Server string commands

This process occurs when the server wants the client to run a command which is flagged by `server_can_execute`.

You can use the `clientcmd` command or a `point_clientcommand` entity to send these commands.
