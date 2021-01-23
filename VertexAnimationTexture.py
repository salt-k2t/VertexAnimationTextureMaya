# -*- coding: utf-8 -*-
import sys
import maya.cmds as cmds
import maya.mel as mel
import maya.OpenMayaMPx

import VertexAnimationTextureMainWindow as Vat

kPluginCmdName = 'VertexAnimationTexture'


class VertexAnimationTexture(maya.OpenMayaMPx.MPxCommand):
    def __init__(self):
        maya.OpenMayaMPx.MPxCommand.__init__(self)

    def doIt(self, args):
        openMainWindow()


def creator():
    return VertexAnimationTexture()


def openMainWindow(*args):
    Vat.VertexAnimationTextureMainWindow()


def initializePlugin(mObject):
    mPlugin = maya.OpenMayaMPx.MFnPlugin(mObject)
    try:
        mPlugin.registerCommand(kPluginCmdName, creator)
        gMainWindow = mel.eval('$gmw = $gMainWindow')
        menu = cmds.menu(parent=gMainWindow, tearOff=True,
                         label=kPluginCmdName)
        cmds.menuItem(parent=menu, label=kPluginCmdName,
                      command=openMainWindow)
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
