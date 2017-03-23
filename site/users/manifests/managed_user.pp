define users::managed_user (
  $group = $title,
) {
  user { $title:
    ensure => present,
    home => "/home/${title}",
    managehome => true,
  }
  file { "/home/${title}/.ssh":
    ensure => directory,
    owner => $title,
    group => $group,
  }
}
