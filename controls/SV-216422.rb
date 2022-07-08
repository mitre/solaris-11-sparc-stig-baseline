control "SV-216422" do
  title "Groups assigned to users must exist in the /etc/group file."
  desc "Groups defined in passwd but not in group file pose a threat to system security since group 
permissions are not properly managed."
  desc "check", "The root role is required.

Check that groups are configured correctly.

# logins -xo | awk 
-F: '($3 == \"\") { print $1 }'

If output is produced, this is a finding."
  desc "fix", "The root role is required.

Correct or justify any items discovered in the Audit step. 
Determine if any groups are in passwd but not in group, and work with those users or group owners 
to determine the best course of action in accordance with site policy."
  impact 0.5
  tag severity: "medium"
  tag gtitle: "SRG-OS-000480"
  tag gid: "V-216422"
  tag rid: "SV-216422r603267_rule"
  tag stig_id: "SOL-11.1-070060"
  tag fix_id: "F-17656r371355_fix"
  tag legacy: ["SV-60987","V-48115"]
  tag cci: ["CCI-000366"]
  tag nist: ["CM-6 b"]
end