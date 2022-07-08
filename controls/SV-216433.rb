control "SV-216433" do
  title "The system must not allow users to configure .forward files."
  desc "Use of the .forward file poses a security risk in that sensitive data may be inadvertently 
transferred outside the organization. The .forward file also poses a secondary risk as it can 
be used to execute commands that may perform unintended actions."
  desc "check", "The root role is required.

# for dir in \\
`logins -ox | awk -F: '($8 == \"PS\") { print $6 }'`; 
do
ls -l ${dir}/.forward 2&gt;/dev/null
done

If output is produced, this is a finding."
  desc "fix", "The root role is required.

Remove any .forward files that are found.

# pfexec rm 
[filename]"
  impact 0.5
  tag severity: "medium"
  tag gtitle: "SRG-OS-000480"
  tag gid: "V-216433"
  tag rid: "SV-216433r603267_rule"
  tag stig_id: "SOL-11.1-070170"
  tag fix_id: "F-17667r371388_fix"
  tag legacy: ["SV-60937","V-48065"]
  tag cci: ["CCI-000366"]
  tag nist: ["CM-6 b"]
end