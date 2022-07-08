control "SV-216329" do
  title "The system must require passwords to contain at least one numeric character."
  desc "Complex passwords can reduce the likelihood of success of automated password-guessing 
attacks."
  desc "check", "Check the MINDIGIT setting.

# grep ^MINDIGIT /etc/default/passwd

If the MINDIGIT 
setting is less than 1, this is a finding."
  desc "fix", "The root role is required.
# pfedit /etc/default/passwd 

Locate the line containing: 


MINDIGIT

Change the line to read:

MINDIGIT=1"
  impact 0.5
  tag severity: "medium"
  tag gtitle: "SRG-OS-000071"
  tag gid: "V-216329"
  tag rid: "SV-216329r603267_rule"
  tag stig_id: "SOL-11.1-040090"
  tag fix_id: "F-17563r371076_fix"
  tag legacy: ["SV-60861","V-47989"]
  tag cci: ["CCI-000194"]
  tag nist: ["IA-5 (1) (a)"]
end