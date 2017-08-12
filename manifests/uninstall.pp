class nginx::uninstall {

  #Stop the Service 
  service { 'nginx':
    ensure => stopped,
    enable => false,
  }
  # remove a package but leave its config files alone
  #package { 'nginx':
   # ensure => 'absent',
  #}

  # remove a package and purge its config files
 # package { 'nginx':
   # ensure => 'purged',
  #}
 
   # completely remove the nginx 
   exec { 'apt purge':
   command => 'apt-get purge nginx nginx-common -y',
   path    => '/usr/bin:/bin:/usr/sbin:/sbin',
   #provider => 'apt',
  }

  user { 'nginx':
    ensure => absent,
  }

  group { 'nginx':
    ensure => absent,
  }
 # remove welcome index files 
  exec { 'rm -rf /srv/www ':
   command => 'rm -rf /srv/www',
   path    => '/usr/bin:/bin:/usr/sbin:/sbin',
  }
   
 # remove nginx directory files 
 # exec { 'rm -rf /etc/nginx ':
   #command => 'rm -rf /etc/nginx',
  # path    => '/usr/bin:/bin:/usr/sbin:/sbin',
  #}
 
}


