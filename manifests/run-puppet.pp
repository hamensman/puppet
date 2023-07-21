# Set up regular Puppet runs
file { '/usr/local/bin/run-puppet':
  source => '/etc/puppet/code/environments/production/files/run-puppet.sh',
  mode   => '0755',
}

exec { 'Check dir exists':
  command => 'mkdir /opt/puppetlabs/bin',
  creates => '/opt/puppetlabs/bin/',
}

cron { 'run-puppet':
  command => '/usr/local/bin/run-puppet',
  hour    => '*',
  minute  => '*/15',
}
