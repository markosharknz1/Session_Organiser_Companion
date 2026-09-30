# Security and privacy

## What the Companion is

Three small files you can open in Notepad:

- `Game Scheduler Companion.cmd` - finds Microsoft Edge (or Google Chrome)
  on the computer and opens `connect.html` in its own window.
- `connect.html` - asks for the name of the club's main computer, checks it
  can be reached, remembers the name, and sends the window to that
  computer's Game Scheduler.
- `Change main computer.cmd` - opens the connect screen again.

There is no compiled program, no installer, no PowerShell, and nothing is
downloaded.

## What it stores

One thing: the name or address of the club's main computer, in the browser
storage of the Companion's own window (under
`%LocalAppData%\GameSchedulerCompanion`). Deleting that folder resets it.

It holds **no club data**. Players, payments and history stay in the
database on the main computer. The second computer only displays pages the
main computer sends it, the same as any web browser would.

## What it connects to

Only the computer you name, on port 4000, over the local network. It makes
no connection to the internet.

## What to be aware of

Letting a second computer in means turning on *Allow other devices on this
network* on the main computer. Game Scheduler has no sign-in, so while that
is on, **anyone on the same network can open it** - the Check-in page, the
player list, and Settings. Traffic between the computers is not encrypted.

So:

- Use it on the club's own network. Do not use it on public or shared wifi
  (a venue's guest network, for example).
- Turn the setting off on the main computer when you no longer need a second
  screen.

## Windows warnings you may see

Files extracted from a downloaded ZIP are marked by Windows as "from the
internet":

- **"Open File - Security Warning"** - click *Run*.
- **"Windows protected your PC"** (SmartScreen) - *More info* > *Run anyway*.
- **"Smart App Control blocked an app that may be unsafe"** - this cannot be
  bypassed for one file. Delete the extracted folder, right-click the ZIP >
  *Properties* > tick *Unblock* > *OK*, and extract it again.

## Verifying a download

Each release page shows the commit it was built from, a link to the
packaging log, a SHA-256 checksum, and a VirusTotal scan of the ZIP:

```powershell
Get-FileHash .\GameSchedulerCompanion-v1.2.3.zip -Algorithm SHA256
```

and compare against `SHA256SUMS.txt` on the release page.

## Reporting a problem

Open an issue on this repository, or email markosharkau@gmail.com.
