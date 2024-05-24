#! /bin/bash

# Download Checkpoint
wget -P output/ https://huggingface.co/Mendel192/san/resolve/main/san_vit_b_16.pth

# Download datasets
wget https://cs.stanford.edu/~roozbeh/pascal-context/trainval.tar.gz
tar -xvf trainval.tar.gz
wget http://host.robots.ox.ac.uk/pascal/VOC/voc2010/VOCtrainval_03-May-2010.tar
tar -xvf VOCtrainval_03-May-2010.tar
wget https://codalabuser.blob.core.windows.net/public/trainval_merged.json
cp trainval_merged.json VOCdevkit/VOC2010/

wget http://host.robots.ox.ac.uk/pascal/VOC/voc2010/VOCtrainval_03-May-2010.tar
tar -xvf VOCtrainval_03-May-2010.tar
wget https://codalabuser.blob.core.windows.net/public/trainval_merged.json
cp trainval_merged.json VOCdevkit/VOC2010/
