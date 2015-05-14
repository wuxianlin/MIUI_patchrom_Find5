#!/usr/bin/env python

'''
Created on 2012-12-25

@author: jock
'''
from xml.dom import minidom
import sys
import re
import os

reload(sys)
sys.setdefaultencoding("utf-8")

class idtoname(object):
    '''
    classdocs
    '''
    mIdToNameDict = {}

    def __init__(self, xmlPath, inDir):
        '''
        Constructor
        '''
        self.smaliFileList = self.getInFileList(inDir)
        self.idToNameMap = idtoname.getMap(xmlPath)

    @staticmethod
    def getMap(xmlPath):
        absPath = os.path.abspath(xmlPath)
        if not idtoname.mIdToNameDict.has_key(absPath):
            idtoname.mIdToNameDict[absPath] = idtoname.getIdToNameMap(absPath)
        return idtoname.mIdToNameDict[absPath]

    def getInFileList(self, inDir):
        if os.path.isfile(inDir):
            return [inDir]

        filelist = []
        smaliRe = re.compile(r'(?:.*\.smali)')
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
                idList[itemId] = "%s@%s" % (itemType, itemName)

        return idList

    def getArrayId(self, arrayIdStr):
        idList = arrayIdStr.split()
        arrayId = "%s%s%s%s" % (idList[3][-3:-1], idList[2][-3:-1], idList[1][-3:-1], idList[0][-3:-1])
        arrayId = "0x%s" % (arrayId.replace('x', '0'))
        return arrayId.replace('0x0', '0x')

    def idtoname(self):
        normalIdRule = re.compile(r'0x[1-9][0-1][0-9a-f]{5}')
        arrayIdRule = re.compile(r'(?:0x[0-9a-f]{1,2}t ){3}0x[1-9]t')

        for smaliFile in self.smaliFileList:
            #print "start modify: %s" % smaliFile
            sf = file(smaliFile, 'r+')
            fileStr = sf.read()
            modify = False

            for matchId in normalIdRule.findall(fileStr):
                name = self.idToNameMap.get(matchId, None)
                if name is not None:
                    fileStr = fileStr.replace(matchId, r'#%s#t' % name)
                    modify = True
                    Log.d("change id from %s to name %s" % (matchId, name))

            for matchArrIdStr in  arrayIdRule.findall(fileStr):
                matchArrId = self.getArrayId(matchArrIdStr)
                arrName = self.idToNameMap.get(matchArrId, None)
                if arrName is not None:
                    fileStr = fileStr.replace(matchArrIdStr, r'#%s#a' % arrName)
                    modify = True
                    Log.d("change array id from %s to name %s" % (matchArrIdStr, arrName))

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
    print "start change id to name...."
    if len(sys.argv) == 3:
        idtoname(sys.argv[1], sys.argv[2]).idtoname()
    else:
        print "USAGE: idtoname.py public.xml DIRECTORY"
        print "eg: idtoname.py public.xml framework.jar.out"
        print "change all of the id in framework.jar.out to type@name"
        sys.exit(1)

    print "change id to name done"

if __name__ == '__main__':
    main()
