# Main repository for [Ivi Clone backend](https://github.com/srgklmv/ivi-clone-repo)

<p align="center">
  <a href="https://nestjs.com/" target="blank"><img src="https://nestjs.com/img/logo-small.svg" width="200" alt="Nest Logo" /></a>
</p>


## Description

This application was developed by [Ilya Martens](https://github.com/IliaMrt), 
[Vladimiv Andreev](https://github.com/JcJet) and [Sergey Klimov](https://github.com/srgklmv) with NestJS 
framework as a part of education process and for education purposes only.

Application provides access to movies aggregator, including movies and persons (actors, directors etc.) database,
ability to create personal account and even became an admin to create and change
movies, genres and other data! But only with our (developers) willingness. :)

Now you can access the [**Application backend API reference**](http://193.32.203.137:4000/api#/) or 
the [**Application frontend client**](http://193.32.203.137:3000/). If servers are not down, for sure.

If you're interested in exploring application code, you have two options:
1. Clone this repository to your machine and run download script depends on what OS you are using;
2. Explore code via GitHub. References are represented below.

>Note: All directories has its own descriptions & instructions. 

Application repositories reference:
- [API Gateway](https://github.com/srgklmv/ivi-clone-api-gateway) - outer entry point to all microservices
- [Authentication Microservice](https://github.com/JcJet/ivi-clone-auth-ms) - provides ability to create accounts and manages logins
- [Comments Microservice](https://github.com/JcJet/ivi-clone-comments-ms) - provides ability to work with comments
- [Genres Microservice](https://github.com/srgklmv/ivi-clone-genres-ms) - genres part
- [Movies Microservice](https://github.com/IliaMrt/ivi-clone-movies-ms) - movies CRUD & lots of logic
- [Persons Microservice](https://github.com/srgklmv/ivi-clone-persons-ms) - provides persons CRUD & not so much logic
- [Profiles Microservice](https://github.com/JcJet/ivi-clone-profiles-ms) - separated logic for user profiles
- [Roles Microservice](https://github.com/JcJet/ivi-clone-roles-ms) - and for sure roles, where every civilian may become a superhero
 
Some of the microservices has access points not used on client side, 
so, to explore all abilities, we offer you to use API reference. 

## Requirements
- [Node.js](https://nodejs.org/en) (with [NPM](https://www.npmjs.com/))
- [RabbitMQ](https://www.rabbitmq.com/)
- [PostgreSQL](https://www.postgresql.org/)\
Optional (for deploying):
- [Docker](https://www.docker.com/)

## Deploy

To deploy the application, first of all, you need to clone all repositories to your PC. We suggest you to use
our download scripts from this repo for Windows & Linux. Scripts download packages for microservices too.

In order to run application, you can either use two ways:
1. Run it on localhost, starting every single microservice manually;
2. Using Docker.

For both methods instructions provided below.

### Deploy with Docker

Deploying with Docker is the easiest way to launch application simply because almost all environment 
variables are already configured. The only thing you should do is to set up few variables.

Exact steps:
1. Clone this repo to your machine;
2. Run download scripts provided by this repo;
3. Set up environment variables in API Gateway as mentioned in [instruction](https://github.com/srgklmv/ivi-clone-api-gateway#general-part-for-either-localhost--docker-launches)
4. Set up environment variables in Auth Microservice as mentioned in [instruction](https://github.com/JcJet/ivi-clone-auth-ms#for-docker)
5. Set up _JWT_SECRET_KEY_ variable in .docker.env in both repos (it should be similar);
6. Run docker-compose file placed in this repo.

>Note: If you clone repos manually, all cloned repos must be placed inside this repository folred or
> near the docker-compose file.

### Manual deploy on localhost

Using this method you will spend more time than using Docker, but here you can manage almost
all environment variables as you wish, check logs easily, change code, etc.

Exact steps: 
1. Clone this repo to your machine;
2. Run download scripts provided by this repo;
3. Configure all the environment variables for all microservices as mentioned inside instructions:
   - [API Gateway](https://github.com/srgklmv/ivi-clone-api-gateway#setting-up--running-service)
   - [Auth MS](https://github.com/JcJet/ivi-clone-auth-ms#for-localhost)
   - [Comments MS](https://github.com/JcJet/ivi-clone-comments-ms#for-localhost)
   - [Genres MS](https://github.com/srgklmv/ivi-clone-genres-ms#for-localhost)
   - [Movies MS](https://github.com/IliaMrt/ivi-clone-movies-ms#setting-up--running-service)
   - [Persons MS](https://github.com/srgklmv/ivi-clone-persons-ms#for-localhost)
   - [Profiles MS](https://github.com/JcJet/ivi-clone-profiles-ms#for-localhost)
   - [Roles MS](https://github.com/JcJet/ivi-clone-roles-ms#for-localhost)
4. Set up _JWT_SECRET_KEY_ variable in .dev.env in both Auth & API-G repos (it should be similar);
5. Manually start all microservices using command below:

```bash
$ npm run start:dev
```

## Test

Almost all of presented repos also provides testing. All instructions represented inside
repositories. Tests will be added with time.