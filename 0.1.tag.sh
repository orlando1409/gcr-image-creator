#playground-s-11-c37be1d8/myapp
APP_NAME=myapp
PROJECT_ID=$(gcloud config get-value core/project 2>/dev/null) && echo $PROJECT_ID
#0.1.tag.sh myapp
docker tag $APP_NAME gcr.io/$PROJECT_ID/$APP_NAME
docker images