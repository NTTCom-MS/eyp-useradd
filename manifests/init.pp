class useradd (
                $group    = '100',
                $home     = '/home',
                $inactive = '-1',
                $expire   = undef,
                $createmailspool = 'no',
                $shell    = '/sbin/nologin',
                $skel     = '/etc/skel',
              ) inherits useradd::params{

  class { '::useradd::install': } ->
  class { '::useradd::config': } ->
  Class['::useradd']

}
