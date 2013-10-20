Puppet::Type.newtype(:puppet_authconf_acl) do
  ensurable
  newparam(:name, :namevar => true) do
    desc 'Resource name'
  end
  newproperty(:path) do
    desc 'Path prefix or regular expression to designate an ACE for'
    munge do |p|
      p.to_s.strip
    end
  end
  newproperty(:environment) do
    desc 'The environment to which the ACE applies'
    munge do |e|
      e.to_s.strip
    end
  end
  newproperty(:method) do
    desc 'The method(s) the ACE applies to'
    munge do |m|
      m.to_s.strip
    end
  end
  newproperty(:auth) do
    desc 'Whether the ACE matches authenticated requests'
    munge do |a|
      a.to_s.strip
    end
  end
end
