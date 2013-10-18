# Defined type for managing fileserver.conf mountpoint entries. Uses
# puppet_fs_mountpoint_ini_setting for implementation.
define puppetconfig::fs_mountpoint (
  $path,
  $allow,
  $deny,
) {

  Puppet_fs_mountpoint_ini_setting {
    key_val_separator => ' ',
  }

  puppet_fs_mountpoint_ini_setting { "$title_path":
    section => $title,
    setting => 'path',
    value   => $path,
  }

  puppet_fs_mountpoint_ini_setting { "$title_allow":
    section => $title,
    setting => 'allow',
    value   => $allow,
  }

  puppet_fs_mountpoint_ini_setting { "$title_deny":
    section => $title,
    setting => 'deny',
    value   => $deny,
  }

}
