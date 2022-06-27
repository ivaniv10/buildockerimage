

##################################################################

## Shell Script to Build a Docker Image and push it to Dockerhub    

##################################################################

# get current date and time - it will be used for the image tag
function my_date {
  date "+%m-%d-%Y-%H-%M-%S"
}

# construct the full name of the image ($1 is the outside parameter passed to this script)
image_name="$MY_DOCKERHUB_USER/$1:$(my_date)"


# build the docker image (Dockerfile should be in the same folder as the bash script)
echo "$(my_date) - Start docker image ($image_name) build."
docker build -t $image_name .


echo "$(my_date) - Image build completed"


# push the image to Dockerhub
echo "$(my_date) - Start pushing the image to Dockerhub"
echo "$MY_DOCKERHUB_PASS" | docker login --username $MY_DOCKERHUB_USER --password-stdin
docker push $image_name

echo "$(my_date) - Image push to Docker hub is completed!"
