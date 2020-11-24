import os   
import argparse

parser = argparse.ArgumentParser()
parser.add_argument('--size_k', type=int, choices=[1,2,3,4,5,6,7], help='k means size group')    
args = parser.parse_args()
base_dir =  '../wave_data/int_16/16kHz_200pairs_k={}'.format(args.size_k)
REFERENCE_Dir = base_dir + '/cover/'
DEGRADED_Dir =  base_dir + '/stego/'

cover_list = os.listdir(REFERENCE_Dir)

cmd0 = "./pesq +16000  "
for i in range(len(cover_list)):
    command = cmd0 + REFERENCE_Dir+cover_list[i]+" "+DEGRADED_Dir+cover_list[i][0:-10]+"mapping.wav"
    os.system(command)
