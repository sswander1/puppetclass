class users {
file { '/etc/skel':
  ensure => 'directory',
  ctime  => '2017-03-20 13:53:40 +0000',
  group  => '0',
  mode   => '0755',
  mtime  => '2017-03-20 13:53:27 +0000',
  owner  => '0',
  type   => 'directory',
}
file { '/etc/skel/.bashrc': 
  ensure => file,
  content => ///site/skeleton/manifests/.bashrc,
  }
}
