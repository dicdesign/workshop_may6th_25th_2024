#### To install netlist viewer

```
1. sudo apt install npm
2. git clone https://github.com/nturley/netlistsvg
3. cd netlistsvg
4. sudo npm install --legacy-peer-deps
#npm install # install dependencies
5. sudo npm install -g . # install netlistsvg to system
```
#### To uninstall
```
sudo npm uninstall -g netlistsvg # uninstall from system
```

#### convert json file to svg
```
netlistsvg input_json_file [-o output_svg_file] [--skin skin_file]
```
#### To view huge files it is better to install inkscape
```
sudo apt install inkscape

```
#### After launching/opening inkspace
```
[inkscape file.svg] will open the inkscape then do the following if image outline only is seen
View -> Display Mode -> Outline
```
