# README

## Introduction

This repository contains the codebase for an administrator management database for KANM Radio, a prominent student radio organization at Texas A&M University. The application provides robust functionality for member and DJ management, allowing for the tracking of critical information and statistics respective to each member.

The development of the Admin Management database leveraged modern software engineering principles and best practices, guided by Professor Pauline Wade for the CSCE 431 course. Our team worked 100% fully agile, leveraging iterative development and continuous feedback to ensure a high-quality solution that meets the unique needs of KANM Radio.

The application was built on the Ruby on Rails framework, with an intuitive interface designed to streamline the management of member and DJ data. The application provides powerful tools for managing and monitoring key performance metrics, allowing administrators to make data-driven decisions and optimize operations.



## Requirements

This code has been run and tested on:

- Ruby - 3.1.2
- Rails - 7.0.4.2
- Ruby Gems - Listed in `Gemfile`
- PostgreSQL - 1.1
- Docker (Latest Container)
-	RuboCop - 1.48.0
-	Simplecov - 0.22.0
-	Brakeman - 5.2.3

## External Resources 

- Docker - Download latest version at https://www.docker.com/products/docker-desktop
- Heroku CLI - Download latest version at https://devcenter.heroku.com/articles/heroku-cli
- Git - Downloat latest version at https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
- GitHub Desktop (Not needed, but HELPFUL) at https://desktop.github.com/

## Documentation

Our product and sprint backlog can be found in Jira, with organization name KANMRadio and project name KANM

Document
•	Data Design - v2
•	UX Design - v2
•	User’s Manual - v1

## Tests

An RSpec test suite is available and can be ran using:

`rspec spec/`

You can run all the test cases by running. This will run both the unit and integration tests.

`rspec .`


# Running Locally 

Run docker image
`docker pull paulinewade/csce431:latest `

Create a directory, for example 
`mkdir csce431`

Move to that directory
`cd csce431`

Mount and run the docker image for ubuntu:
(add “sudo” in front of if permission denied for all the following commands)

`docker run -it --volume "$(pwd):/csce431" -e DATABASE_USER=test_app -e DATABASE_PASSWORD=test_password -p 3000:3000 paulinewade/csce431:latest`

You should now be in the docker container

Run the following code in ubuntu command line within the docter container

`git clone [https://github.com/FA21-CSCE431/project-sprint-3-zlp-interviewer.git]   (https://github.com/SP23-CSCE431/csce431-sprints-kanm-radio.git)`
 or 
`git clone [https://github.com/FA21-CSCE431/project-final-code-zlp-interviewer/] (https://github.com/SP23-CSCE431/csce431-sprints-kanm-radio.git)`

`cd csce431-sprints-kanm-radio`

`docker run --rm -it --volume "$(pwd):/rails_app" -e DATABASE_USER=test_app -e DATABASE_PASSWORD=test_password -p 3000:3000 dmartinez05/ruby_rails_postgresql:latest`


Install the app

`bundle install && rails webpacker:install && rails db:create && db:migrate`


Run the app
`rails server --binding:0.0.0.0`

The application can be seen using a browser and navigating to http://localhost:3000/members

## Environmental Variables/Files ##

Google OAuth2 support requires two keys to function as intended: Client ID and Client Secret

Create a new file called application.yml in the /config folder and add the following lines:

  `GOOGLE_OAUTH_CLIENT_ID: 'YOUR_GOOGLE_OAUTH_CLIENT_ID_HERE'`

  `GOOGLE_OAUTH_CLIENT_SECRET: 'YOUR_GOOGLE_OAUTH_CLIENT_SECRET_HERE'`


## Deployment ##

Setup a Heroku account: https://signup.heroku.com/

From the heroku dashboard select `New` -> `Create New Pipline`

Name the pipeline, and link the respective git repo to the pipline

Our application does not need any extra options, so select `Enable Review Apps` right away

Click `New app` under review apps, and link your test branch from your repo

Under staging app, select `Create new app` and link your main branch from your repo

--------

To add enviornment variables to enable google oauth2 functionality, head over to the settings tab on the pipeline dashboard

Scroll down until `Reveal config vars`

Add both your client id and your secret id, with fields `GOOGLE_OAUTH_CLIENT_ID` and `GOOGLE_OAUTH_CLIENT_SECRET` respectively

Now once your pipeline has built the apps, select `Open app` to open the app

With the staging app, if you would like to move the app to production, click the two up and down arrows and select `Move to production`

And now your application is setup and in production mode!


## CI/CD ##

For continuous development, we set up Heroku to automatically deploy our apps when their respective github branches are updated.

  `Review app: test branch`

  `Production app: main branch`

For continuous integration, we set up a Github action to run our specs, security checks, linter, etc. after every push or pull-request. This allows us to automatically ensure that our code is working as intended. The Github action names for these are Rspec, Brakeman, and Rubocop respectively. 

## References and Support ##

All support and references questions can be answered on the help page of the website. However, offline support documentation can be found here: 
https://drive.google.com/drive/folders/18ADXsXrc5H3QZRhVTpUbriePc-YQMCwC?usp=share_link
