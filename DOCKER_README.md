
## Docker Instruction:
*  `Set UID in .env`

        UID=1000

## Docker compose
- docker-compose up --build
- docker-compose up --build -d
- docker-compose down -v
- docker inspect 3d226681d8d2(container id for knowing container ip)

## Folder Permission

- chmod -R 775 storage
- chmod 755 storage bootstrap/cache

## Configure mySql

- docker exec -ti docker_db_1(container name) bash
- mysql -u root -p
- ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'root';

## Basic Laravel command
- docker exec -ti -u duser docker_app_1(container name) bash
- php artisan config:clear
- php artisan cache:clear
- php artisan migrate

## Ports are used
- php 8060
- mysql 3305
- phpmyadmin 8070

## Run app
- http://localhost:8060/
