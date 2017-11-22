# Default parameters
class blackfire::params {
  $server_id = ''
  $server_token = ''
  $agent = {}
  $php = {}
  $manage_repo = true

  case $::osfamily {
    'debian': {
      if ($::operatingsystem == 'Ubuntu' and $::operatingsystemrelease >= '16.04') {
        $ini_path = '/etc/php/7.0/mods-available/blackfire.ini'
      } elsif (
        ($::operatingsystem == 'Ubuntu' and $::operatingsystemrelease < '14.04')
        or ($::operatingsystem == 'Debian' and $::operatingsystemmajrelease < '7')
      ) {
        $ini_path = '/etc/php5/conf.d/blackfire.ini'
      } else {
        $ini_path = '/etc/php5/mods-available/blackfire.ini'
      }
    }
    'redhat': {
      $ini_path = '/etc/php.d/zz-blackfire.ini'
    }
    default: {
      fail("\"${module_name}\" provides no repository information for OSfamily \"${::osfamily}\"")
    }
  }
}
