class site::packages {

  package { 'build-essential':
    ensure => present
  }

  package { 'ntp':
    ensure => present
  }

  # Nokogiri dependencies
  package { ['libxml2', 'libxml2-dev', 'libxslt1-dev']:
    ensure => present
  }
  
  package { 'nodejs':
    ensure => present
  }
}
