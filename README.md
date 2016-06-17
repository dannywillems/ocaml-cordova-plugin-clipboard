# ocaml-cordova-plugin-clipboard

[![LGPL-v3 licensed](https://img.shields.io/badge/license-LGPLv3-blue.svg)](https://raw.githubusercontent.com/dannywillems/ocaml-cordova-plugin-clipboard/master/LICENSE)
[![Build Status](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-clipboard.svg?branch=master)](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-clipboard)

Binding to
[cordova-universal-clipboard](https://github.com/VersoSolutions/CordovaClipboard)

[Example
application](https://github.com/dannywillems/ocaml-cordova-plugin-clipboard-example).

## What does cordova-universal-clipboard do ?

```
Cordova_clipboard management plugin for Cordova/PhoneGap that supports iOS, Android, and
Windows Phone 8.
```

Source: [cordova-universal-clipboard](https://github.com/VersoSolutions/CordovaClipboard)

## How to install and compile your project by using this plugin ?

Don't forget to switch to a compiler **>= 4.03.0**.
```Shell
opam switch 4.03.0
```

You can use opam by pinning the repository with
```Shell
opam pin add cordova-plugin-clipboard https://github.com/dannywillems/ocaml-cordova-plugin-clipboard.git
```

and to compile your project, use
```Shell
ocamlfind ocamlc -c -o [output_file] -package gen_js_api -package cordova-plugin-clipboard [...] -linkpkg [other arguments]
```

Don't forget to install the cordova plugin clipboard with
```Shell
cordova plugin add cordova-universal-clipboard
```

## How to use ?

See the official documentation
[cordova-universal-clipboard](https://github.com/VersoSolutions/CordovaClipboard)
