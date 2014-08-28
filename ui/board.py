import sys, os
from PySide.QtCore import *
from PySide.QtGui import *

import matplotlib
matplotlib.rcParams['backend.qt4'] = 'PySide'

from matplotlib.backends.backend_qt4agg import FigureCanvasQTAgg as FigureCanvas
from matplotlib.backends.backend_qt4agg import NavigationToolbar2QTAgg as NavigationToolbar

from matplotlib.figure import Figure

class Board(QMainWindow):
	"""Game Board"""
	def __init__(self, parent=None):
		QMainWindow.__init__(self, parent)
		self.setWindowTitle('Cross Fire')
		self.setGeometry(0,0,1500, 800)

		# set menu
		self.create_Board_Menu()
		
		# set canvas
		self.create_Board_MainFrame()

		# set statusbar
		self.create_Board_StatusBar()

		# set toolbar
		self.create_Board_ToolBar()


	def create_Board_Menu(self):
		self._Menu = self.menuBar().addMenu("&Menu")

		new_Action = self.create_Board_Action("&New Game",
			shortcut="Ctrl+N", slot=self.new_game,
			tip="New Game")

		quit_Action = self.create_Board_Action("&Quit",
			shortcut="Ctrl+Q", slot=self.close,
			tip="Quit Game")

		self.add_Board_Action(self._Menu,
			(new_Action, quit_Action))

	def create_Board_MainFrame(self):
		self.main_Frame = QWidget()
		self.create_Board_Canvas()
		self.canvas.setParent(self.main_Frame)

		self.create_Board()
		self.create_Warriors()

		hbox = QHBoxLayout()
		hbox.addWidget(self.canvas)

		self.main_Frame.setLayout(hbox)

		self.setCentralWidget(self.main_Frame)


	def create_Board_Canvas(self):
		self.dpi = 85
		self.figure = Figure((2.0, 2.0), dpi= self.dpi,
			facecolor = (1,1,1), edgecolor=(0,0,0))
		self.canvas = FigureCanvas(self.figure)


	def create_Board(self):
		self.top_axes = self.figure.add_subplot(2,1,1)

		self.down_axes = self.figure.add_subplot(2,1,2)

		self.canvas.draw()

	def create_Warriors(self):
		pass

	def create_Board_StatusBar(self):
		pass

	def create_Board_ToolBar(self):
		pass

	def create_Board(self):
		pass

	def create_Board_Action(self, text, slot=None,
		shortcut=None, icon=None, tip=None, 
		checkable=False, signal="triggered()"):
		action = QAction(text, self)
		if icon is not None:
			action.setIcon(QIcon(":/%s.png" % icon))
		if shortcut is not None:
			action.setShortcut(shortcut)
		if tip is not None:
			action.setToolTip(tip)
			action.setStatusTip(tip)
		if slot is not None:
			self.connect(action, SIGNAL(signal), slot)
		if checkable:
			action.setCheckable(True)
		return action


	def add_Board_Action(self, target, actions):
		for action in actions:
			if action is None:
				target.addSeparator()
			else:
				target.addAction(action)


	def new_game(self):
		""" quit current sesstion and restart a new game """
		pass

	def cal_loss(self):
		""" statistical info about loss """
		pass




class Platform(QAbstractTableModel):
	def __init__(self, parent, detalist, header, *args):
		QAbstractTableModel.__init__(self, parent, *args)
		self.datalist = datalist
		self.header = header

	def rowCount(self, parent):
		return len(self.datalist)

	def columnCount(self, parent):
		return len(self.datalist[0])



def main():
	try:
		app = QApplication(sys.argv)
	except RuntimeError:
		app = QApplication.instance()
	view = Board()
	view.show()
	app.exec_()


if __name__ == "__main__":
	main()
	

