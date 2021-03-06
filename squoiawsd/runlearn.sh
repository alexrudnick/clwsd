#!/bin/bash

python3 learn.py \
  --sourcefn /space/output_es_qu/training.es.txt \
  --targetfn /space/output_es_qu/training.qu.txt \
  --alignfn /space/output_es_qu/training.align \
  --clusterfn ./europarl-c1000.paths \
