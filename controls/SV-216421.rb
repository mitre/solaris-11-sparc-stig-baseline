control "SV-216421" do
  title "There must be no user .rhosts files."
  desc "Even though the .rhosts files are ineffective if support is disabled in /etc/pam.conf, they 
may have been brought over from other systems and could contain information useful to an 
attacker for those other systems."
  desc "check", "The root role is required.

Check for the presence of .rhosts files.

# for dir in \\
`logins 
-ox | awk -F: '($8 == \"PS\") { print $6 }'`; do
find ${dir}/.rhosts -type f -ls 
2&gt;/dev/null
done

If output is produced, this is a finding."
  desc "fix", "The root role is required.

Remove any .rhosts files found.

# rm [file name]"
  impact 0.7
  tag severity: "high"
  tag gtitle: "SRG-OS-000480"
  tag gid: "V-216421"
  tag rid: "SV-216421r603267_rule"
  tag stig_id: "SOL-11.1-070050"
  tag fix_id: "F-17655r371352_fix"
  tag legacy: ["V-48119","SV-60991"]
  tag cci: ["CCI-000366"]
  tag nist: ["CM-6 b"]
end