control "SV-219971" do
  title "The operating system must employ automated mechanisms to prevent program execution in 
accordance with the organization-defined specifications."
  desc "Operating systems are capable of providing a wide variety of functions and services. 
Execution must be disabled based on organization-defined specifications."
  desc "check", "Identify the packages installed on the system. 

# pkg list

Any unauthorized software 
packages listed in the output are a finding."
  desc "fix", "The Software Installation profile is required.

Identify packages installed on the 
system:

# pkg list

uninstall unauthorized packages:

# pfexec pkg uninstall [ package 
name]"
  impact 0.5
  tag severity: "medium"
  tag gtitle: "SRG-OS-000368"
  tag gid: "V-219971"
  tag rid: "SV-219971r603267_rule"
  tag stig_id: "SOL-11.1-020230"
  tag fix_id: "F-21680r370983_fix"
  tag legacy: ["V-47927","SV-60799"]
  tag cci: ["CCI-001764"]
  tag nist: ["CM-7 (2)"]
end