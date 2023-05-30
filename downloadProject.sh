#!/bin/bash


if [ -d ivi-clone-api-gateway ]
then
    echo Updating Local Repo ivi-clone-api-gateway
    cd ivi-clone-api-gateway
    git pull origin master
    npm i
    cd ..
    echo Local Repo has been updated
else
    echo Downloading API Gateway...
    git clone https://github.com/srgklmv/ivi-clone-api-gateway

    cd ivi-clone-api-gateway
    npm i

    cd ..
    echo API Gateway downloaded.
fi

if [ -d ivi-clone-genres-ms ]
then
    echo Updating Local Repo ivi-clone-genres-ms
    cd ivi-clone-genres-ms
    git pull origin master
    npm i
    cd ..
    echo Local Repo has been updated
else
    echo Downloading Genres MS...
    git clone https://github.com/srgklmv/ivi-clone-genres-ms

    git clone -b development https://github.com/srgklmv/ivi-clone-genres-ms

    cd ivi-clone-genres-ms
    npm i

    cd ..
    echo Genres MS downloaded.
fi

if [ -d ivi-clone-persons-ms ]
then
    echo Updating Local Repo ivi-clone-persons-ms
    cd ivi-clone-persons-ms
    git pull origin master
    npm i
    cd ..
    echo Local Repo has been updated
else
    echo Downloading Persons MS...
    git clone https://github.com/srgklmv/ivi-clone-persons-ms
    cd ivi-clone-persons-ms
    npm i
    cd ..
    echo Persons MS downloaded.
fi

if [ -d ivi-clone-profiles-ms ]
then
    echo Updating Local Repo ivi-clone-profiles-ms
    cd ivi-clone-profiles-ms
    git pull origin master
    npm i
    cd ..
    echo Local Repo has been updated
else
    echo Downloading Profiles MS...
    git clone https://github.com/JcJet/ivi-clone-profiles-ms
    cd ivi-clone-profiles-ms
    npm i
    cd ..
    echo Profiles MS downloaded.
fi

if [ -d ivi-clone-auth-ms ]
then
    echo Updating Local Repo ivi-clone-auth-ms
    cd ivi-clone-auth-ms
    git pull origin master
    npm i
    cd ..
    echo Local Repo has been updated
else
    echo Downloading Auth MS...
    git clone https://github.com/JcJet/ivi-clone-auth-ms
    cd ivi-clone-auth-ms
    npm i
    cd ..
    echo Auth MS downloaded.
fi

if [ -d ivi-clone-comments-ms ]
then
    echo Updating Local Repo ivi-clone-comments-ms
    cd ivi-clone-comments-ms
    git pull origin master
    npm i
    cd ..
    echo Local Repo has been updated
else
    echo Downloading Comments MS...
    git clone https://github.com/JcJet/ivi-clone-comments-ms
    cd ivi-clone-comments-ms
    npm i
    cd ..
    echo Comments MS downloaded.
fi

if [ -d ivi-clone-movies-ms ]
then
    echo Updating Local Repo ivi-clone-movies-ms
    cd ivi-clone-movies-ms
    git pull origin development
    npm i
    cd ..
    echo Local Repo has been updated
else
    echo Downloading Movies MS...
    git clone -b master https://github.com/IliaMrt/ivi-clone-movies-ms
    cd ivi-clone-movies-ms
    npm i
    cd ..
    echo Movies MS downloaded.
fi

if [ -d ivi-clone-roles-ms ]
then
    echo Updating Local Repo ivi-clone-roles-ms
    cd ivi-clone-roles-ms
    git pull origin master
    npm i
    cd ..
    echo Local Repo has been updated
else
    echo Downloading Roles MS...
    git clone https://github.com/JcJet/ivi-clone-roles-ms
    cd ivi-clone-roles-ms
    npm i
    cd ..
    echo Roles MS downloaded.
fi

read -n 1 -s -r -p "Downloading complete! Now you can start application using docker-compose."
