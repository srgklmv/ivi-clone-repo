echo off
echo Downloading API Gateway...
git clone https://github.com/srgklmv/ivi-clone-api-gateway
echo API Gateway downloaded.
echo Running 'npm i' for API Gateway...
cd ivi-clone-api-gateway
npm i
cd ..
echo API Gateway packages installed successfully!

echo Downloading complete! Now you can start application using docker-compose.
pause