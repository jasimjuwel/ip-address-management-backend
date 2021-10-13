# IP Address Management Solution 

[![Build Status](https://travis-ci.org/laravel/lumen-framework.svg)](https://travis-ci.org/laravel/lumen-framework)
[![Total Downloads](https://poser.pugx.org/laravel/lumen-framework/d/total.svg)](https://packagist.org/packages/laravel/lumen-framework)
[![Latest Stable Version](https://poser.pugx.org/laravel/lumen-framework/v/stable.svg)](https://packagist.org/packages/laravel/lumen-framework)
[![License](https://poser.pugx.org/laravel/lumen-framework/license.svg)](https://packagist.org/packages/laravel/lumen-framework)

IP Address Management Solution

## What's included
* [PHP 7.2.5](https://lumen.laravel.com/docs/8.x)
* [Lumen 7.0](https://lumen.laravel.com/docs/8.x)
* [Lumen config discover](https://github.com/chuckrincon/lumen-config-discover)
* [pearl/lumen-request-validate](https://packagist.org/packages/pearl/lumen-request-validate)
* [rap2hpoutre/laravel-log-viewer](https://github.com/rap2hpoutre/laravel-log-viewer) (to seee log base_url/logs)
* [tymon/jwt-auth](https://jwt-auth.readthedocs.io/en/develop/lumen-installation/)

## Installation:
* Clone the repo
* `cd` to the repository
* Copy `.env.example` to `.env`
* Configure `.env`
* Run `composer install --no-scripts`
* Run `php artisan jwt:secret`
* Run `php artisan cache:clear`
* Run `php artisan key:generate`
* Run `php artisan view:clear`
* Run `php artisan route:clear`
* Run `composer dump-autoload -o`
* Run `php artisan migrate`. Database will be created
* Run `php artisan db:seed`. User will be created
* View the site by
    * Either running `php artisan serve` (in a new terminal/command prompt)
    * Otherwise go to DOCKER_README.md for running the application in docker
## Instruction:
* `Postman collection`

        Postman collection & environment varriable added in project public/postman_collection folder
        Database script added in project public/DB folder

## Credintials:
- User : take any user's email from users table
- Pass : 123456

## Note:
- Please Let me know if you have any queries.
- I apologize if i am missing any test requirement.
