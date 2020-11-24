from scipy.io import wavfile
import numpy as np
import os


def convert2int16(folder_source, folder_target):
    if not os.path.exists(folder_target+'/cover/'):
        os.makedirs(folder_target+'/cover/')
    if not os.path.exists(folder_target+'/stego/'):
        os.makedirs(folder_target+'/stego/')
    
    folder_cover = source_dir + '/cover/'
    folder_stego = source_dir + '/stego/'
    path_list = os.listdir(folder_cover)
    #for i in range(len(path_list)):
    for i in range(200):
        sample_rate, wav_0 = wavfile.read(folder_cover + path_list[i])        
        new_wav_cover = np.asarray(wav_0 * 32768.0, dtype=np.int16)
        wavfile.write(folder_target+'/cover/' + path_list[i], sample_rate, new_wav_cover)
        
        sample_rate, wav_1 = wavfile.read(folder_stego + path_list[i][0:-10]+"mapping.wav")        
        new_wav_stego = np.asarray(wav_1 * 32768.0, dtype=np.int16)
        wavfile.write(folder_target+'/stego/' + path_list[i][0:-10]+"mapping.wav", sample_rate, new_wav_stego)


import argparse
if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument('--size_k', type=int, choices=[1,2,3,4,5,6,7], help='k means size group')    
    args = parser.parse_args()
    
    source_dir = '/dat01/liuting/proj/waveglow_qiu/inverse/wav_syn/16kHz_1500pairs_k={}'.format(args.size_k)        
    target_dir = '../wave_data/int_16/16kHz_200pairs_k={}'.format(args.size_k)    

    convert2int16(source_dir, target_dir)
    