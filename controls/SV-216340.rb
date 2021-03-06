control "SV-216340" do
  title "The operating system must require individuals to be authenticated with an individual 
authenticator prior to using a group authenticator."
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
  tag gtitle: "SRG-OS-000109"
  tag gid: "V-216340"
  tag rid: "SV-216340r603267_rule"
  tag stig_id: "SOL-11.1-040230"
  tag fix_id: "F-17574r371109_fix"
  tag legacy: ["V-48057","SV-60929"]
  tag cci: ["CCI-000770"]
  tag nist: ["IA-2 (5)"]
end