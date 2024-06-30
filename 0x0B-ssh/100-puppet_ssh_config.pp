#!/usr/bin/env bash
# this script using Puppet to make changes to our configuration file

file { '/etc/ssh/ssh_config':
  ensure  => present,
  content => @("END"),
    # SSH client configuration
    Host *
        IdentityFile ~/.ssh/school
        PasswordAuthentication no
    | END
}
