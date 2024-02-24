
1. Create a folder in which you create your symfony project
2. Configure ddev a the container manager for your project
# Prerequistes


* Install ddev 
* Install docker desktop
* install composer in your linux instance

## Create the project folder , create symfony project and config ddev project

```sh

mkdir symfony-demo
cd symfony-demo
composer create-project symfony/skeleton ./
ddev config --php-version 8.1 --project-type=php --docroot=public --project-name=symfony-demo
ddev start
ddev composer install
```


Now you can acces your web app 

```sh
ddev describe
```

you should see something like :

![[img_1_20240224155434_b07c3be4.png]]

visit the url : https://symfony-demo.ddev.site/

Houra  :

![[img_2_20240224155434_b07c3be4.png]]

If you want a specific version of symfony

to know which version are available got to [packagist](https://packagist.org/packages/symfony/skeleton)


```
composer create-project symfony/skeleton ./ "7.0.x-dev" --ignore-platform-req php
```
Some errors could occured but your goal is to get the correct source code .  Once your run the `ddev start` all will be fine.

 
