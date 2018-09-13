# caffe2-dockerfile

This is a temporary place to store a Dockerfile that builds Caffe2 out
of the PyTorch repo using their new build system. Eventually the
Dockerfiles in the PyTorch repo will be updated and this will be
irrelevant.

Build with a command like:
```
docker build -t nelsonje/caffe2 .
```

Run with a command like:
```
docker run -it --rm --runtime nvidia --network host -u $UID:$GID -e HOME=$HOME -p 8888:8888 -v $HOME:$HOME nelsonje/caffe2 sh -c "jupyter notebook --no-browser --ip 0.0.0.0 $HOME"
```
The script ```run.sh``` has this command in it. This will map your home directory into the Docker container, and fire up Jupyter with your home directory as its working directory.

You will of course need to have Docker, the NVIDIA drivers, and the NVIDIA Docker container runtime installed to use this. Here are instructions for each of these:
* https://docs.docker.com/install/linux/docker-ce/ubuntu/
* https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html#package-manager-installation
* https://github.com/NVIDIA/nvidia-docker

