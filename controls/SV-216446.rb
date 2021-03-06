control "SV-216446" do
  title "The system must be configured to store any process core dumps in a specific, centralized 
directory."
  desc "Specifying a centralized location for core file creation allows for the centralized 
protection of core files. Process core dumps contain the memory in use by the process when it 
crashed. Any data the process was handling may be contained in the core file, and it must be 
protected accordingly. If process core dump creation is not configured to use a centralized 
directory, core dumps may be created in a directory that does not have appropriate ownership 
or permissions configured, which could result in unauthorized access to the core dumps."
  desc "check", "Check the defined directory for process core dumps:

# coreadm | grep \"global core file 
pattern\"

If the parameter is not set, or is not an absolute path (does not start with a slash 
[/]), this is a finding."
  desc "fix", "The root role is required.

Set the core file directory and file pattern.

# coreadm -g 
/var/share/cores/core.%f.%p"
  impact 0.5
  tag severity: "medium"
  tag gtitle: "SRG-OS-000480"
  tag gid: "V-216446"
  tag rid: "SV-216446r603267_rule"
  tag stig_id: "SOL-11.1-080045"
  tag fix_id: "F-17680r371427_fix"
  tag legacy: ["V-95717","SV-104855"]
  tag cci: ["CCI-000366"]
  tag nist: ["CM-6 b"]
end