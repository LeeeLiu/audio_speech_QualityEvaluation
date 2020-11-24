# audio_speech_QualityEvaluation

## PEAQ (Perceptual Evaluation of Audio Quality)
1. matlab实现。环境：Win 10
2. 使用方法，见cal_ODG.m
3. 说明：输出 ODG值（-4 ~ 0），这个值越大，表示音质越好。
4. 音频类型：音乐。仅支持 48 kHz


## PESQ（Perceptual Evaluation of Speech Quality）
1. C实现。环境：Linux
2. 使用方法，见measurePESQ.py（调用已经Cmake编译好的可执行文件pesq）
3. 说明：PESQ值 范围 1.0 ~ 4.5，这个值越大，表示音质越好。
4. 音频类型：语音。16 kHz。

## 注意
1. 所有数据集目录，自行调整。
