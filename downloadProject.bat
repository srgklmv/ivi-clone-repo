echo off

IF EXIST "ivi-clone-api-gateway" (
    echo Updating Local Repo ivi-clone-api-gateway
    cd ivi-clone-api-gateway
    git pull origin master
    call npm i
    cd ..
    echo Local Repo has been updated
) ELSE (
    echo Downloading API Gateway...
    git clone https://github.com/srgklmv/ivi-clone-api-gateway
    cd ivi-clone-api-gateway
    call npm i
    cd ..
    echo API Gateway downloaded.
)

IF EXIST "ivi-clone-genres-ms" (
    echo Updating Local Repo ivi-clone-genres-ms
    cd ivi-clone-genres-ms
    git pull origin master
    call npm i
    cd ..
    echo Local Repo has been updated
) ELSE (
    echo Downloading Genres MS...
    git clone -b development https://github.com/srgklmv/ivi-clone-genres-ms
    cd ivi-clone-genres-ms
    call npm i
    cd ..
    echo Genres MS downloaded.
)

IF EXIST "ivi-clone-persons-ms" (
    echo Updating Local Repo ivi-clone-persons-ms
    cd ivi-clone-persons-ms
    git pull origin master
    call npm i
    cd ..
    echo Local Repo has been updated
) ELSE (
    echo Downloading Persons MS...
    git clone https://github.com/srgklmv/ivi-clone-persons-ms
    cd ivi-clone-persons-ms
    call npm i
    cd ..
    echo Persons MS downloaded.
)

IF EXIST "ivi-clone-profiles-ms" (
    echo Updating Local Repo ivi-clone-profiles-ms
    cd ivi-clone-profiles-ms
    git pull origin master
    call npm i
    cd ..
    echo Local Repo has been updated
) ELSE (
    echo Downloading Profiles MS...
    git clone https://github.com/JcJet/ivi-clone-profiles-ms
    cd ivi-clone-profiles-ms
    call npm i
    cd ..
    echo Profiles MS downloaded.
)

IF EXIST "ivi-clone-auth-ms" (
    echo Updating Local Repo ivi-clone-auth-ms
    cd ivi-clone-auth-ms
    git pull origin master
    call npm i
    cd ..
    echo Local Repo has been updated
) ELSE (
    echo Downloading Auth MS...
    git clone https://github.com/JcJet/ivi-clone-auth-ms
    cd ivi-clone-auth-ms
    call npm i
    cd ..
    echo Auth MS downloaded.
)

IF EXIST "ivi-clone-comments-ms" (
    echo Updating Local Repo ivi-clone-comments-ms
    cd ivi-clone-comments-ms
    git pull origin master
    call npm i
    cd ..
    echo Local Repo has been updated
) ELSE (
    echo Downloading Comments MS...
    git clone https://github.com/JcJet/ivi-clone-comments-ms
    cd ivi-clone-comments-ms
    call npm i
    cd ..
    echo Comments MS downloaded.
)

IF EXIST "ivi-clone-movies-ms" (
    echo Updating Local Repo ivi-clone-movies-ms
    cd ivi-clone-movies-ms
    git pull origin development
    call npm i
    cd ..
    echo Local Repo has been updated
) ELSE (
    echo Downloading Movies MS...
    git clone -b master https://github.com/IliaMrt/ivi-clone-movies-ms
    cd ivi-clone-movies-ms
    call npm i
    cd ..
    echo Movies MS downloaded.
)

IF EXIST "ivi-clone-roles-ms" (
    echo Updating Local Repo ivi-clone-roles-ms
    cd ivi-clone-roles-ms
    git pull origin master
    call npm i
    cd ..
    echo Local Repo has been updated
) ELSE (
    echo Downloading Roles MS...
    git clone https://github.com/JcJet/ivi-clone-roles-ms
    cd ivi-clone-roles-ms
    call npm i
    cd ..
    echo Roles MS downloaded.
)

echo Downloading complete! Now you can start application using docker-compose.
pause