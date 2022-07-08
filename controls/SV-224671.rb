control "SV-224671" do
  title "The operating system must identify potentially security-relevant error conditions."
  desc "Security functional testing involves testing the operating system for conformance to the 
operating system security function specifications, as well as for the underlying security 
model. The need to verify security functionality applies to all security functions. The 
conformance criteria state the conditions necessary for the operating system to exhibit the 
desired security behavior or satisfy a security property. For example, successful login 
triggers an audit entry."
  desc "check", "Ask the operator if DoD-approved SCAP compliance checking software is installed and run on a 
periodic basis.

If DoD-approved SCAP compliance checking software is not installed 
and/or not run on a periodic basis, this is a finding."
  desc "fix", "Install, configure, and run DoD-approved SCAP compliance checking software on a periodic 
basis. Review the output of the software and document any out-of-compliance issues."
  impact 0.5
  tag severity: "medium"
  tag gtitle: "SRG-OS-000445"
  tag gid: "V-224671"
  tag rid: "SV-224671r603267_rule"
  tag stig_id: "SOL-11.1-090270"
  tag fix_id: "F-26348r462440_fix"
  tag legacy: ["V-47903","SV-60775"]
  tag cci: ["CCI-002696"]
  tag nist: ["SI-6 a"]
end