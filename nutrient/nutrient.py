import sys 
import os
import time
import wx



class MainWindow(wx.Frame):
	def __init__(self, parent, title):
		wx.Frame.__init__(self, parent, title=title, size=(650,500), style=wx.DEFAULT_FRAME_STYLE)
		self.Centre()

		icon = wx.Icon()
		icon.CopyFromBitmap(wx.Bitmap("nutrient_icon.jpg", wx.BITMAP_TYPE_ANY))
		self.SetIcon(icon)

		filesize = os.path.getsize("settings.txt")

		if filesize == 0:
			frame = Settings(None, "Settings")
		else:
			self.Show(True)
		

class Settings(wx.Frame):
	def __init__(self, parent, title):
		wx.Frame.__init__(self, parent, title=title, size=(400,400), style=wx.DEFAULT_FRAME_STYLE)
		self.Centre()


		panel = wx.Panel(self) 
		#gridSizer = wx.GridSizer(5, 2, 5, 5) 
		
		t1 = wx.TextCtrl(panel)  
		
		

		self.Show(True)
		
		


if __name__ == "__main__":
	app = wx.App(True)
	frame = MainWindow(None, "Nutrient")
	app.MainLoop()
