control "SV-216290" do
  title "The FTP daemon must not be installed unless required."
  desc "FTP is an insecure protocol."
  desc "check", "Determine if the FTP package is installed.

# pkg list service/network/ftp

If an 
installed package named \"service/network/ftp\" is listed and not required for operations, 
this is a finding."
  desc "fix", "The Software Installation Profile is required.

# pfexec pkg uninstall 
service/network/ftp"
  impact 0.7
  tag severity: "high"
  tag gtitle: "SRG-OS-000480"
  tag gid: "V-216290"
  tag rid: "SV-216290r603267_rule"
  tag stig_id: "SOL-11.1-020130"
  tag fix_id: "F-17524r370959_fix"
  tag legacy: ["SV-60783","V-47911"]
  tag cci: ["CCI-000366"]
  tag nist: ["CM-6 b"]
end