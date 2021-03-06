control "SV-216378" do
  title "The system must set maximum number of half-open TCP connections to 4096."
  desc "This setting controls how many half-open connections can exist for a TCP port.

It is 
necessary to control the number of completed connections to the system to provide some 
protection against denial of service attacks."
  desc "check", "Determine if the number of half open TCP connections is set to 4096.

# ipadm show-prop -p 
_conn_req_max_q0 -co current tcp

If the value of \"4096\" is not returned, this is a finding."
  desc "fix", "The Network Management profile is required

Configure maximum TCP connections for IPv4 and 
IPv6.

# pfexec ipadm set-prop -p _conn_req_max_q0=4096 tcp"
  impact 0.5
  tag severity: "medium"
  tag gtitle: "SRG-OS-000480"
  tag gid: "V-216378"
  tag rid: "SV-216378r603267_rule"
  tag stig_id: "SOL-11.1-050110"
  tag fix_id: "F-17612r371223_fix"
  tag legacy: ["V-48207","SV-61079"]
  tag cci: ["CCI-000366"]
  tag nist: ["CM-6 b"]
end