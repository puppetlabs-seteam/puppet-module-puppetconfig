Puppet::Type.type(:puppet_fs_mountpoint_ini_setting).provide(
  :ini_setting,
  # set ini_setting as the parent provider
  :parent => Puppet::Type.type(:ini_setting).provider(:ruby)
) do
  # hard code the file path (this allows purging)
  def self.file_path
    '/etc/puppetlabs/puppet/fileserver.conf'
  end
end
