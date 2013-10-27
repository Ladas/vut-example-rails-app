vut-example-rails-app
=====================

Example app for presentation

cloned from https://github.com/RailsApps/learn-rails
created by http://railsapps.github.io/rails-composer/

Prerequisites
=============

rvm

    \curl -L https://get.rvm.io | bash
    source $HOME/.rvm/scripts/rvm
  
install ruby 2.0

    rvm install 2.0
  
switch to ruby 2.0 environment(default gemset)

    rvm use 2.0

create a gemset for your app and swith to it

    rvm gemset create 2.0@vut-example-rails-app
    rvm use 2.0@vut-example-rails-app.git

git

    yum install git
    apt-get install git  

sqlite dependencies

    sudo yum install sqlite-devel

Installation
============

git clone this repository

    git clone https://github.com/Ladas/vut-example-rails-app.git
    
go to the dir the and install all gems

    cd vut-example-rails-app
    bundle install

start the app

    rails server -e development -p 8080
