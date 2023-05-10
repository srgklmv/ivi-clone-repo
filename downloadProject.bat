echo off

IF EXIST "ivi-clone-api-gateway" (
    echo Updating Local Repo ivi-clone-api-gateway
    cd ivi-clone-api-gateway
    git pull origin master
    npm i
    cd ..
    echo Local Repo has been updated
) ELSE (
    echo Downloading API Gateway...
    git clone https://github.com/srgklmv/ivi-clone-api-gateway
    cd ivi-clone-api-gateway
    npm i
    cd ..
    echo API Gateway downloaded.
)

IF EXIST "ivi-clone-genres-ms" (
    echo Updating Local Repo ivi-clone-genres-ms
    cd ivi-clone-genres-ms
    git pull origin master
    npm i
    cd ..
    echo Local Repo has been updated
) ELSE (
    echo Downloading Genres MS...
    git clone https://github.com/srgklmv/ivi-clone-genres-ms
    cd ivi-clone-genres-ms
    npm i
    cd ..
    echo Genres MS downloaded.
)

IF EXIST "ivi-clone-persons-ms" (
    echo Updating Local Repo ivi-clone-persons-ms
    cd ivi-clone-persons-ms
    git pull origin master
    npm i
    cd ..
    echo Local Repo has been updated
) ELSE (
    echo Downloading Persons MS...
    git clone https://github.com/srgklmv/ivi-clone-persons-ms
    cd ivi-clone-persons-ms
    npm i
    cd ..
    echo Persons MS downloaded.
)

echo Downloading complete! Now you can start application using docker-compose.
pause
