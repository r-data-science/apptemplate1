sudo docker build \
  -t apptemplate1:latest \
  -f inst/docker/Dockerfile \
  .

docker tag \
  apptemplate1:latest \
  bfatemi/apptemplate1:latest

docker push \
  bfatemi/apptemplate1:latest

# sudo docker pull \
#   bfatemi/apptemplate1:latest
#
# sudo docker run \
#   --name app-template-1 \
#   -p 3939:3939 \
#   --rm \
#   -dt bfatemi/apptemplate1:latest
