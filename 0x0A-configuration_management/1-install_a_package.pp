# this code installs flask

package { 'Werkzeug':
  ensure    => '2.1.1',
  provider  => 'pip3',
  require   => Package['Flask'],
}

package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
