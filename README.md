# Multiversal Demmo

Multiversal é um jogo desenvolvido em HaxeFlixel.
Este repositório contém o código-fonte completo da demo do projeto.

---

## 🛠️ Como compilar o jogo

### 1. Instale o Haxe

https://haxe.org/

---

### 2. Execute os comandos no terminal

```
haxelib setup
```

(Pressione Enter quando aparecer `Path:`)

```
haxelib install lime
haxelib install flixel
haxelib run lime setup flixel
haxelib run lime setup
```

(Pressione `y` quando perguntado)

```
haxelib run flixel-tools setup
```

(Pressione `y` nas perguntas, selecione seu editor e insira a senha se necessário)

---

### 3. Instale um editor de código

* Visual Studio Code (recomendado): https://code.visualstudio.com/
* Sublime Text: https://www.sublimetext.com/
* FlashDevelop: https://github.com/fdorg/flashdevelop
* IntelliJ IDEA: https://www.jetbrains.com/idea/

---

### 4. Instale o Git

https://git-scm.com/

---

### 5. Baixe o projeto

Abra o terminal na pasta desejada (ex: Documentos) e execute:

```
git clone https://github.com/Azeouza/Multiversal.git
```

---

### 6. Compilar o jogo

Entre na pasta do projeto:

```
cd Multiversal
```

E execute conforme a plataforma:

* Windows:

```
lime build windows
```

* Linux:

```
lime build linux
```

⚠️ No Linux, pode ser necessário instalar o VLC para reprodução de vídeo:

```
sudo apt install vlc
```

* MacOS:

```
lime build mac
```

* Neko (modo rápido para testes):

```
lime test neko
```

---

## 💡 Dicas

* Os executáveis ficam em:

```
Multiversal/export/<plataforma>/bin
```

* Para executar automaticamente após compilar:
  → troque `build` por `test`

Exemplo:

```
lime test windows
```

---

## 👨‍💻 Créditos

**Azeouza**
Programador, animador, artista e ideias
YouTube: @AzeouzaOFC

**Arthur**
Autor da história, artista e ideias de design

---

## 🌎 English version

https://github.com/Azeouza/Multiversal/README-en-US.md
