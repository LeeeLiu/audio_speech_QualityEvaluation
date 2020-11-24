#!/bin/sh

python convert2int16.py    --size_k  3 
python measurePESQ.py      --size_k  3  
python convert2int16.py    --size_k  5 
python measurePESQ.py      --size_k  5  
python convert2int16.py    --size_k  7 
python measurePESQ.py      --size_k  7 
