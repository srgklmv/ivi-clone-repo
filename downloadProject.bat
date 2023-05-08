echo off

IF EXIST "ivi-clone-api-gateway" (
    echo Updating Local Repo ivi-clone-api-gateway
    cd ivi-clone-api-gateway
    git pull origin master
    cd ..
    echo Local Repo has been updated
) ELSE (
    echo Downloading API Gateway...
    git clone https://github.com/srgklmv/ivi-clone-api-gateway
    echo API Gateway downloaded.
)

IF EXIST "ivi-clone-genres-ms" (
    echo Updating Local Repo ivi-clone-genres-ms
    cd ivi-clone-genres-ms
    git pull origin master
    cd ..
    echo Local Repo has been updated
) ELSE (
    echo Downloading Genres MS...
    git clone https://github.com/srgklmv/ivi-clone-genres-ms
    echo Genres MS downloaded.
)

echo Downloading complete! Now you can start application using docker-compose.
pause
