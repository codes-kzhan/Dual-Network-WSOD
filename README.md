# A Dual-Network Progressive Approach to Weakly Supervised Object Detection

By Xuanyi Dong, Deyu Meng, Fan Ma, Yi Yang. Accepted by ACM Multimedia 2017.

### Introduction

**Dual-Network** is a weakly supervised object detection framework leveraging deep CNNs.

### License

Dual-Network is released under the MIT License (refer to the LICENSE file for details).

### Citing Dual-Network

If you find Dual-Network useful in your research, please consider citing:


    @inproceedings{dong2017dual,
        title={A Dual-Network Progressive Approach to Weakly Supervised Object Detection},
        author={Dong, Xuanyi and Meng, Deyu and Ma, Fan and Yang, Yi},
        booktitle={Proceedings of the 2017 ACM on Multimedia Conference},
        pages={279--287},
        year={2017},
        organization={ACM}
    }
    @inproceedings{kantorov2016,
        title = {ContextLocNet: Context-aware Deep Network Models for Weakly Supervised Localization},
        author = {Kantorov, V., Oquab, M., Cho M. and Laptev, I.},
        booktitle = {Proc. European Conference on Computer Vision (ECCV), 2016},
        year = {2016}
    }
    @article{dai16rfcn,
        Author = {Jifeng Dai, Yi Li, Kaiming He, Jian Sun},
        Title = {{R-FCN}: Object Detection via Region-based Fully Convolutional Networks},
        Journal = {arXiv preprint arXiv:1605.06409},
        Year = {2016}
    }
    @inproceedings{girshick2015fast,
        title={Fast r-cnn},
        author={Girshick, Ross},
        booktitle={Proceedings of the IEEE international conference on computer vision},
        pages={1440--1448},
        year={2015}
    }


### Requirements: software

0. `Caffe` build for R-FCN (included in this repository, see `external/caffe`)
    - If you are using Windows, you may download a compiled mex file by running `fetch_data/fetch_caffe_mex_windows_vs2013_cuda75.m`
    - If you are using Linux or you want to compile for Windows, please recompile [our Caffe branch](https://github.com/daijifeng001/caffe-rfcn).
0.	MATLAB 2014a or later
 
    
### Requirements: hardware

GPU: Titan, Titan X, K40, K80.

### Demo
0.	Run `fetch_data/fetch_caffe_mex_windows_vs2013_cuda75.m` to download a compiled Caffe mex (for Windows only).
0.	Run `fetch_data/fetch_demo_model_ResNet101.m` to download a R-FCN model using ResNet-101 net (trained on VOC 07+12 trainval).
0.	Run `rfcn_build.m`.
0.	Run `startup.m`.
0.	Run `experiments/script_rfcn_demo.m` to apply the R-FCN model on demo images.

### Preparation for Training & Testing
0.	Run `fetch_data/fetch_caffe_mex_windows_vs2013_cuda75.m` to download a compiled Caffe mex (for Windows only).
0.	Run `fetch_data/fetch_model_ResNet50.m` to download an ImageNet-pre-trained ResNet-50 net.
0.	Run `fetch_data/fetch_model_ResNet101.m` to download an ImageNet-pre-trained ResNet-101 net.
0.	Run `fetch_data/fetch_region_proposals.m` to download the pre-computed region proposals.
0.	Download VOC 2007 and 2012 data to ./datasets.
0.	Run `rfcn_build.m`.
0.	Run `startup.m`.


### Training & Testing
0. Run `experiments/script_rfcn_VOC0712_ResNet50_OHEM_ss.m` to train a model using ResNet-50 net with online hard example mining (OHEM), leveraging selective search proposals. The accuracy should be ~75.4% in mAP.
    - **Note**: the training time is ~13 hours on Titian X.
0. Run `experiments/script_rfcn_VOC0712_ResNet50_OHEM_rpn.m` to train a model using ResNet-50 net with OHEM, leveraging RPN proposals (using ResNet-50 net). The accuracy should be ~77.4% in mAP.
    - **Note**: the training time is ~13 hours on Titian X.
0. Run `experiments/script_rfcn_VOC0712_ResNet101_OHEM_rpn.m` to train a model using ResNet-101 net with OHEM, leveraging RPN proposals (using ResNet-101 net). The accuracy should be ~79.5% in mAP.
    - **Note**: the training time is ~19 hours on Titian X.
0. Check other scripts in `./experiments` for more settings.

**Note:** 
- In all the experiments, training is performed on VOC 07+12 trainval, and testing is performed on VOC 07 test.
- Results are subject to some random variations. We have run 'experiments/script_rfcn_VOC0712_ResNet50_OHEM_rpn.m' for 5 times, the results are 77.1%, 77.3%, 77.7%, 77.9%, and 77.0%. The mean is 77.4%, and the std is 0.39%.
- Running time is not recorded in the test log (which is slower), but instead in an optimized implementation.

### Resources

0. ImageNet-pretrained networks: [Google Drive](https://drive.google.com/open?id=1xjFL-ZeVzXkY584ZsEnr9O6O3P1Ypjwd)
0. Pre-computed region proposals:


