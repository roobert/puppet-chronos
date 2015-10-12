# == Class: chronos::service
#
# Ensure chronos is running
#
class chronos::service {
  service { 'chronos':
    ensure  => running,
    enable  => true,
    require => Class['::chronos::install']
  }
}
