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
   
   
Foreword
========

Ruby on Rails(RoR) is MVC framework. Is it? see e.g. http://stackoverflow.com/questions/1931335/what-is-mvc-in-ruby-on-rails
It's main purpose is application development.
    
Lesson 1
========

Scaffold
--------

We can easily generate parts of appliction. Lets say you have company that provides some services and you want to 
create and manage that services in our application.

    rails generate scaffold Service type:string company:string contact:string phone:string email:string description:text price:float price_with_vat:float payed:boolean

This creates also migration, which is a prescription for creating database table. You can create the database table by running:

    rake db:migrate
    rake -T # shows all available rakes, you can easily write your own rakes

STI
---

Single table inheritance(STI) is very usable when we have similar models (can be represented by almost the same database 
table) but we want different behaviour for them. Rails models uses the column 'type' for marking the type of the model. 
(For more informations, use google, there are many examples like this http://blog.thirst.co/post/14885390861/rails-single-table-inheritance)

Let's say we want to reckognize different kind of services, e.g Advertisement, Analysis, Web, Intranet ...

-1. add directory app/models/services app/models/services/advertisement.rb
-2. add a subclass of services to 

```
class Advertisement < Service
  validates_presence_of :email
end
```

-3. add app/controllers/advertisements_controller.rb

```
class AdvertisementsController < ServicesController
  def create
    @service = Advertisement.new(service_params)
    super
  end

  def new
    @service = Advertisement.new
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_service
    @service = Advertisement.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def service_params
    params.require(:advertisement).permit(:company, :contact, :phone, :email, :description, :price, :price_with_vat, :payed)
  end
end
```

-4. add line to config_routes.rb

```
resources :advertisements
```

-5. go to http://localhost:8080/webs/new in your browser


Checkout to branch that has steps above prepared
------------------------------------------------

    git fetch --all
    git checkout lesson_1


Explaning ruby parts on this example
------------------------------------

1. Ruby string and arrays in action
2. Explaining inheritance in ruby on STI models



Optional homework
-----------------

1. Optimize AdvertisementsController and WebsController, it duplicates to much code 
2. How would you deal when customer wants to order more services?



Lesson 2
========



Lesson 3
========

Deploy to openshift
