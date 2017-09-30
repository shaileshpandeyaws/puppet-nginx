class nginx::service (
  String $service_ensure               = $::nginx::service_ensure,
  String $service_name                 = $::nginx::service_name,
  String $service_enable               = $::nginx::service_enable,
  String $service_pattern              = $::nginx::service_pattern,
  String $service_hasstatus            = $::nginx::service_hasstatus,
  String $service_hasrestart           = $::nginx::service_hasrestart,

){

  service { 'Restart nginx service' :
    ensure     => $service_ensure,
    name       => $service_name,
    enable     => $service_enable,
    hasstatus  => $service_hasstatus,
    hasrestart => $service_hasrestart,
    pattern    => $service_pattern,
  }

}
