# ocaml-cordova-plugin-clipboard

* gen_js_api (master branch): [![Build Status](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-clipboard.svg?branch=master)](https://travis-ci.org/dannywillems/ocaml-cordova-plugin-clipboard)

Binding to
[cordova-universal-clipboard](https://github.com/VersoSolutions/CordovaClipboard)

[Example
application](https://github.com/dannywillems/ocaml-cordova-plugin-clipboard-example).

## What does cordova-universal-clipboard do ?

```
Clipboard management plugin for Cordova/PhoneGap that supports iOS, Android, and
Windows Phone 8.
```

Source: [cordova-universal-clipboard](https://github.com/VersoSolutions/CordovaClipboard)

## Repository branches and tags

We are migrating bindings from
[js_of_ocaml](https://github.com/ocsigen/js_of_ocaml) (low level bindings) to
[gen_js_api](https://github.com/lexifi/gen_js_api) (high level bindings).

The gen_js_api binding allows to use *pure* ocaml types (you don't have to use
the ## syntax from js_of_ocaml or Js.string type but only # and string type).

The js_of_ocaml version is available in the branch
[*js_of_ocaml*](https://github.com/dannywillems/ocaml-cordova-plugin-clipboard/tree/js_of_ocaml)
but we **recommend** to use the gen_js_api version which is the master branch.

## How to install and compile your project by using this plugin ?

Don't forget to switch to a compiler **>= 4.03.0**.
```Shell
opam switch 4.03.0+beta1
```

You can use opam by pinning the repository with
```Shell
opam pin add cordova-plugin-clipbard https://github.com/dannywillems/ocaml-cordova-plugin-clipboard.git
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

## ! BE CAREFUL !

The device plugin creates a new object called *clipboard*, but the object is
available when the *deviceready* event is handled.

We provide a function *Clipboard.t* of type unit -> Clipboard.clipboard which
does the binding when you call it.
So, use (with js_of_ocaml)

```OCaml
let on_device_ready _ =
  let c = Clipboard.t () in
  (* Some code *)

let _ =
  Dom.addEventListener Dom_html.document (Dom.Event.make "deviceready")
  (Dom_html.handler on_device_ready) Js._false
```
