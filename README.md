This is an Sample Dockerized Web Application using Spring and its Boot Modules.
The Configurations files are made compatible with Google App Engine Deployment.

Commands:
1.gcloud auth login
2.gcloud config set project <<PROJECT_ID>>
3.gcloud builds submit --tag gcr.io/<<PROJECT_ID>>/<<IMAGE_ID>> .
4.(Run Locally) docker run --name <<CONTAINER_ID>> -v /usr/local/repo:/root/.m2 -p 8080:8080 gcr.io/<<PROJECT_ID>>/<<IMAGE_ID>>
5.gcloud app deploy
6.gcloud app logs tail -s default

Hit the Browser to check
https://<<PROJECT_ID>>.appspot.com/login
