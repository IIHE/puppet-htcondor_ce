# Class: htcondor_ce::params
class htcondor_ce::params {
  $pool_collectors     = hiera_array('htcondor_ce::pool_collectors', ['cm.cern.ch'])
  $condor_view_hosts   = hiera_array('htcondor_ce::condor_view_hosts', ['collector1.opensciencegrid.org:9619', 'collector2.opensciencegrid.org:9619'])
  $job_routes_template = 'htcondor_ce/job_routes.conf.erb'
  $ce_version          = hiera('htcondor_ce::ce_version', '1.20-1.el6')
  $lrms                = hiera('htcondor_ce::lrms', 'condor')
  $lrms_version        = hiera('htcondor_ce::lrms_version', '8.3.8-1.el6')
  $uid_domain          = $::domain
  $gsi_regex           = hiera('htcondor_ce::gsi_regex', '^\/DC\=ch\/DC\=cern\/OU\=computers\/CN\=(host\/)?([A-Za-z0-9.\-]*)$')
  $gsi_backend         = hiera('htcondor_ce::gsi_backend', 'argus')
  $use_static_shadow   = hiera('htcondor_ce::use_static_shadow', true)
  $manage_service      = hiera('htcondor_ce::manage_service', true)
  $argus_server        = hiera('htcondor_ce::argus_server', 'site-argus.cern.ch')
  $argus_port          = hiera('htcondor_ce::argus_port', 8154)
  $argus_resourceid    = hiera('htcondor_ce::argus_resourceid', 'http://authz-interop.org/xacml/resource/resource-type/ce')

  # bdii parameters
  $install_bdii        = hiera('htcondor_ce::install_bdii',true)
  $supported_vos       = hiera_array('htcondor_ce::supported_vos', ['atlas', 'cms', 'alice', 'lhcb', 'dteam'])
  $goc_site_name       = hiera('htcondor_ce::goc_site_name', '')
  $benchmark_result    = hiera('htcondor_ce::benchmark_result', '10.00-HEP-SPEC06')
  $execution_env_cores = hiera('htcondor_ce::execution_env_cores', 16)
  $election_type       = hiera('htcondor_ce::election_type', 'leader')
  $election_hosts      = $::fqdn
}
