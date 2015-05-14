#!/usr/bin/env python

'''
Created on 2012-12-25

@author: jock
'''
from xml.dom import minidom
import codecs
import sys
import traceback
import re
import os

reload(sys)
sys.setdefaultencoding("utf-8")

class nametoid(object):
    '''
    classdocs
    '''
    mIdToNameDict = {}

    def __init__(self, xmlPath, inDir):
        '''
        Constructor
        '''
        self.smaliFileList = self.getInFileList(inDir)
        self.nameToIdMap = nametoid.getMap(xmlPath)

    @staticmethod
    def getMap(xmlPath):
        absPath = os.path.abspath(xmlPath)
        if not nametoid.mIdToNameDict.has_key(absPath):
            nametoid.mIdToNameDict[absPath] = nametoid.getIdToNameMap(absPath)
        return nametoid.mIdToNameDict[absPath]

    def getInFileList(self, inDir):
        if os.path.isfile(inDir):
            return [inDir]

        filelist = []
        smaliRe = re.compile(r'.*\.smali')
        for root, dirs, files in os.walk(inDir):
            for fn in files:
                if bool(smaliRe.match(fn)) is True:
                    filelist.append("%s/%s" % (root, fn))

        return filelist

    @staticmethod
    def getIdToNameMap(xmlPath):
        publicXml = minidom.parse(xmlPath)
        root = publicXml.documentElement
        idList = {}

        for item in root.childNodes:
            if item.nodeType == minidom.Node.ELEMENT_NODE:
                itemType = item.getAttribute("type")
                itemName = item.getAttribute("name")
                itemId = item.getAttribute("id").replace(r'0x0', r'0x')
                idList["%s@%s" % (itemType, itemName)] = itemId

        return idList

    def getArrayId(self, arrayIdStr):
        idList = arrayIdStr.split()
        arrayId = "%s%s%s%s" % (idList[3][-3:-1], idList[2][-3:-1], idList[1][-3:-1], idList[0][-3:-1])
        arrayId = "0x%s" % (arrayId.replace('x', '0'))
        return arrayId.replace('0x0', '0x')

    def getArrayStr(self, arrayId):
         arrayStr = '0x%st 0x%st 0x%st 0x%st' % (arrayId[-2:], arrayId[-4:-2], arrayId[-6:-4], arrayId[-7:-6])
         return arrayStr.replace('0x0', '0x')

    def nametoid(self):
        normalNameRule = re.compile(r'#[^ \t\n]*@[^ \t\n]*#t')
        arrayNameRule = re.compile(r'#[^ \t\n]*@[^ \t\n]*#a')

        for smaliFile in self.smaliFileList:
#           print "start modify: %s" % smaliFile
            sf = file(smaliFile, 'r+')
            fileStr = sf.read()
            modify = False

            for matchArrName in  arrayNameRule.findall(fileStr):
                arrId = self.nameToIdMap.get(matchArrName[1:-2], None)
                if arrId is not None:
                    newArrIdStr = self.getArrayStr(arrId)
                    fileStr = fileStr.replace(matchArrName, newArrIdStr)
                    modify = True
                    Log.d(">>> change array name from %s to id %s" % (matchArrName[1:-2], newArrIdStr))

            for matchName in normalNameRule.findall(fileStr):
                newId = self.nameToIdMap.get(matchName[1:-2], None)
                if newId is not None:
                    fileStr = fileStr.replace(matchName, newId)
                    modify = True
                    Log.d(">>> change name from %s to id %s" % (matchName[1:-2], newId))

            if modify is True:
                sf.seek(0, 0)
                sf.truncate()
                sf.write(fileStr)
            sf.close()

class Log:
    DEBUG = False

    @staticmethod
    def d(message):
        if Log.DEBUG: print message

def main():
    if len(sys.argv) == 3:
        nametoid(sys.argv[1], sys.argv[2]).nametoid()
    else:
        print "USAGE: nametoid.py -add/-map public_ori.xml public_baidu.xml out1.txt [out2.txt]"
        sys.exit(1)

    print ">>> change the name to id done"

if __name__ == '__main__':
    main()
