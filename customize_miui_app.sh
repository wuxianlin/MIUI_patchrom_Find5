#/bin/bash

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify
GIT_APPLY=$PORT_ROOT/tools/git.apply

curdir=`pwd`

function applyPatch () {
    for patch in `find $1 -name "*.patch"`
    do
        cd out
        $GIT_APPLY ../$patch
        cd ..
        for rej in `find $2 -name *.rej`
        do
            echo "Patch $patch fail"
            exit 1
        done
    done
}

function appendSmaliPart() {
    for file in `find $1/smali -name *.part`
    do
		filepath=`dirname $file`
		filename=`basename $file .part`
		dstfile="out/$filepath/$filename"
        cat $file >> $dstfile
    done
}

function mergyXmlPart() {
	for file in `find $1/res -name *.xml.part`
	do
		src=`dirname $file`
		dst=${src/$1/$2}
		$XMLMERGYTOOL $src $dst
	done
}

if [ $1 = "MiuiSystemUI" ];then
    applyPatch $1 $2
fi

if [ $1 = "Music" ];then
    applyPatch $1 $2
fi

if [ $1 = "SecurityCenter" ];then
    applyPatch $1 $2
fi

if [ $1 = "TeleService" ];then
    other/tools/idtoname.py other/tools/public-miui.xml $2/smali
    other/tools/nametoid.py framework-res/res/values/public.xml $2/smali
    $XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "DeskClock" ];then
    other/tools/idtoname.py other/tools/public-miui.xml $2/smali
    other/tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "miuisystem" ];then
    applyPatch $1 $2
    cp $1/find5.xml $2/assets/device_features/
    cp $1/find5_legacy.xml $2/assets/device_features/
fi

if [ $1 = "Settings" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
	$XMLMERGYTOOL $1/res/values-zh-rCN $2/res/values-zh-rCN
	$XMLMERGYTOOL $1/res/values-zh-rTW $2/res/values-zh-rTW
	applyPatch $1 $2
    other/tools/idtoname.py other/tools/public-miui.xml $2/smali
    other/tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi
