# OverWorld

OverWorld is a platformer game made in Haxe.

i wanted to make this for ludum dare but i was late :'(

## Downloading

First, you need to download [Haxe 4.1.5](https://haxe.org/download/version/4.1.5/) before we continue.
Then install & setup HaxeFlixel by using the following commands.

```bash
haxelib install lime
haxelib install openfl
haxelib install flixel
haxelib install flixel-tools
--
haxelib run lime setup flixel
haxelib run lime setup
haxelib run flixel-tools setup
```

## Building

Building is so simple (only for native platforms lol)!
You just need to run ONE command.

HTML5 (browser basically):
```haxe
lime test html5
```


Flash (are you sure you want building for flash?):
```haxe
lime test flash
```


Windows:
Woah, buddy... For this one there are TWO ways to build for Windows.

C++ (the cool way!!!!):
This one takes a lot, but it's worth it.
To makes this simplier, just run this.
```haxe
lime setup windows
```
```haxe
lime test windows
```


Neko (boooooh! da ugly and grossy way):
So... you don't want to wait, or your PC is literally a toaster.
OK then.
```haxe
lime test neko
```


HashLink (same as neko):
This requires a long setup.
```bash
lime test hl
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.
