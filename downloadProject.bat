echo off

IF EXIST "ivi-clone-api-gateway" (
    echo Updating Local Repo
    git pull origin main
    echo Local Repo has been updated
) ELSE (
    echo Downloading API Gateway...
    git clone https://github.com/srgklmv/ivi-clone-api-gateway
    echo API Gateway downloaded.
)

IF EXIST "ivi-clone-genres-ms" (
    echo Updating Local Repo
    git pull origin master
    echo Local Repo has been updated
) ELSE (
    echo Downloading Genres MS...
    git clone https://github.com/srgklmv/ivi-clone-genres-ms
    echo Genres MS downloaded.
)

cd ivi-clone-api-gateway
npm i
cd ..

echo Downloading complete! Now you can start application using docker-compose.
pause


