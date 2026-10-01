# Game Scheduler Companion

> **Is this safe to download?** It is two short batch files, one web page
> you can read in Notepad, and an icon - nothing compiled, nothing installed.
> Releases are packaged by GitHub Actions straight from the tagged source, and
> each [release page](https://github.com/markosharknz1/Session_Organiser_Companion/releases/latest)
> shows the exact commit, a SHA-256 checksum, and a **VirusTotal scan** of the
> ZIP. It stores nothing on the computer except the name of the club's main
> computer, and it never talks to the internet - see [SECURITY.md](SECURITY.md).

Lets a **second computer** use the club's
[Game Scheduler](https://github.com/markosharknz1/Session_Organiser) - for a
second check-in desk, or a TV showing the courts.

Game Scheduler runs on one computer at the club (the *main computer*), which
keeps the club's data. The Companion opens that computer's Game Scheduler in
its own window on another computer, over the club's network. Both computers
are then looking at the same thing: check someone in on one and they appear
on the other straight away.

The Companion has no database and makes no copy of the club's data. If the
main computer is off, there is nothing for it to show.

## What you need

- Game Scheduler **v1.0.16 or later** running on the main computer.
- Both computers on the same network (the club's wifi or a cable).
- Microsoft Edge or Google Chrome on the second computer (Edge comes with
  Windows).

## Setting up

**On the main computer (once):**

1. Open Game Scheduler and go to **Settings > Club details > Other computers**.
2. Tick **Allow other devices on this network**, click Save, set an **access
   PIN** (4 to 8 digits), then close Game Scheduler and open it again.
3. Windows asks whether to let "Node.js JavaScript Runtime" through the
   firewall - click **Allow**.
4. The same Settings page now shows the computer's name to use, for example
   `CLUB-PC`, and a number address to fall back on.

**On the second computer:**

1. Download `GameSchedulerCompanion-vX.Y.Z.zip` from the
   [latest release](https://github.com/markosharknz1/Session_Organiser_Companion/releases/latest).
2. **Before extracting it**, right-click the ZIP > **Properties** > tick
   **Unblock** > **OK**. (Skip this and Windows shows a warning on first run -
   or, on a Windows 11 PC with Smart App Control on, refuses to run it.)
3. Extract it somewhere it can stay, such as `C:\Apps\Game_Scheduler_Companion`.
4. Double-click **`Game Scheduler Companion.cmd`**, type the main computer's
   name, and click **Connect**.
5. Enter the club's access PIN when asked (once - this computer stays signed
   in until the PIN is changed).

It opens the Check-in page and remembers the main computer, so from then on a
double-click goes straight in. For a desktop icon, right-click
`Game Scheduler Companion.cmd` > **Send to** > **Desktop (create shortcut)**.

To point it at a different main computer later, run
**`Change main computer.cmd`**.

## If it can't connect

On the main computer, check that:

- Game Scheduler is open.
- **Settings > Club details > Other computers** is ticked and says **On**. If
  it says "not active yet", close Game Scheduler and open it again.
- An access PIN has been set on that page - without one, other devices are
  refused and the Companion shows a notice saying so.
- Windows Firewall was allowed when it asked. If you clicked Cancel, open
  *Windows Security > Firewall & network protection > Allow an app through
  firewall* and tick "Node.js JavaScript Runtime" for Private networks.
- Both computers are on the same network, and the main computer's network is
  set to **Private**, not Public (*Settings > Network & internet*).

If the computer's name doesn't connect, use the number address shown on that
Settings page instead (for example `192.168.1.20`). That number can change
when the router restarts; the name does not.

## Without the Companion

The Companion is a convenience. Any device on the same network - a tablet, a
phone, a Mac - can open a web browser and go to
`http://<main computer's name>:4000`.

## What not to do

Do not install a second copy of Game Scheduler and point it at the main
computer's database file, or share that file through OneDrive or a network
drive. Two copies writing to one database lose data. One computer runs Game
Scheduler; every other screen connects to it.

## License

[MIT](LICENSE).
