class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vmdan':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC3XaacDtuKrL2rUhXjiY3xRMSL4e2Tt1yKi+NGo+uFlauxQXmb0nrkM4K2qg+BopKkRuFQTaSTEsVC8vSv7KDsIlZG6Z+2o9xEfCCY7EoTWuTkEzP4OLgQ9KwD96zZLsw8d/Nyhwo9m0dYAg4Q9TnO3hDp5Pbwo3Sex5QTLPQb8YNYlKI7h86ttELW7QH/gjSlNyhJonoTjNVpFuNbt8KVn2z04rJ+CKavoUm1GX8f2dhq5/Ha3MVDEqEIdjc0l4ISBr5qov0WKO1zjpW0Q4J3n2uPnQhoOJ3Ng44/tPl7bKOqVKgUmoxguRj0E5lCur42X/Z4sr9rvDPb4Cj1CGTp',
	}  
}
