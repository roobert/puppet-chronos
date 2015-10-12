# == Class: chronos::install
#
# Install chronos package
#
class chronos::install {
  package { 'chronos':
    ensure  => $::chronos::version,
    require => Class['java8']
  }
}
