control "SV-219975" do
  title "The operating system must employ FIPS-validate or NSA-approved cryptography to implement 
digital signatures."
  desc "FIPS 140-2 is the current standard for validating cryptographic modules, and NSA Type-X 
(where X=1, 2, 3, 4) products are NSA-certified hardware based encryption modules."
  desc "check", "This check applies to the global zone only. Determine the zone that you are currently 
securing.

# zonename

If the command output is \"global\", this check applies.

The Crypto 
Management profile is required to execute this command.

Check to ensure that FIPS-140 
encryption mode is enabled.

# cryptoadm list fips-140| grep -c \"is disabled\"

If the 
output of this command is not \"0\", this is a finding."
  desc "fix", "The Crypto Management profile is required to execute this command.

This action applies to 
the global zone only. Determine the zone that you are currently securing.

# zonename

If 
the command output is \"global\", this action applies.

Enable FIPS-140 mode.

# pfexec 
cryptoadm enable fips-140

Reboot the system as requested."
  impact 0.5
  tag severity: "medium"
  tag gtitle: "SRG-OS-000396"
  tag gid: "V-219975"
  tag rid: "SV-219975r603267_rule"
  tag stig_id: "SOL-11.1-060060"
  tag fix_id: "F-21684r371298_fix"
  tag legacy: ["V-48183","SV-61055"]
  tag cci: ["CCI-002450"]
  tag nist: ["SC-13 b"]
end