# == Class: chronos::install
#
# Install chronos package
#
class chronos::install {
  package { 'chronos':
    ensure  => $::chronos::version,
    require => [
      Package['oracle-java8-installer'],
      Package['mesos'],
    ]
  }
}
