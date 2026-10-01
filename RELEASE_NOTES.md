## Game Scheduler Companion v1.0.1

- README and SECURITY updated for the access PIN introduced in Game Scheduler v1.0.16: other devices enter the club's PIN once, then stay signed in. No change to the Companion's files themselves.

## Game Scheduler Companion v1.0.0

Lets a second computer use the club's [Game Scheduler](https://github.com/markosharknz1/Session_Organiser) - a second check-in desk, or a TV showing the courts. It opens the main computer's Game Scheduler over the club network; it has no database and keeps no copy of the club's data.

### Installing

**On the main computer (once):** in Game Scheduler v1.0.16 or later, go to **Settings > Club details > Other computers**, tick **Allow other devices on this network**, set an **access PIN**, save, and restart Game Scheduler. Click **Allow** when Windows Firewall asks. The page then shows the computer's name.

**On the second computer:**

1. Download **`GameSchedulerCompanion-v1.0.0.zip`** below.
2. **Before extracting it:** right-click the ZIP > **Properties** > tick **Unblock** > **OK**.
3. Extract it somewhere it can stay, for example `C:\Apps\Game_Scheduler_Companion`.
4. Double-click **`Game Scheduler Companion.cmd`**, type the main computer's name, and click **Connect**.

It remembers the main computer, so every later start goes straight to the Check-in page. For a desktop icon: right-click `Game Scheduler Companion.cmd` > **Send to** > **Desktop (create shortcut)**.

### Notes

- Both computers must be on the same network, and Game Scheduler must be open on the main one.
- While "Allow other devices" is on, anyone on that network can open Game Scheduler. Use the club's own network, not public wifi.
- Any device can also just browse to `http://<main computer's name>:4000`.
