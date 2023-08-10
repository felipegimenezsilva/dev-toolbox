# building podman dev-toolbox image
podman build -t dev-toolbox -f Dockerfile.dev-toolbox

# creating toolbox dev-toolbox (using the dev-toolbox image)
toolbox create --image dev-toolbox
