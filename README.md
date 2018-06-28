# docker-lsdslam-dev-host

A basic Ubuntu-based Docker image containing the prerequisites for [aplcam](https://github.com/amarburg/aplcam) and [camera calibration](https://github.com/amarburg/camera_calibration).

Jobs are coordinated through the Makefile:

 - `make build` builds the Docker image
 - `make push`  pushes the latest image to Dockerhub
