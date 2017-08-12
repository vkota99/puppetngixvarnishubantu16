node 'puppets1.roc.mn.charter.com' {
#include profile::ssh
#include profile::sudoers
#include profile::users
#Install nginxserver user and group
 #include nginx::user
 #include role::cdn
#uninstalling nnginx server
  include nginx::uninstall
#Installing varnish
 # include role::cdn::varnish
#Remvoing the varnish
 include varnish::uninstall
}

