# IP Address Management Solution 

[![Build Status](https://travis-ci.org/laravel/lumen-framework.svg)](https://travis-ci.org/laravel/lumen-framework)
[![Total Downloads](https://poser.pugx.org/laravel/lumen-framework/d/total.svg)](https://packagist.org/packages/laravel/lumen-framework)
[![Latest Stable Version](https://poser.pugx.org/laravel/lumen-framework/v/stable.svg)](https://packagist.org/packages/laravel/lumen-framework)
[![License](https://poser.pugx.org/laravel/lumen-framework/license.svg)](https://packagist.org/packages/laravel/lumen-framework)

IP Address Management Solution

## What's included
* [Lumen 8](https://lumen.laravel.com/docs/8.x)
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
* Run `php artisan cache:clear`
* Run `php artisan key:generate`
* Run `php artisan view:clear`
* Run `php artisan route:clear`
* Run `composer dump-autoload -o`
* Run `php artisan migrate`. Database will be created:
* View the site by
    * Either running `php artisan serve` if you are not using vagrant homestead or laravel valet (in a new terminal/command prompt)
    * Otherwise go to your local dev url configured in vagrant

## Instruction:
*  `Postman collection`

        Postman collection added in project public folder


## Note:

I tried to follow the best practices, but any suggestion, modification is highly appreciated.
