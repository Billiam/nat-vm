# First time setup:

1. Clone project locally 
1. Run `vagrant up` to install and provision the virtual machine. This will take a few minutes.
1. When complete, SSH into the machine with `vagrant ssh`
1. enter `cd /vagrant` to change to the project directory
1. enter `bundle` to install the project gems
1. copy `config/database.yml.dist` to `config/database.yml`
1. copy `config/secrets.yml.dist` to `config/secrets.yml`
1. enter `bundle exec rake db:create`
1. enter `bundle exec foreman start`
1. visit `http://localhost:5000`
