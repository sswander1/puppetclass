class skeleton {
file { '/etc/skel':
  ensure => 'directory',
  ctime  => '2017-03-20 13:53:40 +0000',
  group  => '0',
  mode   => '0777',
  mtime  => '2017-03-20 13:53:27 +0000',
  owner  => '0',
  }
file { '/etc/skel/.bashrc': 
  ensure => file,
  content => 'puppet:///modules/skeleton/.bashrc',
  }
}
