class useradd::install inherits useradd {

  package { $useradd::params::package_name:
    ensure => 'installed',
  }

}
