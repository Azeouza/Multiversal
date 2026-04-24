# Multiversal

Multiversal is a game developed using HaxeFlixel.
This repository contains the full source code of the project.

---

## 🛠️ How to build the game

### 1. Install Haxe

https://haxe.org/

---

### 2. Run the following commands in a terminal

```bash
haxelib setup
```

(Press Enter when `Path:` appears)

```bash
haxelib install lime
haxelib install flixel
haxelib run lime setup flixel
haxelib run lime setup
```

(Press `y` when prompted)

```bash
haxelib run flixel-tools setup
```

(Press `y` when asked, choose your code editor, and enter your system password if needed)

---

### 3. Install a code editor

* Visual Studio Code (recommended): https://code.visualstudio.com/
* Sublime Text: https://www.sublimetext.com/
* FlashDevelop: https://github.com/fdorg/flashdevelop
* IntelliJ IDEA: https://www.jetbrains.com/idea/

---

### 4. Install Git

https://git-scm.com/

---

### 5. Download the project

Open a terminal in your desired folder (e.g., Documents) and run:

```bash
git clone https://github.com/Azeouza/Multiversal.git
```

---

### 6. Build the game

Go to the project folder:

```bash
cd Multiversal
```

Then run the command for your platform:

* Windows:

```bash
lime build windows
```

* Linux:

```bash
lime build linux
```

⚠️ On Linux, you may need to install VLC for video playback:

```bash
sudo apt install vlc
```

* macOS:

```bash
lime build mac
```

* Neko (fast testing mode):

```bash
lime test neko
```

---

## 💡 Tips

* The builds/executables are located in:

```bash
Multiversal/export/<platform>/bin
```

* To automatically run after building:
  → replace `build` with `test`

Example:

```bash
lime test windows
```

---

## 👨‍💻 Credits

**Azeouza**
Programmer, animator, artist, and ideas
YouTube: @AzeouzaOFC

**Arthur**
Story author, artist, and design ideas

---

## 🌎 Versão em Português

https://github.com/Azeouza/Multiversal/README.md
