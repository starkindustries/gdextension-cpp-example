# Instructions

1. do everything using WSL

2. checkout branch 4.0 for godot-cpp

PowerShell:
```
cd godot-cpp
godot --dump-extension-api extension_api.json
```

WSL:
```
cd godot-cpp
scons platform=windows -j4 custom_api_file=gdextension/extension_api.json
cd ..
```

WSL, from gdextension_cpp_example directory:
```
scons platform=windows
``` 


```
demo/bin/libgdexample.windows.template_debug.x86_64.dll
```


file structure:
```
gdextension_cpp_example/
|
+--demo/                  # game example/demo to test the extension
|   |
|   +--main.tscn
|   |
|   +--bin/
|       |
|       +--gdexample.gdextension
|
+--godot-cpp/             # C++ bindings
|
+--src/                   # source code of the extension we are building
|   |
|   +--register_types.cpp
|   +--register_types.h
|   +--gdexample.cpp
|   +--gdexample.h
```