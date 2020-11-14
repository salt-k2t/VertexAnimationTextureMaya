# -*- coding: utf-8 -*-
import sys
import maya.OpenMayaMPx

import VertexAnimationTexture as Vat

kPluginCmdName = 'VatUnity'


class VatUnity(maya.OpenMayaMPx.MPxCommand):
    def __init__(self):
        maya.OpenMayaMPx.MPxCommand.__init__(self)

    def doIt(self, args):
        Vat.VertexAnimationTexture()


def creator():
    return VatUnity()


def initializePlugin(mObject):
    mPlugin = maya.OpenMayaMPx.MFnPlugin(mObject)
    try:
        mPlugin.registerCommand(kPluginCmdName, creator)
    except:
        sys.stderr.write('Failed load plugin : %s' % kPluginCmdName)
        raise


def uninitializePlugin(mObject):
    mPlugin = maya.OpenMayaMPx.MFnPlugin(mObject)
    try:
        mPlugin.deregisterCommand(kPluginCmdName)
    except:
        sys.stderr.write('Failed unload plugin : %s' % kPluginCmdName)
        raise
