#! /bin/bash

python SAN/datasets/prepare_pcontext_sem_seg_459cls.py --img_dir VOCdevkit/VOC2010/ --save_dir SAN/datasets/pcontext_full/ --anno_dir trainval

python train_net.py --eval-only --config-file configs/san_clip_vit_res4_coco.yaml --num-gpus 1 OUTPUT_DIR ../output/trained_vit_b16 MODEL.WEIGHTS ../output/san_vit_b_16.pth DATASETS.TEST "('pcontext_full_sem_seg_val',)"
