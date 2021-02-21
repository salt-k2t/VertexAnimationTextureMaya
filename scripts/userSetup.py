# -*- coding: utf-8 -*-
import sys
import maya.utils
import VertexAnimationTexture as Vat


def show():
    cmds.setParent('MayaWindow')
    cmds.menu(label=u'VertexAnimationTexture')
    cmds.menuItem(l='OpenWindow',
                  c='Vat.VertexAnimationTexture()')


maya.utils.executeDeferred(show)
