# Roblox Gun Equip UI Script

Gun Equip Inventory UI is a Roblox script that creates an equip button and adds a configured Gun Tool to the player's Roblox inventory and hotbar. It uses a client UI, a server RemoteEvent, and a ServerStorage Tool to provide a controlled Roblox gun equip system.

## Install

1. In Roblox Studio, create a `Tool` named `Gun` inside `ServerStorage`.
2. Add the gun model and weapon behavior to the `Gun` Tool.
3. If the gun should be held by the character, add a `BasePart` named `Handle` to the Tool.
4. Create a normal `Script` named `GunEquipServer.server.lua` inside `ServerScriptService`.
5. Add the server script from this project to that Script.
6. Create a `LocalScript` named `GunEquipGui.client.lua` inside `StarterGui`.
7. Add the client script from this project to that LocalScript.
8. Start a Play test. The server script creates the `ReplicatedStorage.EquipGun` RemoteEvent automatically.

## Use

1. Start the Roblox experience.
2. The Gun Locker UI appears for the player.
3. Click `EQUIP GUN`.
4. The server clones `ServerStorage.Gun` into the player's Backpack.
5. The copied Tool appears in the Roblox inventory and hotbar.
6. Clicking the button again does not create another copy while the player already has the Gun Tool in their Backpack or character.

The server only equips the fixed Tool named `Gun` from `ServerStorage`. The client cannot select a different item.

---

More Roblox script projects by EnderDevelopment: https://github.com/EnderDevelopment

Project page: https://dash.enderdevelopment.com/community/20c09f0e-3898-4789-9935-5911778a5e93?utm_source=github&utm_medium=readme&utm_campaign=auto_publish&utm_content=20c09f0e-3898-4789-9935-5911778a5e93
