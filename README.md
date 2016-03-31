# ocaml-cordova-plugin-clipboard

Binding to
[cordova-universal-clipboard](https://github.com/VersoSolutions/CordovaClipboard)

[Example
application](https://github.com/dannywillems/ocaml-cordova-plugin-clipboard-example).

## What does cordova-universal-clipboard do ?

```
This plugin provides access to the device's accelerometer. The accelerometer is
a motion sensor that detects the change (delta) in movement relative to the
current device orientation, in three dimensions along the x, y, and z axis.
Access is via a global cordova.plugins.clipboard object.
Although the object is attached to the global scoped navigator, it is not
available until after the deviceready event.
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
