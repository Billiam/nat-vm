class site::postgresql {
  $pg_databases = ['nat_dev', 'nat_test', 'nat_prod']

  class { 'postgresql::server': }
  class { 'postgresql::server::contrib': }
  class { 'postgresql::client': }
  class { 'postgresql::lib::devel': }

  postgresql::server::role { "vagrant":
    password_hash => postgresql_password('vagrant', 'abcd1234'),
    superuser => true
  }

  postgresql::server::db { $pg_databases:
    user => 'vagrant',
    password => postgresql_password('vagrant', 'abcd1234')
  }
}
