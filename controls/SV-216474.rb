control "SV-216474" do
  title "The /etc/zones directory, and its contents, must have the vendor default owner, group, and 
permissions."
  desc "Incorrect ownership can result in unauthorized changes or theft of data."
  desc "check", "This check applies to the global zone only. Determine the zone that you are currently 
securing.

# zonename

If the command output is \"global\", this check applies.

Check the 
ownership of the files and directories.

# pkg verify system/zones

The command should 
return no output. If output is produced, this is a finding."
  desc "fix", "This check applies to the global zone only.  Determine the zone that you are currently 
securing.

# zonename

If the command output is \"global\", this check applies.

The 
Software Installation profile is required.

Change the ownership and permissions of the 
files and directories to the factory default. 

# pkg fix system/zones"
  impact 0.3
  tag severity: "low"
  tag gtitle: "SRG-OS-000480"
  tag gid: "V-216474"
  tag rid: "SV-216474r603267_rule"
  tag stig_id: "SOL-11.1-100010"
  tag fix_id: "F-17708r371505_fix"
  tag legacy: ["SV-60769","V-47897"]
  tag cci: ["CCI-000366"]
  tag nist: ["CM-6 b"]
end