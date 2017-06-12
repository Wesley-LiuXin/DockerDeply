# DockerDeply
A service to learn docker 


## Build and Test

### Build/rebuild docker image

To build/rebuild the docker image, just run

    docker build -t cleanup_images_server . --rm

### Run tests


## Running

Just run

    docker run -d=true cleanup_images_server /bin/bash -c "python helloPython.py"