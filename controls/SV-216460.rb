control "SV-216460" do
  title "The system must not have any unnecessary accounts."
  desc "Accounts providing no operational purpose provide additional opportunities for system 
compromise. Unnecessary accounts include user accounts for individuals not requiring 
access to the system and application accounts for applications not installed on the system."
  desc "check", "Check the system for unnecessary user accounts.

# getent passwd

Some examples of 
unnecessary accounts include games, news, gopher, ftp, and lp. If any unnecessary accounts 
are found, this is a finding."
  desc "fix", "The root role is required.

Remove all unnecessary accounts, such as games, from the 
/etc/passwd file before connecting a system to the network. Other accounts, such as news and 
gopher, associated with a service not in use should also be removed.

Identify unnecessary 
accounts.

# getent passwd

Remove unnecessary accounts.

# userdel [username]"
  impact 0.3
  tag severity: "low"
  tag gtitle: "SRG-OS-000480"
  tag gid: "V-216460"
  tag rid: "SV-216460r603267_rule"
  tag stig_id: "SOL-11.1-090040"
  tag fix_id: "F-17694r371469_fix"
  tag legacy: ["V-47979","SV-60851"]
  tag cci: ["CCI-000366"]
  tag nist: ["CM-6 b"]
end