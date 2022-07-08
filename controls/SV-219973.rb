control "SV-219973" do
  title "The system must restrict the ability of users to assume excessive privileges to members of a 
defined group and prevent unauthorized users from accessing administrative tools."
  desc "Allowing any user to elevate their privileges can allow them excessive control of the system 
tools."
  desc "check", "Verify the root user is configured as a role, rather than a normal user. 

# userattr type 
root

If the command does not return the word \"role\", this is a finding.

Verify at least one 
local user has been assigned the root role.

# grep '[:;]roles=root[^;]*' 
/etc/user_attr

If no lines are returned, or no users are permitted to assume the root role, 
this is a finding."
  desc "fix", "The root role is required.

Convert the root user into a role. 

# usermod -K type=role 
root

Add the root role to authorized users' logins. 

# usermod -R +root 
[username]

Remove the root role from users who should not be authorized to assume it.

# 
usermod -R -root [username]"
  impact 0.5
  tag severity: "medium"
  tag gtitle: "SRG-OS-000324"
  tag gid: "V-219973"
  tag rid: "SV-219973r603267_rule"
  tag stig_id: "SOL-11.1-040200"
  tag fix_id: "F-21682r371106_fix"
  tag legacy: ["SV-60927","V-48055"]
  tag cci: ["CCI-001170"]
  tag nist: ["SC-18 (4)"]
end