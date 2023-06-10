import kivy

#from firebase import firebase
import os
from os.path import exists

from kivy.app import App
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.gridlayout import GridLayout
from kivy.uix.widget import Widget
from kivy.uix.button import Button
from kivy.core.window import Window
from kivy.lang import Builder
from kivy.factory import Factory
import kivymd
from kivymd.app import MDApp
from kivy.properties import StringProperty
from kivy.properties import ObjectProperty
from kivy.properties import BooleanProperty
from kivy.uix.screenmanager import Screen
from kivy.uix.screenmanager import ScreenManager
from kivymd.uix.relativelayout import MDRelativeLayout
from kivy.clock import Clock

#from auth import MyFirebase

from kivy.metrics import dp
from kivymd.uix.menu import MDDropdownMenu
from kivymd.uix.snackbar import Snackbar

from kivy.uix.carousel import Carousel
from kivy.core.text import LabelBase
from kivy.storage.jsonstore import JsonStore

global sm
sm = ScreenManager()

global firebase
#firebase = firebase.FirebaseApplication("https://informasi-60179-default-rtdb.asia-southeast1.firebasedatabase.app/", None)

## PACKAGE ##
class loginForm(Screen):
    loginForm = Builder.load_file("login-register/loginForm.kv")
    pass

class registerForm(Screen):
    registerForm = Builder.load_file("login-register/registerForm.kv")
    pass

class homeForm(Screen):
    homeForm = Builder.load_file("home/homeForm.kv")
    pass
## PACKAGE ##

## HOME ##
class aboutForm(Screen):
    aboutForm = Builder.load_file("home/aboutForm.kv")
    pass

class profileForm(Screen):
    profileForm = Builder.load_file("home/profileForm.kv")
    pass
## HOME ##

class MainApp(MDApp):
    def __init__(self, **kwargs):
        super().__init__(**kwargs)
        self.data = JsonStore("informasi/resources/data.json")
        self.auth = JsonStore("informasi/resources/auth.json")
        
    def build(self):
        self.theme_cls.theme_style = 'Light'
        self.theme_cls.primary_palette = 'Red'
        ## DOTS-VERTICAL ##
        
        ## DOTS-VERTICAL ##
        
        ## DAFTAR SCREEN ##
        sm.add_widget(loginForm(name='loginForm'))
        sm.add_widget(registerForm(name='registerForm'))
        sm.add_widget(homeForm(name='homeForm'))
        
        sm.add_widget(aboutForm(name='aboutForm'))
        sm.add_widget(profileForm(name='profileForm'))
        ## DAFTAR SCREEN ##
        
        if exists("resources/auth"):
            self.connect(self.auth.get('client')['email'])
        else:
            return sm
    
    def connect(self, email):
        app = App.get_running_app()
        app = app.root.get_screen("homeForm")
        app.ids.label.text = "Welcome, "+ self.data.get(email)['fullname'] +""
        sm.current = 'homeForm'
    
    def callback(self, button, type):
        if type == "home":
            menu_items = [
                {
                    "viewclass": "OneLineListItem",
                    "text": f"Settings",
                    "height": dp(56),
                    "on_release": lambda x=f"Customer Service": self.menu_callback(x, type),
                },
                {
                    "viewclass": "OneLineListItem",
                    "text": f"Share",
                    "height": dp(56),
                    "on_release": lambda x=f"Privacy Policy": self.menu_callback(x, type),
                },
                {
                    "viewclass": "OneLineListItem",
                    
                    "text": f"Rate Us",
                    "height": dp(56),
                    "on_release": lambda x=f"Rate Us": self.menu_callback(x, type),
                }
            ]
            self.menu = MDDropdownMenu(
                items=menu_items,
                width_mult=4,
            )
            self.menu.caller = button
            self.menu.open()
        if type == "auth":
            menu_items = [
                {
                    "viewclass": "OneLineListItem",
                    "text": f"Login",
                    "height": dp(56),
                    "on_release": lambda x=f"loginForm": self.menu_callback(x, type),
                },
                {
                    "viewclass": "OneLineListItem",
                    "text": f"Register",
                    "height": dp(56),
                    "on_release": lambda x=f"registerForm": self.menu_callback(x, type),
                }
            ]
            self.menu = MDDropdownMenu(
                items=menu_items,
                width_mult=1.6,
            )
            self.menu.caller = button
            self.menu.open()

    
    def change_screen(self, screen):
        screen = sm.current = screen
        
        ## REGISTER FORM ##
        app = App.get_running_app()
        register = app.root.get_screen("registerForm")
        register.ids.email.text = ''
        register.ids.username.text = ''
        register.ids.fullname.text = ''
        register.ids.password.text = ''
        ## REGISTER FORM ##
        
        ## LOGIN FORM ##
        app = App.get_running_app()
        login = app.root.get_screen("loginForm")
        login.ids.email.text = ''
        login.ids.password.text = ''
        ## LOGIN FORM ##
        
        return screen
    
    def menu_callback(self, text_item, type):
        if type == "home":
            Snackbar(text=text_item).open()
        if type == "auth":
            self.change_screen(text_item)
        self.menu.dismiss()
    
    def openUrl(self, url):
        import webbrowser
        webbrowser.open(url)
        
    def logout(self):
        #sm.current = "loginForm"
        self.change_screen("loginForm")
        Snackbar(text="Anda telah keluar").open()
    
    def my_account(self):
        return self.email
    
    def login(self, email, password):
        empty = "Silahkan periksa informasi login anda"
        if email == "":
            Snackbar(text=empty).open()
            return False
        if password == "":
            Snackbar(text=empty).open()
            return False
        
        if self.data.exists(email):
            if password == self.data.get(email)['password']:
                
                username = self.data.get(email)['username']
                fullname = self.data.get(email)['fullname']
                #self.go_screen("home", email, username, password, fullname)
                self.auth.put('client', email = email, password = password)
                self.connect(email)
                Snackbar(text="Berhasil masuk sebagai " + fullname +"").open()
                
            else:
                Snackbar(text="Password tidak sesuai, Silahkan periksa kembali").open()
        else:
            Snackbar(text="Akun ini tidak ada").open()
            
    def register(self, email, username, fullname, password):
        empty = "Silahkan periksa data anda dengan Baik"
        if email == "":
            Snackbar(text=empty).open()
            return False
        if username == "":
            Snackbar(text=empty).open()
            return False
        if fullname == "":
            Snackbar(text=empty).open()
            return False
        if password == "":
            Snackbar(text=empty).open()
            return False
        
        if self.data.exists(email):
            Snackbar(text="Email tersebut telah digunakan").open()
        elif self.data.exists(username):
            Snackbar(text="Username tersebut telah digunakan").open()
        else:
            self.data.put(email, fullname = fullname, username = username, password = password)
            Snackbar(text="Akun Berhasil Dibuat").open()
            # xself.add_members(1)

if __name__ == '__main__':
    login = MainApp()
    Window.size=(360, 640)
    login.run()