control "SV-216420" do
  title "Permissions on user .netrc files must be 750 or less permissive."
  desc ".netrc files may contain unencrypted passwords that can be used to attack other systems."
  desc "check", "The root role is required.

Check that permissions on user .netrc files are 750 or less 
permissive.

# for dir in \\
`logins -ox | awk -F: '($8 == \"PS\") { print $6 }'`; do
find 
${dir}/.netrc -type f \\( \\
-perm -g+r -o -perm -g+w -o -perm -g+x -o \\
-perm -o+r -o -perm -o+w 
-o -perm -o+x \\) \\
-ls 2&gt;/dev/null
done

If output is produced, this is a finding."
  desc "fix", "The root role is required. 

Change the permissions on users' .netrc files to 750 or less 
permissive.

# chmod 750 [file name]"
  impact 0.5
  tag severity: "medium"
  tag gtitle: "SRG-OS-000480"
  tag gid: "V-216420"
  tag rid: "SV-216420r603267_rule"
  tag stig_id: "SOL-11.1-070040"
  tag fix_id: "F-17654r371349_fix"
  tag legacy: ["V-48123","SV-60995"]
  tag cci: ["CCI-000366"]
  tag nist: ["CM-6 b"]
end