control "SV-216270" do
  title "The auditing system must not define a different auditing level for specific users."
  desc "Without auditing, individual system accesses cannot be tracked, and malicious activity 
cannot be detected and traced back to an individual account."
  desc "check", "This check applies to the global zone only. Determine the zone that you are currently 
securing.

# zonename

If the command output is \"global\", this check applies.

For each 
user on the system (not including root), check to see if special auditing flag configurations 
are set.

# userattr audit_flags [username]

If any flags are returned, this is a finding."
  desc "fix", "The root role is required.

This action applies to the global zone only. Determine the zone 
that you are currently securing.

# zonename

If the command output is \"global\", this 
action applies.

For each user on the system, remove all special audit configuration 
flags.

# usermod -K audit_flags= [username]"
  impact 0.3
  tag severity: "low"
  tag gtitle: "SRG-OS-000480"
  tag gid: "V-216270"
  tag rid: "SV-216270r603267_rule"
  tag stig_id: "SOL-11.1-010360"
  tag fix_id: "F-17504r370899_fix"
  tag legacy: ["SV-60705","V-47831"]
  tag cci: ["CCI-000366"]
  tag nist: ["CM-6 b"]
end