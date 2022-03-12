APP_NAME=myapp
#upgrade pip
/usr/local/bin/python -m pip install --upgrade pip
#build image
docker build -t $APP_NAME .
docker images
#getting $mytag
# x="$PWD" && my_tag=${x#*home/} && echo $my_tag
# #actually tagging 
# docker tag myapp gcr.io/$my_tag
# #push to gcr
# docker push gcr.io/$my_tag