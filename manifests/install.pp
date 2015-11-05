# == Class: chronos::install
#
# Install chronos package
#
class chronos::install {
  Exec['apt_update'] -> Package['mesos']

  package { 'chronos':
    ensure  => $::chronos::version,
    require => [
      Package['oracle-java8-installer'],
      Class['mesos::install'],
    ]
  }
}
