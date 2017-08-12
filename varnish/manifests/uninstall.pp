class varnish::uninstall {

 #Stop the Service 
  service { 'varnish':
    ensure => stopped,
    enable => false,
  }
 
# completely remove the varnish 
   exec { 'apt-get remove':
   command => 'apt-get remove --auto-remove varnish -y',
   path    => '/usr/bin:/bin:/usr/sbin:/sbin',
   }

 #systemctl stop varnish
 #apt-get remove --auto-remove varnish -y
 #apt-get purge --auto-remove varnish -y 

 # completely remove the varnish configuration 
   exec { 'apt-get purge':
   command => 'apt-get purge --auto-remove varnish -y',
   path    => '/usr/bin:/bin:/usr/sbin:/sbin',
   }

}
