class nginx::install (
  String $package_name = $::nginx::package_name,
  String $ensure       = $::nginx::ensure,
){
  package{ 'Install Package':
    ensure => $ensure,
    name   => $package_name, 
  }
}
