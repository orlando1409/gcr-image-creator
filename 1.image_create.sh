#chmod +x 1.image_create.sh ./1.image_create.sh myapp
#gcloud cheat sheet
#https://gist.github.com/pydevops/cffbd3c694d599c6ca18342d3625af97
APP_NAME=myapp #$1
PROJECT_ID=$(gcloud config get-value core/project 2>/dev/null) && echo $PROJECT_ID
git clone https://github.com/domcobb747/gcr-image-creator.git
mv gcr-image-creator $APP_NAME
cd $APP_NAME
/usr/local/bin/python -m pip install --upgrade pip
#build image
docker build -t $APP_NAME .
docker images
#0.1.tag.sh myapp
docker tag $APP_NAME gcr.io/$PROJECT_ID/$APP_NAME
docker images
docker push gcr.io/$PROJECT_ID/$APP_NAME

docker run -d -p 8888:8888 gcr.io/$PROJECT_ID/$APP_NAME:latest
docker ps
curl http://localhost:8888