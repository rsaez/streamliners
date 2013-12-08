# STREAMLINERS
============

Mission: Streamline patient forms for medical programs.

# Migrant Worker Health Program
This program sends volunteers to set up a field clinic to South Georgia to treat migrant workers and their families.

## Background
This project is a part of the Computing for Good class led by [Ellen Zegura](http://www.cc.gatech.edu/~ewz/Welcome.html) at the [Georgia Institute of Technology](http://www.gatech.edu).

## Setting up Ruby on Rails on Windows
By Ganesh Parameswaran on Saturday, October 19, 2013 at 3:06pm
This is assuming you have no version of ruby or rails installed in your system. If you need multiple versions you need to use RVM. This is for a single version of Ruby.
 
1. Download and install Ruby 2 from (http://rubyinstaller.org/downloads/)
 
2. Download the corresponding development kit and extract it in a directory say "RubyDevKit" from (http://rubyinstaller.org/downloads/)
 
3. In command prompt, change directory to RubyDevKit and type the command "ruby dk.rb init" 
 
4. Type the command "ruby dk.rb install"
 
5. Type "gem install rails"
 
For more detailed info about installing Development Kit (for multiple versions), go here https://github.com/oneclick/rubyinstaller/wiki/Development-Kit

### Running with the Web Frontend
If you want to run both the server and the [web frontend](https://github.com/Tanner/Mental-Health-Liberia-PEF-Client), there are a few more steps required.

1. Clone the [web frontend repository](https://github.com/Tanner/Mental-Health-Liberia-PEF-Client) to a convienent location.
2. Follow the instructions for the web frontend to build a the static site.
3. In the `public/` directory in the server app, make a symbolic link to the web frontend directory, i.e. `ln -s front-end-path dist`.
4. Once that is done, start the server and go to `0.0.0.0:3000/dist/` to view the client app and submit forms.

### Deployment
Information about deployment can be found in [DEPLOYMENT.md](DEPLOYMENT.md).

## API
Information about the read/write API can be found in [API.md](API.md).

## Users
Information about user creation/modification/management can be found in [USERS.md](USERS.md).

### Group Members
* Ryan Ashcraft
* Tanner Smith
* John Dugan
* Alex Satterly
* Melaena Roberts
