MIUI patchrom for OPPO Find 5
===========

开源说明
----------------

1.开源的代码由[wuxianlin](http://www.wuxianlin.tk)基于[OPPO Find 5 CM11](http://download.cyanogenmod.org/?device=find5) [M7版本](http://download.cyanogenmod.org/get/jenkins/71635/cm-11-20140608-SNAPSHOT-M7-find5.zip) ROM适配MIUI V5 kitkat分支的代码

2.目前MIUI官网的[MIUI for Find 5 合作版](http://www.miui.com/getrom-81.html)是我发布在MIUI官网的MIUI

3.如果你对本项目感兴趣或者有什么意见或建议,欢迎联系[wuxianlinwxl@gmail.com](mailto:wuxianlinwxl@gmail.com)

编译教程
---------------
1.安装Java SDK和Android SDK 附：[AOSP编译环境搭建](https://source.android.com/source/initializing.html) [一键搭建编译环境脚本](https://github.com/TeamRadium/tr-be-script)

2.安装[Git and Repo](https://source.android.com/source/downloading.html)

$ mkdir ~/bin

$ PATH=~/bin:$PATH

$ curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo

$ chmod a+x ~/bin/repo


3.同步代码

$ mkdir MIUI && cd MIUI

$ repo init -u git://github.com/MiCode/patchrom.git -b kitkat

$ repo sync -j4

$ git clone https://github.com/wuxianlin/MIUI_patchrom_Find5 Find5

4.编译MIUI

$ source build/envsetup.sh && cd Find 5

$ make fullota

5.输出目录out下的fullota.zip即为所得MIUI ROM

感谢
--------
感谢MIUI官方开源patchrom

感谢github上无私奉献代码的朋友

