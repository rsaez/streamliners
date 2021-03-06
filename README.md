# STREAMLINERS
=====

Mission: Streamline patient forms for Migrant Worker Health Program.

# Migrant Worker Health Program
This program sends volunteers to set up a field clinic to South Georgia to treat migrant workers and their families.

## Background
This project is a part of the Computing for Good class led by [Ellen Zegura](http://www.cc.gatech.edu/~ewz/Welcome.html) at the [Georgia Institute of Technology](http://www.gatech.edu).

## Using Nitrous.io to virtualize ROR on a web browser

This is a great solution for using ROR anywhere and its free.
http://railsapps.github.io/rubyonrails-nitrous-io.html

## Setting up Ruby on Rails on Windows

For a complete, updated guide go to: http://rolo928.wordpress.com/2014/08/17/2014-complete-guide-to-installing-ruby-2-0-and-rails-4-1-on-windows/

By Ganesh Parameswaran on Saturday, October 19, 2013 at 3:06pm
This is assuming you have no version of ruby or rails installed in your system. If you need multiple versions you need to use RVM. This is for a single version of Ruby.
 
1. Download and install Ruby 2 from (http://rubyinstaller.org/downloads/)
 
2. Download the corresponding development kit and extract it in a directory say "RubyDevKit" from (http://rubyinstaller.org/downloads/)
 
3. In command prompt, change directory to RubyDevKit and type the command "ruby dk.rb init" 
 
4. Type the command "ruby dk.rb install"
 
5. Type "gem install rails"
 
For more detailed info about installing Development Kit (for multiple versions), go here (https://github.com/oneclick/rubyinstaller/wiki/Development-Kit)

### create admin account
At the command line, Goto the project folder.
type the> rails console
> u = User.first
> u.role = "admin"
> u.save
> exit
Now log in using the first users username and password.

### Deployment
This app is deployed at (https://streamliners.herokuapp.com)

### Collaborators
-Rodolfo D Saez

-Abhishek Sinha

-Ganesh Parameswaran

-Ninshant Shah

-Harshit Gupta
