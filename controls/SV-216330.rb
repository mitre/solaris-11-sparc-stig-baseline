control "SV-216330" do
  title "The system must require passwords to contain at least one special character."
  desc "Complex passwords can reduce the likelihood of success of automated password-guessing 
attacks."
  desc "check", "Check the MINSPECIAL setting.

# grep ^MINSPECIAL /etc/default/passwd

If the 
MINSPECIAL setting is less than 1, this is a finding."
  desc "fix", "The root role is required.
# pfedit /etc/default/passwd a

Locate the line containing: 


MINSPECIAL

Change the line to read:

MINSPECIAL=1"
  impact 0.5
  tag severity: "medium"
  tag gtitle: "SRG-OS-000266"
  tag gid: "V-216330"
  tag rid: "SV-216330r603267_rule"
  tag stig_id: "SOL-11.1-040100"
  tag fix_id: "F-17564r371079_fix"
  tag legacy: ["V-47991","SV-60863"]
  tag cci: ["CCI-001619"]
  tag nist: ["IA-5 (1) (a)"]
end