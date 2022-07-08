control "SV-216297" do
  title "The operating system must be configured to provide essential capabilities."
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
  tag gtitle: "SRG-OS-000095"
  tag gid: "V-216297"
  tag rid: "SV-216297r603267_rule"
  tag stig_id: "SOL-11.1-020220"
  tag fix_id: "F-17531r370980_fix"
  tag legacy: ["V-47925","SV-60797"]
  tag cci: ["CCI-000381"]
  tag nist: ["CM-7 a"]
end