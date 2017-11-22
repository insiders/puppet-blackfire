# Configures the PHP extension
class blackfire::php::config inherits blackfire::php {

  $section = 'blackfire'

  ini_setting { 'blackfire.agent_socket':
    ensure  => present,
    path    => $ini_path,
    section => $section,
    setting => 'blackfire.agent_socket',
    value   => $::blackfire::php::params['agent_socket']
  }

  ini_setting { 'blackfire.agent_timeout':
    ensure  => present,
    path    => $ini_path,
    section => $section,
    setting => 'blackfire.agent_timeout',
    value   => $::blackfire::php::params['agent_timeout']
  }

  ini_setting { 'blackfire.server_id':
    ensure  => present,
    path    => $ini_path,
    section => $section,
    setting => 'blackfire.server_id',
    value   => $::blackfire::php::params['server_id']
  }

  ini_setting { 'blackfire.server_token':
    ensure  => present,
    path    => $ini_path,
    section => $section,
    setting => 'blackfire.server_token',
    value   => $::blackfire::php::params['server_token']
  }

  ini_setting { 'blackfire.log_level':
    ensure  => present,
    path    => $ini_path,
    section => $section,
    setting => 'blackfire.log_level',
    value   => $::blackfire::php::params['log_level']
  }

  ini_setting { 'blackfire.log_file':
    ensure  => present,
    path    => $ini_path,
    section => $section,
    setting => 'blackfire.log_file',
    value   => $::blackfire::php::params['log_file']
  }

}
