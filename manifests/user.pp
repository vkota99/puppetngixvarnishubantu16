class nginx::user {
 group { 'nginx':
   ensure => present,
   gid    => 3000,
   }
  user { 'nginx':
  ensure => present,
  uid    => '3001',
  home   => '/home/nginx',
  shell  => '/bin/bash',
  groups => ['nginx'],
  managehome => no,
  require => Group['nginx']
  }
}
