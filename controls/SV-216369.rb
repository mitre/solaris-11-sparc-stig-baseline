control "SV-216369" do
  title "The system must not respond to ICMP timestamp requests."
  desc "By accurately determining the system's clock state, an attacker can more effectively attack 
certain time-based pseudorandom number generators (PRNGs) and the authentication systems 
that rely on them."
  desc "check", "Determine if ICMP time stamp responses are disabled.

# ipadm show-prop -p 
_respond_to_timestamp -co current ip


If the output of both commands is not \"0\", this is a 
finding."
  desc "fix", "The Network Management profile is required.

Disable source respond to timestamp.

# 
pfexec ipadm set-prop -p _respond_to_timestamp=0 ip"
  impact 0.3
  tag severity: "low"
  tag gtitle: "SRG-OS-000480"
  tag gid: "V-216369"
  tag rid: "SV-216369r603267_rule"
  tag stig_id: "SOL-11.1-050020"
  tag fix_id: "F-17603r371196_fix"
  tag legacy: ["V-48169","SV-61041"]
  tag cci: ["CCI-000366"]
  tag nist: ["CM-6 b"]
end