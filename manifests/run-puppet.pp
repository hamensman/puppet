# Set up regular Puppet runs
file { '/usr/local/bin/run-puppet':
  source => '/etc/puppet/code/environments/production/files/run-puppet.sh',
  mode   => '0755',
}

cron { 'run-puppet':
  command => '/usr/local/bin/run-puppet',
  hour    => '*',
  minute  => '*/15',
}

exec { 'Check dir exists':
  command => 'mkdir /opt/puppetlabs/bin',
  ensure => directory,
  onlyif => 'test ! -e /opt/puppetlabs/bin/'
}
