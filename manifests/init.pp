# Install prerequisite packages for LSST Pipelines
#
# @summary Install prerequisite packages for LSST Pipelines
#
# @example
#   include lsst_pipeline_prereq
class lsst_pipeline_prereq (
  Array[String[1], 1] $packages,
  String              $scl_yumrepo_baseurl,
#  String              $scl_yumrepo_gpgkeyurl,
) {

  ensure_resource('yumrepo', 'centos-sclo-rh', {
    'ensure'     => 'present',
    'baseurl'    => $scl_yumrepo_baseurl,
    'descr'      => 'CentOS-7 - SCLo rh',
    'enabled'    => 1,
    'gpgcheck'   => 0,
    'gpgkey'     => 'absent',
#    'gpgkey'     => $scl_yumrepo_gpgkeyurl,
    'mirrorlist' => 'absent',
  })

  exec { "clean centos-sclo-rh yum repo":
    subscribe   => Yumrepo['centos-sclo-rh'],
    refreshonly => true,
    path        => '/bin/:/sbin/:/usr/bin/:/usr/sbin/',
    command     => 'yum clean all --disablerepo=* --enablerepo=centos-sclo-rh',
    require     => [
      Yumrepo['centos-sclo-rh'],
    ],
  }

  Package {
    require => Yumrepo['centos-sclo-rh'],
  }
 
  ensure_packages( $packages, {'ensure' => 'present'} )

}
