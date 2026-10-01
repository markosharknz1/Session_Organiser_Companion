## Game Scheduler Companion v1.0.1

Lets a second computer use the club's [Game Scheduler](https://github.com/markosharknz1/Session_Organiser) - a second check-in desk, or a TV showing the courts. It opens the main computer's Game Scheduler over the club network; it has no database and keeps no copy of the club's data.

### What's new

- Instructions updated for the **access PIN** in Game Scheduler v1.0.16: the second computer is asked for the club's PIN once, then stays signed in. The Companion's own files are unchanged from v1.0.0 - if you already have it, there is nothing to reinstall.

### Installing

**On the main computer (once):** in Game Scheduler v1.0.16 or later, go to **Settings > Club details > Other computers**, tick **Allow other devices on this network**, set an **access PIN**, save, and restart Game Scheduler. Click **Allow** when Windows Firewall asks. The page then shows the computer's name.

**On the second computer:**

1. Download **`GameSchedulerCompanion-v1.0.1.zip`** below.
2. **Before extracting it:** right-click the ZIP > **Properties** > tick **Unblock** > **OK**.
3. Extract it somewhere it can stay, for example `C:\Apps\Game_Scheduler_Companion`.
4. Double-click **`Game Scheduler Companion.cmd`**, type the main computer's name, and click **Connect**.
5. Enter the access PIN when asked.

It remembers the main computer and stays signed in, so every later start goes straight to the Check-in page. For a desktop icon: right-click `Game Scheduler Companion.cmd` > **Send to** > **Desktop (create shortcut)**.

### Notes

- Both computers must be on the same network, and Game Scheduler must be open on the main one.
- The connection is not encrypted. Use the club's own network, not public wifi.
- Any device can also just browse to `http://<main computer's name>:4000` and enter the PIN.
