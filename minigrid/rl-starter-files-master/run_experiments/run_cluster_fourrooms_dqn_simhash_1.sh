#!/bin/bash

cd /bd_targaryen/users/jhu/temporal-invariance/minigrid/rl-starter-files-master/
source /bd_targaryen/users/jhu/anaconda3/bin/activate
conda activate minigrid

tag=dqn_simhash_repeat
seed=1

echo "start running $tag with seed $seed"
python3 -m scripts.train --simhash_repeat --algo dqn --env MiniGrid-FourRooms-v0 --eval_freq=2000 --seed $seed --frames=500000