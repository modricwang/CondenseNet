#!/usr/bin/env bash


srun -p VIBackEnd1 -n1 --gres=gpu:1 --ntasks-per-node=1 \
python main.py --model condensenet -b 64 -j 12 cifar10 \
--stages 14-14-14 --growth 8-16-32 --gpu 0 --resume