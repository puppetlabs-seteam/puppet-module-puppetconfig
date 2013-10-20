Puppet::Type.newtype(:puppet_fs_mountpoint_ini_setting) do
  ensurable
  newparam(:name, :namevar => true) do
    desc 'Setting name to manage from fileserver.conf'
  end
  newproperty(:value) do
    desc 'The value of the setting to be defined.'
    munge do |v|
      v.to_s.strip
    end
  end
  newproperty(:setting) do
    desc 'The setting being defined.'
    munge do |s|
      s.to_s.strip
    end
    validate do |s|
      unless ['path', 'allow', 'deny'].include?(s)
        raise ArgumentError, "#{s} is not a valid setting"
      end
    end
  end
  newproperty(:section) do
    desc 'The mountpoint the setting is defined under.'
    munge do |s|
      s.to_s.strip
    end
  end
end
