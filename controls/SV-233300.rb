control "SV-233300" do
  title "The sshd server must bind the X11 forwarding server to the loopback address."
  desc "As enabling X11 Forwarding on the host can permit a malicious user to secretly open another X11 
connection to another remote client during the session and perform unobtrusive activities 
such as keystroke monitoring, if the X11 services are not required for the system's intended 
function, they should be disabled or restricted as appropriate to the user's needs.
By 
default, sshd binds the forwarding server to the loopback address and sets the hostname part 
of the DISPLAY environment variable to “localhost”.  This prevents remote hosts from 
connecting to the proxy display."
  desc "check", "Determine if the X11 forwarding server is bound to the loopback address.

# grep 
\"^X11UseLocalhost\" /etc/ssh/sshd_config

If the output of this command is 
not:

X11UseLocalhost yes

this is a finding."
  desc "fix", "The root role is required.

Modify the sshd_config file.

# vi 
/etc/ssh/sshd_config

Locate the line containing:

X11UseLocalhost 

Change it 
to:

X11UseLocalhost yes

Restart the SSH service.

# svcadm restart svc:/network/ssh"
  impact 0.5
  tag severity: "medium"
  tag gtitle: "SRG-OS-000480"
  tag gid: "V-233300"
  tag rid: "SV-233300r603280_rule"
  tag stig_id: "SOL-11.1-040331"
  tag fix_id: "F-36459r622213_fix"
  tag cci: ["CCI-000366"]
  tag nist: ["CM-6 b"]
end