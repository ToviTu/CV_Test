# Start from a PyTorch image with CUDA
FROM pytorch/pytorch:1.12.1-cuda11.3-cudnn8-runtime

# Set the working directory in the container
WORKDIR /app

RUN apt-get -y update; apt-get -y install \
    curl \
    unzip \
    nano \
    git \
    zip \
    vim \
    tmux \
    grep \
    make \
    build-essential \
    tar \
    wget
    
# Copy local scripts
COPY . .

# Download the necessary files
RUN pip install --upgrade pip
RUN apt-get install ffmpeg libsm6 libxext6  -y
# RUN pip install opencv-python-headless==4.5.5.64
RUN git clone https://github.com/MendelXu/SAN.git
RUN pip install torchvision==0.13.1+cu113 torchaudio==0.12.1 --extra-index-url https://download.pytorch.org/whl/cu113
RUN pip install cython scipy shapely timm h5py submitit scikit-image transformers==4.25.1 wandb setuptools numpy Pillow pycocotools~=2.0.4 fvcore tabulate tqdm ftfy regex opencv-python open_clip_torch cityscapesscripts tensorboard
RUN pip install 'git+https://github.com/facebookresearch/detectron2.git@v0.6'
RUN pip install 'git+https://github.com/zhanghang1989/detail-api.git/#egg=detail&subdirectory=PythonAPI'
