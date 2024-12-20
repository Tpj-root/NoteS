# NoteS

**Verify Installation**

```
glxinfo | grep "OpenGL"
```


**Install OpenGL Development Libraries**

```
sudo apt-get install libgl1-mesa-dev
```

**Installation of Dependencies:**


```
sudo apt-get install libglfw3-dev libglew-dev libglm-dev

```

**Compile**

```
g++ -o opengl_test opengl_test.cpp -lGL -lGLEW -lGLFW


./opengl_test
```


**Check the GLFW Library Path**
```
find /usr/lib /lib -name "libglfw*" 
```

**Specify the Library Path**

```
g++ -o opengl_test opengl_test.cpp -L/usr/lib/x86_64-linux-gnu -lGL -lGLEW -L/usr/lib/x86_64-linux-gnu -lglfw
```





