control "SV-216347" do
  title "Login services for serial ports must be disabled."
  desc "Login services should not be enabled on any serial ports that are not strictly required to 
support the mission of the system. This action can be safely performed even when console 
access is provided using a serial port."
  desc "check", "Determine if terminal login services are disabled.

# svcs -Ho state 
svc:/system/console-login:terma
# svcs -Ho state 
svc:/system/console-login:termb

If the system/console-login services are not 
\"disabled\", this is a finding."
  desc "fix", "The Service Operator profile is required.

Disable serial terminal services.

# pfexec 
svcadm disable svc:/system/console-login:terma
# pfexec svcadm disable 
svc:/system/console-login:termb"
  impact 0.5
  tag severity: "medium"
  tag gtitle: "SRG-OS-000480"
  tag gid: "V-216347"
  tag rid: "SV-216347r603267_rule"
  tag stig_id: "SOL-11.1-040310"
  tag fix_id: "F-17581r371130_fix"
  tag legacy: ["V-48087","SV-60959"]
  tag cci: ["CCI-000366"]
  tag nist: ["CM-6 b"]
end