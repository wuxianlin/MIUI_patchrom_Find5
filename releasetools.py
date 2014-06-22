import common
import edify_generator

def RemoveDeviceAssert(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "ro.product" in edify.script[i]:
      edify.script[i] = ''
      return


def AddArgsForFormatSystem(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "format(" in edify.script[i] and "mmcblk0p20" in edify.script[i]:
      edify.script[i] = 'format("ext4", "EMMC", "/dev/block/mmcblk0p20", "0", "/system");'
      return


def WritePolicyConfig(info):
  try:
    file_contexts = info.input_zip.read("META/file_contexts")
    common.ZipWriteStr(info.output_zip, "file_contexts", file_contexts)
  except KeyError:
    print "warning: file_context missing from target;"

def InstallImage(img_name, img_file, partition, info):
  common.ZipWriteStr(info.output_zip, img_name, img_file)
  info.script.AppendExtra(('package_extract_file("' + img_name + '", "' + partition + '");'))

def FullOTA_InstallRecovery(info):
  img_file = info.input_zip.read("BOOTABLE_IMAGES/recovery.img")
  info.script.Print("Writing recovery")
  InstallImage("recovery.img", img_file, "/dev/block/mmcblk0p10", info)

def IncrementalOTA_InstallRecovery(info):
  try:
    source_file = info.source_zip.read("BOOTABLE_IMAGES/recovery.img")
    target_file = info.target_zip.read("BOOTABLE_IMAGES/recovery.img")
    if source_file != target_file:
      info.script.Print("Writing recovery")
      InstallImage("recovery.img", target_file, "/dev/block/mmcblk0p10", info)
    else:
      print "recovery unchanged; skipping"
  except KeyError:
    print "warning: recovery missing from target"

def FullOTA_InstallEnd(info):
  WritePolicyConfig(info)

def IncrementalOTA_InstallEnd(info):
  WritePolicyConfig(info)
