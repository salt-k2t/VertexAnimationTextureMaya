# -*- coding: utf-8 -*-
# from Qt import QtCore, QtGui, QtWidgets
from PySide2 import QtCore, QtGui, QtWidgets
from maya.app.general.mayaMixin import MayaQWidgetBaseMixin
from maya import cmds

try:
    MAYA_WINDOW = QtCompat.wrapInstance(long(omui.MQtUtil.mainWindow()), QtWidgets.QWidget)
except:
    MAYA_WINDOW = None


class VertexAnimationTexture(MayaQWidgetBaseMixin, QtWidgets.QMainWindow):
    def __init__(self, parent=MAYA_WINDOW):
        super(VertexAnimationTexture, self).__init__(parent=parent)
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
        self.setFixedSize(QtCore.QSize(400, 240))
        self.root_widget = QtWidgets.QFrame(self)
        self.root_widget.setObjectName("root")
        self.setCentralWidget(self.root_widget)

        main_layout = QtWidgets.QVBoxLayout(self.root_widget)
        gridLayout = QtWidgets.QGridLayout()
        main_layout.addLayout(gridLayout)
        gridLayout.setColumnStretch(1, 1)

        gridLayout.addWidget(QtWidgets.QLabel("mesh"), 0, 0)
        self.costume_menu = QtWidgets.QComboBox()
        self.costume_menu.currentIndexChanged.connect(self._update)
        gridLayout.addWidget(self.costume_menu, 0, 1)
        gridLayout.addWidget(QtWidgets.QLabel("square tex"), 1, 0)
        self.square_check_box = QtWidgets.QCheckBox()
        self.square_check_box.clicked.connect(self._update)
        gridLayout.addWidget(self.square_check_box, 1, 1)
        gridLayout.addWidget(QtWidgets.QLabel("world"), 2, 0)
        self.world_check_box = QtWidgets.QCheckBox()
        self.world_check_box.clicked.connect(self._update)
        gridLayout.addWidget(self.world_check_box, 2, 1)
        gridLayout.addWidget(QtWidgets.QLabel("detail"), 3, 0)
        detail_layout = QtWidgets.QHBoxLayout()
        self.detail_label = QtWidgets.QLabel(str(10))
        detail_layout.addWidget(self.detail_label)
        self.detail_slider = QtWidgets.QSlider(QtCore.Qt.Horizontal, self)
        self.detail_slider.setValue(10)
        self.detail_slider.setMinimum(1)
        self.detail_slider.setMaximum(100)
        self.detail_slider.valueChanged.connect(self.on_change_detail_slider_value)
        detail_layout.addWidget(self.detail_slider)
        gridLayout.addLayout(detail_layout, 3, 1)
        gridLayout.addWidget(QtWidgets.QLabel("vertex"), 4, 0)
        self.vertex_label = QtWidgets.QLabel()
        gridLayout.addWidget(self.vertex_label, 4, 1)
        gridLayout.addWidget(QtWidgets.QLabel("time"), 5, 0)
        self.time_label = QtWidgets.QLabel()
        gridLayout.addWidget(self.time_label, 5, 1)
        gridLayout.addWidget(QtWidgets.QLabel("texture"), 6, 0)
        self.tex_label = QtWidgets.QLabel()
        gridLayout.addWidget(self.tex_label, 6, 1)
        gridLayout.addWidget(QtWidgets.QLabel("result tex path"), 7, 0)
        tex_path_layout = QtWidgets.QHBoxLayout()
        self.tex_file_path_line = QtWidgets.QLineEdit()
        tex_path_layout.addWidget(self.tex_file_path_line)
        self.tex_file_select_dialog_button = QtWidgets.QPushButton("…")
        self.tex_file_select_dialog_button.clicked.connect(self.on_select_folder)
        tex_path_layout.addWidget(self.tex_file_select_dialog_button)
        gridLayout.addLayout(tex_path_layout, 7, 1)

        self.update_button = QtWidgets.QPushButton("update")
        self.update_button.clicked.connect(self.on_update_button_clicked)
        main_layout.addWidget(self.update_button)

        self.execute_button = QtWidgets.QPushButton("execute")
        self.execute_button.setStyleSheet("background-color: darkCyan")
        self.execute_button.setEnabled(False)
        self.execute_button.clicked.connect(self.on_execute_button_clicked)
        main_layout.addWidget(self.execute_button)

        self.show()
        self._initialize()
        self._update()

    def _initialize(self):
        # meshes = cmds.listRelatives(s=True)
        meshes = [x for x in cmds.ls(type="mesh")]
        if not meshes:
            return

        self.costume_menu.clear()
        for mesh in meshes:
            self.costume_menu.addItem(mesh)

    def _update(self):
        self.start_time = cmds.playbackOptions(q=True, min=True)
        self.end_time = cmds.playbackOptions(q=True, max=True)
        self.bake_time = self.end_time - self.start_time
        self.time_label.setText(str(self.start_time) + " ~ " + str(self.end_time))

        if cmds.objExists(self.costume_menu.currentText()):
            self.vertex_size = cmds.polyEvaluate(self.costume_menu.currentText(), v=True)
            self.vertex_label.setText(str(self.vertex_size))
            if self.square_check_box.checkState() is QtCore.Qt.CheckState.Checked:
                long_size = max(self.vertex_size, self.bake_time)
                square_size = 2
                while square_size < long_size:
                    square_size *= 2
                self.tex_label.setText(str(square_size) + " * " + str(square_size))
                self.vertex_size = square_size
                self.bake_time = square_size
            else:
                self.tex_label.setText(str(self.vertex_size) + " * " + str(self.bake_time))

    def on_change_detail_slider_value(self):
        value = self.detail_slider.value()
        self.detail_label.setText(str(value))

    def on_select_folder(self):
        file_path = QtWidgets.QFileDialog.getSaveFileName(
            self,
            u"export folder",
            filter="*.png"
        )[0]
        if not file_path:
            return
        self.execute_button.setEnabled(True)
        self.tex_file_path_line.setText(file_path)

    def on_update_button_clicked(self):
        self._initialize()
        self._update()

    def on_execute_button_clicked(self):
        self._update()

        for face in cmds.ls(self.costume_menu.currentText() + ".f[*]", fl=1):
            result = cmds.polyInfo(face, faceToVertex=True)[0].split(":")[1].split("    ")
            v_count = len(result) - 1
            if v_count >= 4:
                cmds.confirmDialog(t="Warning", m="to Triangulate")
                return

        img = self.create_data_img(self.vertex_size, self.bake_time)

        current_time = self.start_time
        bias = self.detail_slider.value()
        vertex_size = cmds.polyEvaluate(self.costume_menu.currentText(), v=True)

        out_of_range = False
        while (current_time < self.end_time):
            cmds.currentTime(current_time)
            if self.set_color(img, self.costume_menu.currentText(), vertex_size, current_time, bias):
                out_of_range = True
            current_time += 1
        img.save(self.tex_file_path_line.text(), quality=100)
        cmds.currentTime(self.start_time)
        if out_of_range:
            cmds.confirmDialog(t="Warning", m="out of range, down the detail")

    def create_data_img(self, v_size, u_size):
        img = QtGui.QImage(v_size, u_size, QtGui.QImage.Format_ARGB32)
        img.fill(0)
        return img

    def set_color(self, img, mesh, vertex_size, time, bias):
        MaxSize = 65535
        middle = MaxSize / 2.0
        out_of_range = False
        for v in range(vertex_size):
            if self.world_check_box.checkState() is QtCore.Qt.CheckState.Checked:
                pos = cmds.pointPosition(mesh + ".vtx[" + str(v) + "]", w=True)
            else:
                pos = cmds.pointPosition(mesh + ".vtx[" + str(v) + "]", l=True)

            r = pos[0] * bias + middle
            g = pos[1] * bias + middle
            b = pos[2] * bias + middle
            img.setPixelColor(v, time, QtGui.QColor.fromRgba64(r, g, b, MaxSize))
            if (0 > r) or (r > MaxSize) or (0 > g) or (g > MaxSize) or (0 > b) or (b > MaxSize):
                out_of_range = True
        return out_of_range
ui = VertexAnimationTexture()

def main():
    ui = VertexAnimationTexture()
