APP_NAME=myapp
PROJECT_ID=$(gcloud config get-value core/project 2>/dev/null) && echo $PROJECT_ID
docker push gcr.io/$PROJECT_ID/$APP_NAME