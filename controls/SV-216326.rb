control "SV-216326" do
  title "The system must require at least eight characters be changed between the old and new passwords 
during a password change."
  desc "To ensure password changes are effective in their goals, the system must ensure old and new 
passwords have significant differences. Without significant changes, new passwords may be 
easily guessed based on the value of a previously compromised password."
  desc "check", "Check /etc/default/passwd to verify the MINDIFF setting.

# grep ^MINDIFF 
/etc/default/passwd

If the setting is not present, or is less than 8, this is a finding."
  desc "fix", "The root role is required.

# pfedit /etc/default/passwd 

Search for MINDIFF. Change the 
line to read:

MINDIFF=8"
  impact 0.5
  tag severity: "medium"
  tag gtitle: "SRG-OS-000072"
  tag gid: "V-216326"
  tag rid: "SV-216326r603267_rule"
  tag stig_id: "SOL-11.1-040060"
  tag fix_id: "F-17560r371067_fix"
  tag legacy: ["SV-60839","V-47967"]
  tag cci: ["CCI-000195"]
  tag nist: ["IA-5 (1) (b)"]
end