# -*- coding: utf-8 -*-
from PySide2 import QtCore, QtGui, QtWidgets
from maya.app.general.mayaMixin import MayaQWidgetBaseMixin
from maya import cmds

_MAX_SIZE_64 = 65535
_MIDDLE_SIZE_64 = _MAX_SIZE_64 / 2.0
_DETAIL_SLIDER_MIN = 1
_DETAIL_SLIDER_DEFAULT = 3
_DETAIL_SLIDER_MAX = 5


class VertexAnimationTextureMainWindow(MayaQWidgetBaseMixin, QtWidgets.QMainWindow):
    def __init__(self, parent=None):
        super(VertexAnimationTextureMainWindow, self).__init__(parent=parent)
        self.obj_name = self.__class__.__name__ + "_window"

        if cmds.window(self.obj_name, q=True, ex=True):
            cmds.deleteUI(self.obj_name)

        self._makeMayaStandaloneWindow()
        self.setWindowTitle(self.__class__.__name__)
        self.setWindowFlags(QtCore.Qt.Window)
        self.setObjectName(self.obj_name)
        self.setProperty("saveWindowPref", True)
        self._create_ui()

    def _create_ui(self):
        self.setSizePolicy(QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Maximum)
        self.setFixedSize(QtCore.QSize(400, 260))
        self.root_widget = QtWidgets.QFrame(self)
        self.root_widget.setObjectName("root")
        self.setCentralWidget(self.root_widget)

        main_layout = QtWidgets.QVBoxLayout(self.root_widget)
        gridLayout = QtWidgets.QGridLayout()
        main_layout.addLayout(gridLayout)
        gridLayout.setColumnStretch(1, 1)

        grid_row_index = 0
        gridLayout.addWidget(QtWidgets.QLabel("mesh"), grid_row_index, 0)
        self.costume_menu = QtWidgets.QComboBox()
        self.costume_menu.currentIndexChanged.connect(self._update)
        gridLayout.addWidget(self.costume_menu, grid_row_index, 1)

        grid_row_index += 1
        gridLayout.addWidget(QtWidgets.QLabel("detail"), grid_row_index, 0)
        detail_layout = QtWidgets.QHBoxLayout()
        self.detail_label = QtWidgets.QLabel(str(_DETAIL_SLIDER_DEFAULT))
        detail_layout.addWidget(self.detail_label)
        self.detail_slider = QtWidgets.QSlider(QtCore.Qt.Horizontal, self)
        self.detail_slider.setValue(_DETAIL_SLIDER_DEFAULT)
        self.detail_slider.setMinimum(_DETAIL_SLIDER_MIN)
        self.detail_slider.setMaximum(_DETAIL_SLIDER_MAX)
        self.detail_slider.valueChanged.connect(self._on_change_detail_slider_value)
        detail_layout.addWidget(self.detail_slider)
        gridLayout.addLayout(detail_layout, grid_row_index, 1)

        grid_row_index += 1
        gridLayout.addWidget(QtWidgets.QLabel("vertex"), grid_row_index, 0)
        self.vertex_label = QtWidgets.QLabel()
        gridLayout.addWidget(self.vertex_label, grid_row_index, 1)

        grid_row_index += 1
        gridLayout.addWidget(QtWidgets.QLabel("time"), grid_row_index, 0)
        self.time_label = QtWidgets.QLabel()
        gridLayout.addWidget(self.time_label, grid_row_index, 1)

        grid_row_index += 1
        gridLayout.addWidget(QtWidgets.QLabel("texture"), grid_row_index, 0)
        self.tex_label = QtWidgets.QLabel()
        gridLayout.addWidget(self.tex_label, grid_row_index, 1)

        grid_row_index += 1
        gridLayout.addWidget(QtWidgets.QLabel("result tex path"), grid_row_index, 0)
        tex_path_layout = QtWidgets.QHBoxLayout()
        self.tex_file_path_line = QtWidgets.QLineEdit()
        tex_path_layout.addWidget(self.tex_file_path_line)
        self.tex_file_select_dialog_button = QtWidgets.QPushButton("…")
        self.tex_file_select_dialog_button.clicked.connect(self._on_select_folder)
        tex_path_layout.addWidget(self.tex_file_select_dialog_button)
        gridLayout.addLayout(tex_path_layout, grid_row_index, 1)

        self.update_button = QtWidgets.QPushButton("update")
        self.update_button.clicked.connect(self._on_update_button_clicked)
        main_layout.addWidget(self.update_button)

        self.execute_vid_uv_button = QtWidgets.QPushButton("execute_vid_to_uv2")
        self.execute_vid_uv_button.setStyleSheet("background-color: darkCyan")
        self.execute_vid_uv_button.clicked.connect(self._on_execute_vid_uv_button_clicked)
        main_layout.addWidget(self.execute_vid_uv_button)

        self.execute_bake_button = QtWidgets.QPushButton("execute_bake")
        self.execute_bake_button.setStyleSheet("background-color: darkCyan")
        self.execute_bake_button.setEnabled(False)
        self.execute_bake_button.clicked.connect(self._on_execute_bake_button_clicked)
        main_layout.addWidget(self.execute_bake_button)

        self.show()
        self._initialize()
        self._update()

    def _initialize(self):
        meshes = [x for x in cmds.ls(type="mesh")]
        if not meshes:
            return

        self.costume_menu.clear()
        for mesh in meshes:
            self.costume_menu.addItem(mesh)

    def _update(self):
        self.start_time = cmds.playbackOptions(q=True, min=True)
        self.end_time = cmds.playbackOptions(q=True, max=True)
        self.bake_time = self.end_time - self.start_time + 1  # Including the last time
        self.time_label.setText(str(self.start_time) + " ~ " + str(self.end_time))

        if cmds.objExists(self.costume_menu.currentText()):
            self.vertex_size = cmds.polyEvaluate(self.costume_menu.currentText(), v=True)
            self.vertex_label.setText(str(self.vertex_size))
            square_size = 2
            while square_size < self.vertex_size:
                square_size *= 2
            self.vertex_size = square_size
            self.tex_label.setText(str(self.vertex_size) + " * " + str(self.bake_time))

    def _on_change_detail_slider_value(self):
        value = self.detail_slider.value()
        self.detail_label.setText(str(value))

    def _on_select_folder(self):
        file_path = QtWidgets.QFileDialog.getSaveFileName(
            self,
            u"export folder",
            filter="*.png"
        )[0]
        if not file_path:
            return
        self.execute_bake_button.setEnabled(True)
        self.tex_file_path_line.setText(file_path)

    def _on_update_button_clicked(self):
        self._initialize()
        self._update()

    def _on_execute_vid_uv_button_clicked(self):
        self._update()
        vid_uv_name = "vid"

        obj = self.costume_menu.currentText()
        if not obj:
            return  # ToDo
        cmds.select(obj)
        uvs = cmds.polyUVSet(query=True, allUVSets=True)
        print(uvs)
        if vid_uv_name not in uvs:
            cmds.polyUVSet(copy=True, nuv=vid_uv_name, uvSet=uvs[0])
        cmds.polyUVSet(currentUVSet=True, uvSet=vid_uv_name)

        vertex_size = cmds.polyEvaluate(obj, v=True)
        for v in range(vertex_size):
            cmds.select(obj + ".vtx[" + str(v) + "]")
            u_pos = float(v) / vertex_size
            cmds.polyEditUV(u=u_pos, v=0, r=False)

    def _on_execute_bake_button_clicked(self):
        self._update()

        for face in cmds.ls(self.costume_menu.currentText() + ".f[*]", fl=1):
            result = cmds.polyInfo(face, faceToVertex=True)[0].split(":")[1].split("    ")
            v_count = len(result) - 1
            if v_count >= 4:
                cmds.confirmDialog(t="Warning", m="Please Triangulate")
                return

        img = self._create_data_img(self.vertex_size, self.bake_time)

        current_time = self.start_time
        bias = 10 ** self.detail_slider.value()
        vertex_size = cmds.polyEvaluate(self.costume_menu.currentText(), v=True)

        out_of_range = False
        while (current_time <= self.end_time):
            cmds.currentTime(current_time)
            if self._set_color(img, self.costume_menu.currentText(), vertex_size, current_time, bias):
                out_of_range = True
            current_time += 1
        img.save(self.tex_file_path_line.text(), quality=100)
        cmds.currentTime(self.start_time)
        if out_of_range:
            cmds.confirmDialog(t="Warning", m="Out of range, down the detail")

    def _create_data_img(self, v_size, u_size):
        img = QtGui.QImage(v_size, u_size, QtGui.QImage.Format_ARGB32)  # Maya2019 can't use Format_RGBA64
        img.fill(0)
        return img

    def _set_color(self, img, mesh, vertex_size, time, bias):
        out_of_range = False
        for v in range(vertex_size):
            pos = cmds.pointPosition(mesh + ".vtx[" + str(v) + "]", l=True)
            r = pos[0] * bias + _MIDDLE_SIZE_64
            g = pos[1] * bias + _MIDDLE_SIZE_64
            b = pos[2] * bias + _MIDDLE_SIZE_64
            if (0 > r) or (r > _MAX_SIZE_64):
                out_of_range = True
                r = max(min(r, _MAX_SIZE_64), 0)
            if (0 > g) or (g > _MAX_SIZE_64):
                out_of_range = True
                g = max(min(g, _MAX_SIZE_64), 0)
            if (0 > b) or (b > _MAX_SIZE_64):
                out_of_range = True
                b = max(min(b, _MAX_SIZE_64), 0)

            img.setPixelColor(v, time, QtGui.QColor.fromRgba64(r, g, b, _MAX_SIZE_64))
        return out_of_range


# Simple open from script editor
VertexAnimationTextureMainWindow()
