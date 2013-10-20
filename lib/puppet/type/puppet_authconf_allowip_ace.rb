Puppet::Type.newtype(:puppet_authconf_allowip_ace) do
  ensurable
  newparam(:name, :namevar => true) do
    desc 'Resource name'
  end
  newproperty(:authconf_acl) do
    desc 'The ACL to add the ACE to'
    munge do |a|
      a.to_s.strip
    end
  end
  newproperty(:allow_ip) do
    desc 'An IP address or range of IP addresses allowed to access this type of request'
    munge do |a|
      a.to_s.strip
    end
  end
end
