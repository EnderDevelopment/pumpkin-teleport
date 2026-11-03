# PumpkinTeleport

PumpkinTeleport is a Roblox script that teleports players to each pumpkin in the EventPumpkins folder in the workspace, one by one, with a delay between each teleport. The script includes a GUI button to initiate the teleportation process and handles various edge cases such as missing pumpkins or CFrame values.

## Installation

1. Open Roblox Studio.
2. Create a new LocalScript in StarterPlayerScripts.
3. Copy the contents of `PumpkinTeleport.local.lua` into the script.
4. Ensure you have a folder named "EventPumpkins" in the workspace containing the pumpkins you want to teleport to.

## Usage

1. Run the game in Roblox Studio.
2. A GUI button labeled "RUN PUMPKINS" will appear on the player's screen.
3. Click the button to start the teleportation process. The button will display the current pumpkin number and total pumpkins being teleported to.
4. If no pumpkins are found, the button will display "0 FOUND" for one second before resetting to "RUN PUMPKINS".
5. After teleporting to all pumpkins, the button will display "DONE" for one and a half seconds before resetting to "RUN PUMPKINS".

---

More Roblox script projects by EnderDevelopment: https://github.com/EnderDevelopment

Project page: https://dash.enderdevelopment.com/community/be9244cd-7791-4416-9f84-e72bd2ab1353?utm_source=github&utm_medium=readme&utm_campaign=auto_publish&utm_content=be9244cd-7791-4416-9f84-e72bd2ab1353
