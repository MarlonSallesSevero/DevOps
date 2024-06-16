node 'default'{
  user { 'analista':
  ensure             => 'present',
  comment            => 'Analista',
  gid                => 2000,
  groups	     => ['g_ti'],
  home               => '/home/analista',
  password           => '!',
  password_max_age   => 90,
  password_min_age   => 0,
  password_warn_days => 7,
  provider           => 'useradd',
  shell              => '/bin/bash',
  uid                => 5001,
    }	


group {'g_ti' :
       ensure	=> present,
	gid	=> 2000,
	}

case $operatingsystem {	
 'Ubuntu', 'Debian' : {
 	package{ 'vim':
		ensure => installed,
		}
	}
  }	
}
