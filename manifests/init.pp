# == Class: chronos
#
# Installs chronos
#
# ['version']
#   Specify package version to install
class chronos (
  $version,
) {
  class { '::chronos::install': } ->
  class { '::chronos::service': }
}
