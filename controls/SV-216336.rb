control "SV-216336" do
  title "The system must require users to re-authenticate to unlock a graphical desktop environment."
  desc "Allowing access to a graphical environment when the user is not attending the system can allow 
unauthorized users access to the system."
  desc "check", "If the system is not running XWindows, this check does not apply.

Determine if the screen 
saver timeout is configured properly.

# grep \"^\\*timeout:\" 
/usr/share/X11/app-defaults/XScreenSaver

If the output is not:
*timeout: 0:15:00
or 
a shorter time interval, this is a finding.

# grep \"^\\*lockTimeout:\" 
/usr/share/X11/app-defaults/XScreenSaver

If the output is not:
*lockTimeout: 
0:00:05
or a shorter time interval, this is a finding.

# grep \"^\\*lock:\" 
/usr/share/X11/app-defaults/XScreenSaver

If the output is not:
*lock: True
this is a 
finding.

For each existing user, check the configuring of their personal .xscreensaver 
file.

# grep \"^timeout:\" $HOME/.xscreensaver

If the output is not:
timeout: 
0:15:00
or a shorter time interval, this is a finding.

# grep \"^lockTimeout:\" 
$HOME/.xscreensaver

If the output is not:
lockTimeout: 0:00:05
or a shorter time 
interval, this is a finding.

# grep \"^lock:\" $HOME/.xscreensaver

If the output is 
not:
lock: True
this is a finding."
  desc "fix", "The root role is required.

Edit the global screensaver configuration file to ensure 15 
minute screen lock.

# pfedit /usr/share/X11/app-defaults/XScreenSaver

Find the 
timeout control lines and change them to read:

*timeout: 0:15:00
*lockTimeout: 
0:00:05
*lock: True

For each user on the system, edit their local $HOME/.xscreensaver 
file and change the timeout values.

# pfedit $HOME/.xscreensaver

Find the timeout 
control lines and change them to read:

timeout: 0:15:00
lockTimeout: 0:00:05
lock: True"
  impact 0.5
  tag severity: "medium"
  tag gtitle: "SRG-OS-000028"
  tag gid: "V-216336"
  tag rid: "SV-216336r603267_rule"
  tag stig_id: "SOL-11.1-040170"
  tag fix_id: "F-17570r371097_fix"
  tag legacy: ["V-48045","SV-60917"]
  tag cci: ["CCI-000056"]
  tag nist: ["AC-11 b"]
end