[33mcommit a1ce0964b200b6264e44fd2fbcebda5c1863ff8d[m[33m ([m[1;36mHEAD -> [m[1;32mmain[m[33m)[m
Author: mdafftfa <daffa01futn@gmail.com>
Date:   Sat Jun 10 21:22:22 2023 +0700

    first commit

[1mdiff --git a/fonts/Poppins-Black.ttf b/fonts/Poppins-Black.ttf[m
[1mnew file mode 100644[m
[1mindex 0000000..71c0f99[m
Binary files /dev/null and b/fonts/Poppins-Black.ttf differ
[1mdiff --git a/fonts/Poppins-Bold.ttf b/fonts/Poppins-Bold.ttf[m
[1mnew file mode 100644[m
[1mindex 0000000..00559ee[m
Binary files /dev/null and b/fonts/Poppins-Bold.ttf differ
[1mdiff --git a/fonts/Poppins-Light.ttf b/fonts/Poppins-Light.ttf[m
[1mnew file mode 100644[m
[1mindex 0000000..bc36bcc[m
Binary files /dev/null and b/fonts/Poppins-Light.ttf differ
[1mdiff --git a/fonts/Poppins-Medium.ttf b/fonts/Poppins-Medium.ttf[m
[1mnew file mode 100644[m
[1mindex 0000000..6bcdcc2[m
Binary files /dev/null and b/fonts/Poppins-Medium.ttf differ
[1mdiff --git a/fonts/Poppins-Regular.ttf b/fonts/Poppins-Regular.ttf[m
[1mnew file mode 100644[m
[1mindex 0000000..9f0c71b[m
Binary files /dev/null and b/fonts/Poppins-Regular.ttf differ
[1mdiff --git a/home/aboutForm.kv b/home/aboutForm.kv[m
[1mnew file mode 100644[m
[1mindex 0000000..5cf9f18[m
[1m--- /dev/null[m
[1m+++ b/home/aboutForm.kv[m
[36m@@ -0,0 +1,43 @@[m
[32m+[m[32m<aboutForm>[m
[32m+[m[32m    name: "aboutForm"[m
[32m+[m[32m    MDBoxLayout:[m
[32m+[m[32m        orientation: "vertical"[m
[32m+[m[32m        md_bg_color: "#ffffff"[m
[32m+[m[32m        padding:[dp(0),dp(0),dp(0),dp(0)][m
[32m+[m[32m        MDTopAppBar:[m
[32m+[m[32m            #title: "About"[m
[32m+[m[32m            md_bg_color: "#ffffff"[m
[32m+[m[32m            #left_action_items: [["arrow-left", lambda x: app.change_screen("homeForm")]][m
[32m+[m[32m            MDIconButton:[m
[32m+[m[32m                icon: "arrow-left"[m
[32m+[m[32m                theme_text_color: "Custom"[m
[32m+[m[32m                text_color: "#6495ED"[m
[32m+[m[32m                on_release: app.change_screen("homeForm")[m
[32m+[m
[32m+[m[32m        MDBoxLayout:[m
[32m+[m[32m            ScrollView:[m
[32m+[m[32m                MDBoxLayout:[m
[32m+[m[32m                    orientation: "vertical"[m
[32m+[m[32m                    padding:[dp(50),dp(50),dp(50),dp(50)][m
[32m+[m[32m                    size: 100, 200[m
[32m+[m[32m                    cols: 1[m
[32m+[m[32m                    MDLabel:[m
[32m+[m[32m                        pos_hint: {"center_x": .5, "center_y": .5}[m
[32m+[m[32m                        text: "About"[m
[32m+[m[32m                        halign: "center"[m
[32m+[m[32m                        #theme_text_color: "Custom"[m
[32m+[m[32m                        font_style: "H3"[m
[32m+[m[32m                    MDLabel:[m
[32m+[m[32m                        pos_hint: {"center_x": .5, "center_y": .5}[m
[32m+[m[32m                        text: "TKJ (Teknik Komputer Jaringan) merupakan sebuah kejuruan yang mempelajari tentang cara merakit komputer, mengenal dan mempelajari komponen hardware apa saja yang ada di dalam komputer, merakit komputer serta fokus mempelajari jaringan dasar"[m
[32m+[m[32m                        halign: "center"[m
[32m+[m[32m                        #theme_text_color: "Custom"[m
[32m+[m[32m                        font_style: "Caption"[m
[32m+[m[41m                    [m
[32m+[m[32m                    MDLabel:[m
[32m+[m[32m                        id: total_users[m
[32m+[m[32m                        pos_hint: {"center_x": .5, "center_y": .5}[m
[32m+[m[32m                        text: ""[m
[32m+[m[32m                        halign: "center"[m
[32m+[m[32m                        #theme_text_color: "Custom"[m
[32m+[m[32m                        font_style: "Caption"[m
[1mdiff --git a/home/homeForm.kv b/home/homeForm.kv[m
[1mnew file mode 100644[m
[1mindex 0000000..7116b29[m
[1m--- /dev/null[m
[1m+++ b/home/homeForm.kv[m
[36m@@ -0,0 +1,112 @@[m
[32m+[m[32m<homeForm>[m
[32m+[m[32m    name: "homeForm"[m
[32m+[m[32m    MDBoxLayout:[m
[32m+[m[32m        orientation: "vertical"[m
[32m+[m[32m        MDTopAppBar:[m
[32m+[m[32m            title: "TKJ SMKN 1 KEDIRI"[m
[32m+[m[32m            md_bg_color: "#6495ED"[m
[32m+[m[32m            right_action_items: [["logout", lambda x: app.logout()], ["dots-vertical", lambda x: app.callback(x, "home")]][m
[32m+[m[41m            [m
[32m+[m[41m        [m
[32m+[m[32m        MDBoxLayout:[m
[32m+[m[32m            padding:[dp(25),dp(25),dp(25),dp(25)][m
[32m+[m[32m            md_bg_color: "#f5f5f5"[m
[32m+[m[32m            orientation: "vertical"[m
[32m+[m[32m            size: 100, 200[m
[32m+[m[32m            MDLabel:[m
[32m+[m[32m                id: label[m
[32m+[m[32m                text: ""[m
[32m+[m[32m                font_name: "fonts/Poppins-Medium.ttf"[m
[32m+[m[32m                size_hint_x: 1.0[m
[32m+[m[32m                size_hint_y: 0.3[m
[32m+[m[41m            [m
[32m+[m
[32m+[m[32m            Carousel:[m
[32m+[m[32m                id: s[m
[32m+[m[32m                direction: "right"[m
[32m+[m[32m                loop: True[m
[32m+[m
[32m+[m[32m                Image:[m
[32m+[m[32m                    source: "images/logo.png"[m
[32m+[m[32m                Image:[m
[32m+[m[32m                    source: "images/background.png"[m
[32m+[m[32m                Image:[m
[32m+[m[32m                    source: "images/calendar.png"[m
[32m+[m[32m            #Image:[m
[32m+[m[32m            #   source: "images/logo.png"[m
[32m+[m[32m            #  size: self.texture_size[m
[32m+[m
[32m+[m[32m        MDGridLayout:[m
[32m+[m
[32m+[m[32m            md_bg_color: "#f5f5f5"[m
[32m+[m[41m            [m
[32m+[m[32m            cols:2[m
[32m+[m[32m            padding:[dp(10),dp(25),dp(10),dp(25)][m
[32m+[m[32m            spacing:dp(15)[m
[32m+[m
[32m+[m[32m            ElementCard:[m
[32m+[m[32m                image:"images/about.png"[m
[32m+[m[32m                text:"About"[m
[32m+[m[32m                font_name: "fonts/Poppins-Medium.ttf"[m
[32m+[m[32m                subtext:"About this app"[m
[32m+[m[32m                items_count:""[m
[32m+[m[32m                on_release: app.change_screen("aboutForm")[m
[32m+[m[41m            [m
[32m+[m[32m            ElementCard:[m
[32m+[m[32m                image:"images/youtube.png"[m
[32m+[m[32m                text:"YouTube"[m
[32m+[m[32m                font_name: "fonts/Poppins-Medium.ttf"[m
[32m+[m[32m                items_count:""[m
[32m+[m[32m                subtext:"Channel TKJ Smeksa"[m
[32m+[m[32m                on_release: app.openUrl("https://youtube.com/@tkjsmknegeri1kediri766")[m
[32m+[m[41m                [m
[32m+[m[32m            ElementCard:[m
[32m+[m[32m                image:"images/instagram.png"[m
[32m+[m[32m                text:"Instagram"[m
[32m+[m[32m                font_name: "fonts/Poppins-Medium.ttf"[m
[32m+[m[32m                subtext:"Follow instagram TKJ"[m
[32m+[m[32m                items_count:""[m
[32m+[m[32m                on_release: app.openUrl("https://instagram.com/tkjsmkn1kediri?igshid=YmMyMTA2M2Y=")[m
[32m+[m[41m            [m
[32m+[m[32m            ElementCard:[m
[32m+[m[32m                image:"images/cobrass.png"[m
[32m+[m[32m                text:"Cobrass"[m
[32m+[m[32m                font_name: "fonts/Poppins-Medium.ttf"[m
[32m+[m[32m                items_count:""[m
[32m+[m[32m                subtext:"Join discord cobrass"[m
[32m+[m[32m                on_release: app.openUrl("https://forms.gle/rhVcp8gAZEbaPcWw8")[m
[32m+[m
[32m+[m[41m            [m
[32m+[m[32m<ElementCard@MDCard>:[m
[32m+[m[32m    md_bg_color: "#ffffff"[m
[32m+[m[32m    padding:dp(10)[m
[32m+[m[32m    spacing:dp(15)[m
[32m+[m[32m    radius:dp(10)[m
[32m+[m[32m    ripple_behavior: True[m
[32m+[m[32m    image:''[m
[32m+[m[32m    text:""[m
[32m+[m[32m    font_name: "fonts/Poppins-Medium.ttf"[m
[32m+[m[32m    items_count:""[m
[32m+[m[32m    subtext:''[m
[32m+[m
[32m+[m[32m    orientation:'vertical'[m
[32m+[m[32m    Image:[m
[32m+[m[32m        source:root.image[m
[32m+[m[32m    MDBoxLayout:[m
[32m+[m[32m        orientation:'vertical'[m
[32m+[m[32m        MDLabel:[m
[32m+[m[32m            halign:"center"[m
[32m+[m[32m            text:root.text[m
[32m+[m[32m            font_name: "fonts/Poppins-Regular.ttf"[m
[32m+[m[32m            font_size: 20[m
[32m+[m[32m            #font_style:"H6"[m
[32m+[m[32m        MDLabel:[m
[32m+[m[32m            halign:"center"[m
[32m+[m[32m            font_style:"Caption"[m
[32m+[m[32m            font_name: "fonts/Poppins-Light.ttf"[m
[32m+[m[32m            font_size: 10[m
[32m+[m[32m            text:root.subtext[m
[32m+[m[32m        MDLabel:[m
[32m+[m[32m            halign:"center"[m
[32m+[m[32m            text:root.items_count[m
[32m+[m[32m            font_name: "fonts/Poppins-Light.ttf"[m
\ No newline at end of file[m
[1mdiff --git a/home/logo.png b/home/logo.png[m
[1mnew file mode 100644[m
[1mindex 0000000..c1d5b79[m
Binary files /dev/null and b/home/logo.png differ
[1mdiff --git a/home/profileForm.kv b/home/profileForm.kv[m
[1mnew file mode 100644[m
[1mindex 0000000..9b071c4[m
[1m--- /dev/null[m
[1m+++ b/home/profileForm.kv[m
[36m@@ -0,0 +1,55 @@[m
[32m+[m[32m<profileForm>[m
[32m+[m[32m    name: "profileForm"[m
[32m+[m[32m    MDBoxLayout:[m
[32m+[m[32m        orientation: "vertical"[m
[32m+[m[32m        MDTopAppBar:[m
[32m+[m[32m            #title: "About"[m
[32m+[m[32m            md_bg_color: "#f5f5f5"[m
[32m+[m[32m            #left_action_items: [["arrow-left", lambda x: app.change_screen("homeForm")]][m
[32m+[m[32m            MDIconButton:[m
[32m+[m[32m                icon: "arrow-left"[m
[32m+[m[32m                theme_text_color: "Custom"[m
[32m+[m[32m                text_color: "#6495ED"[m
[32m+[m[32m                on_release: app.change_screen("homeForm")[m
[32m+[m[41m            [m
[32m+[m[41m        [m
[32m+[m[32m        MDBoxLayout:[m
[32m+[m[32m            padding:[dp(25),dp(25),dp(25),dp(25)][m
[32m+[m[32m            md_bg_color: "#f5f5f5"[m
[32m+[m[32m            orientation: "vertical"[m
[32m+[m[32m            MDLabel:[m
[32m+[m[32m                id: email.passing[m
[32m+[m[32m                pos_hint: {"center_x": 0.5, "center_y": 0.5}[m
[32m+[m[32m                text: "Email: daffa@gmail.com"[m
[32m+[m[32m            MDLabel:[m
[32m+[m[32m                id: username.passing[m
[32m+[m[32m                text: "Username: daffa"[m
[32m+[m[32m                pos_hint: {"center_x": 0.5, "center_y": 0.5}[m
[32m+[m[32m            MDLabel:[m
[32m+[m[32m                id: fullname.passing[m
[32m+[m[32m                text: "Full Name: Muhammad Daffa"[m
[32m+[m[32m                size_hint: .5, .5[m
[32m+[m[32m                pos_hint: {"center_x": 0.5, "center_y": 0.5}[m
[32m+[m[32m            MDLabel:[m
[32m+[m[32m                id: password.passing[m
[32m+[m[32m                text: "password: daffa"[m
[32m+[m[32m                size_hint: .5, .5[m
[32m+[m[32m                pos_hint: {"center_x": 0.5, "center_y": 0.5}[m
[32m+[m[41m        [m
[32m+[m[32m        MDBoxLayout:[m
[32m+[m[32m            orientation: "vertical"[m
[32m+[m[32m            padding:[dp(50),dp(50),dp(50),dp(50)][m
[32m+[m[32m            size: 100, 200[m
[32m+[m[32m            cols: 1[m
[32m+[m[32m            MDRaisedButton:[m
[32m+[m[32m                text: "Log Out"[m
[32m+[m[32m                font_name: "fonts/Poppins-Medium.ttf"[m
[32m+[m[32m                size_hint_x: 1[m
[32m+[m[32m                pos_hint: {"center_x": .5, "center_y": .5}[m
[32m+[m[32m                background_color: "#6495ED"[m
[32m+[m[32m                halign: "center"[m
[32m+[m[32m                on_release:[m[41m [m
[32m+[m[32m                    #app.Firebase.sign_up(email.text, username.text, fullname.text, password.text)[m
[32m+[m[32m                    app.register(email.text, username.text, fullname.text, password.text)[m
[32m+[m[32m                #on_press: root.registerForm()[m
[32m+[m[32m                #on_press: app.root.current = 'registerForm'[m
\ No newline at end of file[m
[1mdiff --git a/images/MR Junior.png b/images/MR Junior.png[m
[1mnew file mode 100644[m
[1mindex 0000000..d537031[m
Binary files /dev/null and b/images/MR Junior.png differ
[1mdiff --git a/images/about.png b/images/about.png[m
[1mnew file mode 100644[m
[1mindex 0000000..044dcac[m
Binary files /dev/null and b/images/about.png differ
[1mdiff --git a/images/cobrass.png b/images/cobrass.png[m
[1mnew file mode 100644[m
[1mindex 0000000..9999a75[m
Binary files /dev/null and b/images/cobrass.png differ
[1mdiff --git a/images/discord.png b/images/discord.png[m
[1mnew file mode 100644[m
[1mindex 0000000..8e290e9[m
Binary files /dev/null and b/images/discord.png differ
[1mdiff --git a/images/instagram.png b/images/instagram.png[m
[1mnew file mode 100644[m
[1mindex 0000000..1d1ae29[m
Binary files /dev/null and b/images/instagram.png differ
[1mdiff --git a/images/logo.png b/images/logo.png[m
[1mnew file mode 100644[m
[1mindex 0000000..3cbcb51[m
Binary files /dev/null and b/images/logo.png differ
[1mdiff --git a/images/user.png b/images/user.png[m
[1mnew file mode 100644[m
[1mindex 0000000..841c199[m
Binary files /dev/null and b/images/user.png differ
[1mdiff --git a/images/vote.png b/images/vote.png[m
[1mnew file mode 100644[m
[1mindex 0000000..6a27c3d[m
Binary files /dev/null and b/images/vote.png differ
[1mdiff --git a/images/youtube.png b/images/youtube.png[m
[1mnew file mode 100644[m
[1mindex 0000000..5ec5913[m
Binary files /dev/null and b/images/youtube.png differ
[1mdiff --git a/login-register/loginForm.kv b/login-register/loginForm.kv[m
[1mnew file mode 100644[m
[1mindex 0000000..b2fe999[m
[1m--- /dev/null[m
[1m+++ b/login-register/loginForm.kv[m
[36m@@ -0,0 +1,91 @@[m
[32m+[m
[32m+[m[32m<TextField@MDTextField>:[m
[32m+[m[32m    size_hint_x: None[m
[32m+[m[32m    normal_color: color_shadow[m
[32m+[m[32m    active_color: color_shadow[m
[32m+[m
[32m+[m[32m<loginForm>:[m
[32m+[m[32m    name: "loginForm"[m
[32m+[m[32m    MDBoxLayout:[m
[32m+[m[32m        orientation: "vertical"[m
[32m+[m[32m        padding:[dp(0),dp(0),dp(0),dp(0)][m
[32m+[m[32m        MDTopAppBar:[m
[32m+[m[32m            title: "Selamat Datang"[m
[32m+[m[32m            md_bg_color: "#6495ED"[m
[32m+[m[32m            pos_hint: {"center_x": 0.5}[m
[32m+[m[32m            right_action_items: [["dots-vertical", lambda x: app.callback(x, "auth")]][m
[32m+[m
[32m+[m[32m        MDBoxLayout:[m
[32m+[m[32m            pos_hint: {"center_x": .5, "center_y": .5}[m
[32m+[m[32m            padding:[dp(25),dp(25),dp(25),dp(25)][m
[32m+[m[32m            Image:[m
[32m+[m[32m                source: "images/user.png"[m
[32m+[m[32m                size: self.texture_size[m
[32m+[m
[32m+[m[32m        MDBoxLayout:[m
[32m+[m[32m            padding:[dp(25),dp(25),dp(25),dp(25)][m
[32m+[m[32m            pos_hint: {"center_x": .67, "center_y": 1.0}[m
[32m+[m[32m            size_hint_x: .75[m
[32m+[m[32m            size_hint_y: .15[m
[32m+[m[32m            cols: 1[m
[32m+[m[32m            MDLabel:[m
[32m+[m[32m                text: "Log In"[m
[32m+[m[32m                font_size: 40[m
[32m+[m[32m                font_name: "fonts/Poppins-Bold.ttf"[m
[32m+[m
[32m+[m[32m        MDGridLayout:[m
[32m+[m
[32m+[m[32m            pos_hint: {"center_x": .5, "center_y": .75}[m
[32m+[m[32m            size_hint_x: .95[m
[32m+[m[32m            size_hint_y: .15[m
[32m+[m[32m            #md_bg_color: "#f5f5f5"[m
[32m+[m[41m            [m
[32m+[m[32m            cols: 1[m
[32m+[m[32m            padding:[dp(40),dp(35),dp(40),dp(35)][m
[32m+[m[32m            spacing:dp(10)[m
[32m+[m
[32m+[m[32m            MDTextField:[m[41m [m
[32m+[m[32m                id: email[m
[32m+[m[32m                hint_text: "Email"[m
[32m+[m[32m                font_name: "fonts/Poppins-Medium.ttf"[m
[32m+[m[32m                current_hint_text_color: 0, 0, 0, 1[m
[32m+[m[32m                helper_text_mode: "persistent"[m
[32m+[m[32m                helper_text: "example@gmail.com"[m
[32m+[m[41m                [m
[32m+[m[32m            MDTextField:[m[41m [m
[32m+[m[32m                id: password[m
[32m+[m[32m                hint_text: "Password"[m
[32m+[m[32m                font_name: "fonts/Poppins-Medium.ttf"[m
[32m+[m[32m                current_hint_text_color: 0, 0, 0, 1[m
[32m+[m[32m                password: True[m
[32m+[m
[32m+[m[32m        MDBoxLayout:[m
[32m+[m[32m            #pos_hint: {"center_x": .5, "center_y": .75}[m
[32m+[m[32m            orientation: "vertical"[m
[32m+[m[32m            padding:[dp(50),dp(50),dp(50),dp(50)][m
[32m+[m[32m            size: 100, 200[m
[32m+[m[32m            cols: 1[m
[32m+[m[32m            MDRaisedButton:[m
[32m+[m[32m                text: "Masuk"[m
[32m+[m[32m                font_name: "fonts/Poppins-Medium.ttf"[m
[32m+[m[32m                size_hint_x: 1[m
[32m+[m[32m                pos_hint: {"center_x": .5, "center_y": .5}[m
[32m+[m[32m                background_color: "#6495ED"[m
[32m+[m[32m                halign: "center"[m
[32m+[m[32m                on_release:[m[41m [m
[32m+[m[32m                    #app.Firebase.sign_in(email.text, password.text)[m
[32m+[m[32m                    app.login(email.text, password.text)[m
[32m+[m[32m                    #app.connect(email.text)[m
[32m+[m[32m                #on_press: root.registerForm()[m
[32m+[m[32m                #on_press: app.root.current = 'registerForm'[m
[32m+[m[32m            MDFlatButton:[m
[32m+[m[32m                text: "Buat Akun"[m
[32m+[m[32m                font_name: "fonts/Poppins-Medium.ttf"[m
[32m+[m[32m                size_hint_x: .5[m
[32m+[m[32m                pos_hint: {"center_x": .5, "center_y": .5}[m
[32m+[m[32m                background_color: "#6495ED"[m
[32m+[m[32m                halign: "center"[m
[32m+[m[32m                on_release:[m[41m [m
[32m+[m[32m                    app.change_screen("registerForm")[m
[32m+[m[32m                #on_press: root.registerForm()[m
[32m+[m[32m                #on_press: app.root.current = 'registerForm'[m
\ No newline at end of file[m
[1mdiff --git a/login-register/registerForm.kv b/login-register/registerForm.kv[m
[1mnew file mode 100644[m
[1mindex 0000000..5dbfce7[m
[1m--- /dev/null[m
[1m+++ b/login-register/registerForm.kv[m
[36m@@ -0,0 +1,107 @@[m
[32m+[m[32m<TextFieldRound@MDTextFieldRound>:[m
[32m+[m[32m    size_hint_x: None[m
[32m+[m[32m    normal_color: color_shadow[m
[32m+[m[32m    active_color: color_shadow[m
[32m+[m
[32m+[m[32m<registerForm>:[m
[32m+[m[32m    name: "registerForm"[m
[32m+[m[32m    MDBoxLayout:[m
[32m+[m[32m        orientation: "vertical"[m
[32m+[m[32m        md_bg_color: "#f5f5f5"[m
[32m+[m[32m        padding:[dp(0),dp(0),dp(0),dp(0)][m
[32m+[m[32m        MDTopAppBar:[m
[32m+[m[32m            title: "Selamat Datang"[m
[32m+[m[32m            md_bg_color: "#6495ED"[m
[32m+[m[32m            pos_hint: {"center_x": 0.5}[m
[32m+[m[32m            right_action_items: [["dots-vertical", lambda x: app.callback(x, "auth")]][m
[32m+[m
[32m+[m[32m        MDBoxLayout:[m
[32m+[m[32m            pos_hint: {"center_x": .5, "center_y": .5}[m
[32m+[m[32m            padding:[dp(25),dp(25),dp(25),dp(25)][m
[32m+[m[32m            Image:[m
[32m+[m[32m                source: "images/user.png"[m
[32m+[m[32m                size: self.texture_size[m
[32m+[m
[32m+[m[32m        MDBoxLayout:[m
[32m+[m[32m            padding:[dp(25),dp(25),dp(25),dp(25)][m
[32m+[m[32m            pos_hint: {"center_x": .53, "center_y": 1.0}[m
[32m+[m[32m            size_hint_x: .75[m
[32m+[m[32m            size_hint_y: .15[m
[32m+[m[32m            cols: 1[m
[32m+[m[32m            MDLabel:[m
[32m+[m[32m                text: "Register Account"[m
[32m+[m[32m                font_size: 26[m
[32m+[m[32m                font_name: "fonts/Poppins-Black.ttf"[m
[32m+[m
[32m+[m[32m        MDGridLayout:[m
[32m+[m
[32m+[m[32m            pos_hint: {"center_x": .5, "center_y": .75}[m
[32m+[m[32m            size_hint_x: .95[m
[32m+[m[32m            size_hint_y: .75[m
[32m+[m[32m            md_bg_color: "#f5f5f5"[m
[32m+[m[41m            [m
[32m+[m[32m            cols: 2[m
[32m+[m[32m            padding:[dp(40),dp(35),dp(40),dp(35)][m
[32m+[m[32m            spacing:dp(10)[m
[32m+[m
[32m+[m[32m            MDTextField:[m[41m [m
[32m+[m[32m                id: email[m
[32m+[m[32m                hint_text: "Email"[m
[32m+[m[32m                font_name: "fonts/Poppins-Medium.ttf"[m
[32m+[m[32m                current_hint_text_color: 0, 0, 0, 1[m
[32m+[m[32m                helper_text_mode: "persistent"[m
[32m+[m[32m                helper_text: "example@gmail.com"[m
[32m+[m[41m                [m
[32m+[m[41m            [m
[32m+[m[32m            MDTextField:[m[41m [m
[32m+[m[32m                id: username[m
[32m+[m[32m                hint_text: "Username"[m
[32m+[m[32m                font_name: "fonts/Poppins-Medium.ttf"[m
[32m+[m[32m                current_hint_text_color: 0, 0, 0, 1[m
[32m+[m[41m                [m
[32m+[m
[32m+[m[32m            MDTextField:[m[41m [m
[32m+[m[32m                id: password[m
[32m+[m[32m                hint_text: "Password"[m
[32m+[m[32m                font_name: "fonts/Poppins-Medium.ttf"[m
[32m+[m[32m                current_hint_text_color: 0, 0, 0, 1[m
[32m+[m[32m                password: True[m
[32m+[m[41m                [m
[32m+[m
[32m+[m[32m            MDTextField:[m[41m [m
[32m+[m[32m                id: fullname[m
[32m+[m[32m                hint_text: "Full Name"[m
[32m+[m[32m                font_name: "fonts/Poppins-Medium.ttf"[m
[32m+[m[32m                current_hint_text_color: 0, 0, 0, 1[m
[32m+[m
[32m+[m[32m        MDBoxLayout:[m
[32m+[m[32m            orientation: "vertical"[m
[32m+[m[32m            padding:[dp(50),dp(50),dp(50),dp(50)][m
[32m+[m[32m            size: 100, 200[m
[32m+[m[32m            cols: 1[m
[32m+[m[32m            MDRaisedButton:[m
[32m+[m[32m                text: "Buat Akun"[m
[32m+[m[32m                font_name: "fonts/Poppins-Medium.ttf"[m
[32m+[m[32m                size_hint_x: 1[m
[32m+[m[32m                pos_hint: {"center_x": .5, "center_y": .5}[m
[32m+[m[32m                background_color: "#6495ED"[m
[32m+[m[32m                halign: "center"[m
[32m+[m[32m                on_release:[m[41m [m
[32m+[m[32m                    #app.Firebase.sign_up(email.text, username.text, fullname.text, password.text)[m
[32m+[m[32m                    app.register(email.text, username.text, fullname.text, password.text)[m
[32m+[m[32m                #on_press: root.registerForm()[m
[32m+[m[32m                #on_press: app.root.current = 'registerForm'[m
[32m+[m[32m            MDFlatButton:[m
[32m+[m[32m                text: "Kembali"[m
[32m+[m[32m                font_name: "fonts/Poppins-Medium.ttf"[m
[32m+[m[32m                size_hint_x: .5[m
[32m+[m[32m                pos_hint: {"center_x": .5, "center_y": .5}[m
[32m+[m[32m                background_color: "#6495ED"[m
[32m+[m[32m                halign: "center"[m
[32m+[m[32m                on_release:[m[41m [m
[32m+[m[32m                    app.change_screen("loginForm")[m
[32m+[m[32m                    #app.logout()[m
[32m+[m[32m                #on_press: root.registerForm()[m
[32m+[m[32m                #on_press: app.root.current = 'registerForm'[m
[32m+[m[41m            [m
[32m+[m[41m        [m
\ No newline at end of file[m
[1mdiff --git a/main.py b/main.py[m
[1mnew file mode 100644[m
[1mindex 0000000..b98b070[m
[1m--- /dev/null[m
[1m+++ b/main.py[m
[36m@@ -0,0 +1,241 @@[m
[32m+[m[32mimport kivy[m
[32m+[m
[32m+[m[32m#from firebase import firebase[m
[32m+[m[32mimport os[m
[32m+[m[32mfrom os.path import exists[m
[32m+[m
[32m+[m[32mfrom kivy.app import App[m
[32m+[m[32mfrom kivy.uix.boxlayout import BoxLayout[m
[32m+[m[32mfrom kivy.uix.gridlayout import GridLayout[m
[32m+[m[32mfrom kivy.uix.widget import Widget[m
[32m+[m[32mfrom kivy.uix.button import Button[m
[32m+[m[32mfrom kivy.core.window import Window[m
[32m+[m[32mfrom kivy.lang import Builder[m
[32m+[m[32mfrom kivy.factory import Factory[m
[32m+[m[32mimport kivymd[m
[32m+[m[32mfrom kivymd.app import MDApp[m
[32m+[m[32mfrom kivy.properties import StringProperty[m
[32m+[m[32mfrom kivy.properties import ObjectProperty[m
[32m+[m[32mfrom kivy.properties import BooleanProperty[m
[32m+[m[32mfrom kivy.uix.screenmanager import Screen[m
[32m+[m[32mfrom kivy.uix.screenmanager import ScreenManager[m
[32m+[m[32mfrom kivymd.uix.relativelayout import MDRelativeLayout[m
[32m+[m[32mfrom kivy.clock import Clock[m
[32m+[m
[32m+[m[32m#from auth import MyFirebase[m
[32m+[m
[32m+[m[32mfrom kivy.metrics import dp[m
[32m+[m[32mfrom kivymd.uix.menu import MDDropdownMenu[m
[32m+[m[32mfrom kivymd.uix.snackbar import Snackbar[m
[32m+[m
[32m+[m[32mfrom kivy.uix.carousel import Carousel[m
[32m+[m[32mfrom kivy.core.text import LabelBase[m
[32m+[m[32mfrom kivy.storage.jsonstore import JsonStore[m
[32m+[m
[32m+[m[32mglobal sm[m
[32m+[m[32msm = ScreenManager()[m
[32m+[m
[32m+[m[32mglobal firebase[m
[32m+[m[32m#firebase = firebase.FirebaseApplication("https://informasi-60179-default-rtdb.asia-southeast1.firebasedatabase.app/", None)[m
[32m+[m
[32m+[m[32m## PACKAGE ##[m
[32m+[m[32mclass loginForm(Screen):[m
[32m+[m[32m    loginForm = Builder.load_file("login-register/loginForm.kv")[m
[32m+[m[32m    pass[m
[32m+[m
[32m+[m[32mclass registerForm(Screen):[m
[32m+[m[32m    registerForm = Builder.load_file("login-register/registerForm.kv")[m
[32m+[m[32m    pass[m
[32m+[m
[32m+[m[32mclass homeForm(Screen):[m
[32m+[m[32m    homeForm = Builder.load_file("home/homeForm.kv")[m
[32m+[m[32m    pass[m
[32m+[m[32m## PACKAGE ##[m
[32m+[m
[32m+[m[32m## HOME ##[m
[32m+[m[32mclass aboutForm(Screen):[m
[32m+[m[32m    aboutForm = Builder.load_file("home/aboutForm.kv")[m
[32m+[m[32m    pass[m
[32m+[m
[32m+[m[32mclass profileForm(Screen):[m
[32m+[m[32m    profileForm = Builder.load_file("home/profileForm.kv")[m
[32m+[m[32m    pass[m
[32m+[m[32m## HOME ##[m
[32m+[m
[32m+[m[32mclass MainApp(MDApp):[m
[32m+[m[32m    def __init__(self, **kwargs):[m
[32m+[m[32m        super().__init__(**kwargs)[m
[32m+[m[32m        self.data = JsonStore("informasi/resources/data.json")[m
[32m+[m[32m        self.auth = JsonStore("informasi/resources/auth.json")[m
[32m+[m[41m        [m
[32m+[m[32m    def build(self):[m
[32m+[m[32m        self.theme_cls.theme_style = 'Light'[m
[32m+[m[32m        self.theme_cls.primary_palette = 'Red'[m
[32m+[m[32m        ## DOTS-VERTICAL ##[m
[32m+[m[41m        [m
[32m+[m[32m        ## DOTS-VERTICAL ##[m
[32m+[m[41m        [m
[32m+[m[32m        ## DAFTAR SCREEN ##[m
[32m+[m[32m        sm.add_widget(loginForm(name='loginForm'))[m
[32m+[m[32m        sm.add_widget(registerForm(name='registerForm'))[m
[32m+[m[32m        sm.add_widget(homeForm(name='homeForm'))[m
[32m+[m[41m        [m
[32m+[m[32m        sm.add_widget(aboutForm(name='aboutForm'))[m
[32m+[m[32m        sm.add_widget(profileForm(name='profileForm'))[m
[32m+[m[32m        ## DAFTAR SCREEN ##[m
[32m+[m[41m        [m
[32m+[m[32m        if exists("resources/auth"):[m
[32m+[m[32m            self.connect(self.auth.get('client')['email'])[m
[32m+[m[32m        else:[m
[32m+[m[32m            return sm[m
[32m+[m[41m    [m
[32m+[m[32m    def connect(self, email):[m
[32m+[m[32m        app = App.get_running_app()[m
[32m+[m[32m        app = app.root.get_screen("homeForm")[m
[32m+[m[32m        app.ids.label.text = "Welcome, "+ self.data.get(email)['fullname'] +""[m
[32m+[m[32m        sm.current = 'homeForm'[m
[32m+[m[41m    [m
[32m+[m[32m    def callback(self, button, type):[m
[32m+[m[32m        if type == "home":[m
[32m+[m[32m            menu_items = [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "viewclass": "OneLineListItem",[m
[32m+[m[32m                    "text": f"Settings",[m
[32m+[m[32m                    "height": dp(56),[m
[32m+[m[32m                    "on_release": lambda x=f"Customer Service": self.menu_callback(x, type),[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "viewclass": "OneLineListItem",[m
[32m+[m[32m                    "text": f"Share",[m
[32m+[m[32m                    "height": dp(56),[m
[32m+[m[32m                    "on_release": lambda x=f"Privacy Policy": self.menu_callback(x, type),[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "viewclass": "OneLineListItem",[m
[32m+[m[41m                    [m
[32m+[m[32m                    "text": f"Rate Us",[m
[32m+[m[32m                    "height": dp(56),[m
[32m+[m[32m                    "on_release": lambda x=f"Rate Us": self.menu_callback(x, type),[m
[32m+[m[32m                }[m
[32m+[m[32m            ][m
[32m+[m[32m            self.menu = MDDropdownMenu([m
[32m+[m[32m                items=menu_items,[m
[32m+[m[32m                width_mult=4,[m
[32m+[m[32m            )[m
[32m+[m[32m            self.menu.caller = button[m
[32m+[m[32m            self.menu.open()[m
[32m+[m[32m        if type == "auth":[m
[32m+[m[32m            menu_items = [[m
[32m+[m[32m                {[m
[32m+[m[32m                    "viewclass": "OneLineListItem",[m
[32m+[m[32m                    "text": f"Login",[m
[32m+[m[32m                    "height": dp(56),[m
[32m+[m[32m                    "on_release": lambda x=f"loginForm": self.menu_callback(x, type),[m
[32m+[m[32m                },[m
[32m+[m[32m                {[m
[32m+[m[32m                    "viewclass": "OneLineListItem",[m
[32m+[m[32m                    "text": f"Register",[m
[32m+[m[32m                    "height": dp(56),[m
[32m+[m[32m                    "on_release": lambda x=f"registerForm": self.menu_callback(x, type),[m
[32m+[m[32m                }[m
[32m+[m[32m            ][m
[32m+[m[32m            self.menu = MDDropdownMenu([m
[32m+[m[32m                items=menu_items,[m
[32m+[m[32m                width_mult=1.6,[m
[32m+[m[32m            )[m
[32m+[m[32m            self.menu.caller = button[m
[32m+[m[32m            self.menu.open()[m
[32m+[m
[32m+[m[41m    [m
[32m+[m[32m    def change_screen(self, screen):[m
[32m+[m[32m        screen = sm.current = screen[m
[32m+[m[41m        [m
[32m+[m[32m        ## REGISTER FORM ##[m
[32m+[m[32m        app = App.get_running_app()[m
[32m+[m[32m        register = app.root.get_screen("registerForm")[m
[32m+[m[32m        register.ids.email.text = ''[m
[32m+[m[32m        register.ids.username.text = ''[m
[32m+[m[32m        register.ids.fullname.text = ''[m
[32m+[m[32m        register.ids.password.text = ''[m
[32m+[m[32m        ## REGISTER FORM ##[m
[32m+[m[41m        [m
[32m+[m[32m        ## LOGIN FORM ##[m
[32m+[m[32m        app = App.get_running_app()[m
[32m+[m[32m        login = app.root.get_screen("loginForm")[m
[32m+[m[32m        login.ids.email.text = ''[m
[32m+[m[32m        login.ids.password.text = ''[m
[32m+[m[32m        ## LOGIN FORM ##[m
[32m+[m[41m        [m
[32m+[m[32m        return screen[m
[32m+[m[41m    [m
[32m+[m[32m    def menu_callback(self, text_item, type):[m
[32m+[m[32m        if type == "home":[m
[32m+[m[32m            Snackbar(text=text_item).open()[m
[32m+[m[32m        if type == "auth":[m
[32m+[m[32m            self.change_screen(text_item)[m
[32m+[m[32m        self.menu.dismiss()[m
[32m+[m[41m    [m
[32m+[m[32m    def openUrl(self, url):[m
[32m+[m[32m        import webbrowser[m
[32m+[m[32m        webbrowser.open(url)[m
[32m+[m[41m        [m
[32m+[m[32m    def logout(self):[m
[32m+[m[32m        #sm.current = "loginForm"[m
[32m+[m[32m        self.change_screen("loginForm")[m
[32m+[m[32m        Snackbar(text="Anda telah keluar").open()[m
[32m+[m[41m    [m
[32m+[m[32m    def my_account(self):[m
[32m+[m[32m        return self.email[m
[32m+[m[41m    [m
[32m+[m[32m    def login(self, email, password):[m
[32m+[m[32m        empty = "Silahkan periksa informasi login anda"[m
[32m+[m[32m        if email == "":[m
[32m+[m[32m            Snackbar(text=empty).open()[m
[32m+[m[32m            return False[m
[32m+[m[32m        if password == "":[m
[32m+[m[32m            Snackbar(text=empty).open()[m
[32m+[m[32m            return False[m
[32m+[m[41m        [m
[32m+[m[32m        if self.data.exists(email):[m
[32m+[m[32m            if password == self.data.get(email)['password']:[m
[32m+[m[41m                [m
[32m+[m[32m                username = self.data.get(email)['username'][m
[32m+[m[32m                fullname = self.data.get(email)['fullname'][m
[32m+[m[32m                #self.go_screen("home", email, username, password, fullname)[m
[32m+[m[32m                self.auth.put('client', email = email, password = password)[m
[32m+[m[32m                self.connect(email)[m
[32m+[m[32m                Snackbar(text="Berhasil masuk sebagai " + fullname +"").open()[m
[32m+[m[41m                [m
[32m+[m[32m            else:[m
[32m+[m[32m                Snackbar(text="Password tidak sesuai, Silahkan periksa kembali").open()[m
[32m+[m[32m        else:[m
[32m+[m[32m            Snackbar(text="Akun ini tidak ada").open()[m
[32m+[m[41m            [m
[32m+[m[32m    def register(self, email, username, fullname, password):[m
[32m+[m[32m        empty = "Silahkan periksa data anda dengan Baik"[m
[32m+[m[32m        if email == "":[m
[32m+[m[32m            Snackbar(text=empty).open()[m
[32m+[m[32m            return False[m
[32m+[m[32m        if username == "":[m
[32m+[m[32m            Snackbar(text=empty).open()[m
[32m+[m[32m            return False[m
[32m+[m[32m        if fullname == "":[m
[32m+[m[32m            Snackbar(text=empty).open()[m
[32m+[m[32m            return False[m
[32m+[m[32m        if password == "":[m
[32m+[m[32m            Snackbar(text=empty).open()[m
[32m+[m[32m            return False[m
[32m+[m[41m        [m
[32m+[m[32m        if self.data.exists(email):[m
[32m+[m[32m            Snackbar(text="Email tersebut telah digunakan").open()[m
[32m+[m[32m        elif self.data.exists(username):[m
[32m+[m[32m            Snackbar(text="Username tersebut telah digunakan").open()[m
[32m+[m[32m        else:[m
[32m+[m[32m            self.data.put(email, fullname = fullname, username = username, password = password)[m
[32m+[m[32m            Snackbar(text="Akun Berhasil Dibuat").open()[m
[32m+[m[32m            # xself.add_members(1)[m
[32m+[m
[32m+[m[32mif __name__ == '__main__':[m
[32m+[m[32m    login = MainApp()[m
[32m+[m[32m    Window.size=(360, 640)[m
[32m+[m[32m    login.run()[m
\ No newline at end of file[m
[1mdiff --git a/readme.md b/readme.md[m
[1mnew file mode 100644[m
[1mindex 0000000..422a45c[m
[1m--- /dev/null[m
[1m+++ b/readme.md[m
[36m@@ -0,0 +1,23 @@[m
[32m+[m[32mIsi Tampilan:[m
[32m+[m[32m    login:[m
[32m+[m[32m        - Email[m
[32m+[m[32m        - Password[m
[32m+[m[32m        - dots-vertical-button (login, register)[m
[32m+[m[41m    [m
[32m+[m[32m    register:[m
[32m+[m[32m        - email[m
[32m+[m[32m        - username[m
[32m+[m[32m        - fullname[m
[32m+[m[32m        - password[m
[32m+[m[41m    [m
[32m+[m[32m    home:[m
[32m+[m[32m        - about[m
[32m+[m[32m        - instagram tkjsmeksa[m
[32m+[m[32m        - youtube tkjsmeksa[m
[32m+[m[32m        - discord cobrass[m
[32m+[m[32m        - logout[m
[32m+[m[32m        - dots-vertical-button (settings, share, rate us)[m
[32m+[m
[32m+[m[32mNote:[m
[32m+[m[32mUntuk update selanjutnya cek github di bawah ini[m
[32m+[m[32mhttps://github.com/mdafftfa/tkjsmeksakdr[m
\ No newline at end of file[m
[1mdiff --git a/resources/auth.json b/resources/auth.json[m
[1mnew file mode 100644[m
[1mindex 0000000..44b685d[m
[1m--- /dev/null[m
[1m+++ b/resources/auth.json[m
[36m@@ -0,0 +1 @@[m
[32m+[m[32m{"daffa": {"username": "daffa", "fullname": "daffa", "password": "daffa"}, "client": {"email": "daffa01futn@gmail.com", "password": "12345678"}, "bk": {"username": "bk", "fullname": "Muhammad Daffa", "password": "bk"}, "devrangers01@gmail.com": {"username": "mdafftfa", "fullname": "MuhammadDaffa", "password": "daffagila123"}}[m
\ No newline at end of file[m
[1mdiff --git a/resources/data.json b/resources/data.json[m
[1mnew file mode 100644[m
[1mindex 0000000..f66097a[m
[1m--- /dev/null[m
[1m+++ b/resources/data.json[m
[36m@@ -0,0 +1 @@[m
[32m+[m[32m{"daffa": {"fullname": "daffa", "username": "daffa", "password": "daffa"}, "bk": {"fullname": "bk", "username": "bk", "password": "bk"}, "daffa01futn@gmail.com": {"fullname": "Muhammad Daffa", "username": "muhammaddaffa", "password": "12345678"}}[m
\ No newline at end of file[m
[1mdiff --git a/video.mp4 b/video.mp4[m
[1mnew file mode 100644[m
[1mindex 0000000..32e9e05[m
Binary files /dev/null and b/video.mp4 differ
