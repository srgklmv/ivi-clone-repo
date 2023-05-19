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
    git pull origin development
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

@REM IF EXIST "ivi-clone-persons-ms" (
@REM     echo Updating Local Repo ivi-clone-persons-ms
@REM     cd ivi-clone-persons-ms
@REM     git pull origin master
@REM     call npm i
@REM     cd ..
@REM     echo Local Repo has been updated
@REM ) ELSE (
@REM     echo Downloading Persons MS...
@REM     git clone https://github.com/srgklmv/ivi-clone-persons-ms
@REM     cd ivi-clone-persons-ms
@REM     call npm i
@REM     cd ..
@REM     echo Persons MS downloaded.
@REM )

@REM IF EXIST "ivi-clone-profiles-ms" (
@REM     echo Updating Local Repo ivi-clone-profiles-ms
@REM     cd ivi-clone-profiles-ms
@REM     git pull origin master
@REM     call npm i
@REM     cd ..
@REM     echo Local Repo has been updated
@REM ) ELSE (
@REM     echo Downloading Profiles MS...
@REM     git clone https://github.com/JcJet/ivi-clone-profiles-ms
@REM     cd ivi-clone-profiles-ms
@REM     call npm i
@REM     cd ..
@REM     echo Profiles MS downloaded.
@REM )

@REM IF EXIST "ivi-clone-auth-ms" (
@REM     echo Updating Local Repo ivi-clone-auth-ms
@REM     cd ivi-clone-auth-ms
@REM     git pull origin master
@REM     call npm i
@REM     cd ..
@REM     echo Local Repo has been updated
@REM ) ELSE (
@REM     echo Downloading Auth MS...
@REM     git clone https://github.com/JcJet/ivi-clone-auth-ms
@REM     cd ivi-clone-auth-ms
@REM     call npm i
@REM     cd ..
@REM     echo Auth MS downloaded.
@REM )

@REM IF EXIST "ivi-clone-comments-ms" (
@REM     echo Updating Local Repo ivi-clone-comments-ms
@REM     cd ivi-clone-comments-ms
@REM     git pull origin master
@REM     call npm i
@REM     cd ..
@REM     echo Local Repo has been updated
@REM ) ELSE (
@REM     echo Downloading Comments MS...
@REM     git clone https://github.com/JcJet/ivi-clone-comments-ms
@REM     cd ivi-clone-comments-ms
@REM     call npm i
@REM     cd ..
@REM     echo Comments MS downloaded.
@REM )

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

@REM IF EXIST "ivi-clone-roles-ms" (
@REM     echo Updating Local Repo ivi-clone-roles-ms
@REM     cd ivi-clone-roles-ms
@REM     git pull origin master
@REM     call npm i
@REM     cd ..
@REM     echo Local Repo has been updated
@REM ) ELSE (
@REM     echo Downloading Roles MS...
@REM     git clone https://github.com/JcJet/ivi-clone-roles-ms
@REM     cd ivi-clone-roles-ms
@REM     call npm i
@REM     cd ..
@REM     echo Roles MS downloaded.
@REM )

echo Downloading complete! Now you can start application using docker-compose.
pause