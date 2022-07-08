control "SV-216313" do
  title "The .Xauthority utility must only permit access to authorized hosts."
  desc "If unauthorized clients are permitted access to the X server, a user's X session may be 
compromised."
  desc "check", "If X Display Manager (XDM) is not used on the system, this is not applicable.

Determine if XDM 
is running. 

Procedure:
# ps -ef | grep xdm

Check the X Window system access is limited to 
authorized clients. 

Procedure:
# xauth 
xauth&gt; list

Ask the SA if the clients listed 
are authorized. 

If any are not, this is a finding."
  desc "fix", "Remove unauthorized clients from the xauth configuration.

Procedure:
# xauth remove 
&lt;display name&gt;"
  impact 0.5
  tag severity: "medium"
  tag gtitle: "SRG-OS-000480"
  tag gid: "V-216313"
  tag rid: "SV-216313r603267_rule"
  tag stig_id: "SOL-11.1-020550"
  tag fix_id: "F-17547r371028_fix"
  tag legacy: ["SV-75497","V-61029"]
  tag cci: ["CCI-000366","CCI-000225"]
  tag nist: ["CM-6 b","AC-6"]
end