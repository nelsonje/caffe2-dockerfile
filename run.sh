#!/bin/bash

docker run \
       -it --rm --runtime nvidia \
       --network host \
       -p 8888:8888 \
       -u $UID:$GID \
       -e HOME=$HOME \
       -v $HOME:$HOME \
       nelsonje/caffe2 \
       sh -c "jupyter notebook --no-browser --ip 0.0.0.0 $HOME"

