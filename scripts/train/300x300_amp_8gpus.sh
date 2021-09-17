#!/usr/bin/env bash

python -m torch.distributed.launch --nproc_per_node=8 main.py \
	--backbone resnet50 \
	--warmup 300 \
	--bs 64 \
	--amp
