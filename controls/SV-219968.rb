control "SV-219968" do
  title "The operating system must configure auditing to reduce the likelihood of storage capacity 
being exceeded."
  desc "Overflowing the audit storage area can result in a denial of service or system outage."
  desc "check", "The Audit Configuration profile is required.

This check applies to the global zone only. 
Determine the zone that you are currently securing.

# zonename

If the command output is 
\"global\", this check applies.

Check the status of the audit system. It must be auditing.

# 
pfexec auditconfig -getplugin 

If the output of this command does not 
contain:

p_fsize=4M

this is a finding."
  desc "fix", "The Audit Control profile is required.

This action applies to the global zone only. 
Determine the zone that you are currently securing.

# zonename

If the command output is 
\"global\", this action applies.

Set the size of a binary audit file to a specific size. The 
size is specified in megabytes.

# pfexec auditconfig -setplugin audit_binfile 
p_fsize=4M

Restart the audit system.

# pfexec audit -s"
  impact 0.7
  tag severity: "high"
  tag gtitle: "SRG-OS-000341"
  tag gid: "V-219968"
  tag rid: "SV-219968r603267_rule"
  tag stig_id: "SOL-11.1-010410"
  tag fix_id: "F-21677r370914_fix"
  tag legacy: ["V-49621","SV-62545"]
  tag cci: ["CCI-001849"]
  tag nist: ["AU-4"]
end