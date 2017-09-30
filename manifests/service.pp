class nginx::service (
  String $service_ensure                = $::nginx::service_ensure,
  String $service_name                  = $::nginx::service_name,
  String $service_pattern               = $::nginx::service_pattern,
  Boolean $enable                       = $::nginx::service_enable,
  Boolean $hasstatus                    = $::nginx::service_hasstatus,
  Boolean $hasrestart                   = $::nginx::service_hasrestart,

){

  service { 'nginx_service' :
    ensure     => $service_ensure,
    name       => $service_name,
    enable     => $enable,
    hasstatus  => $hasstatus,
    hasrestart => $hasrestart,
    pattern    => $service_pattern,
  }

}
