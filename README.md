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

## How to use ?

See the official documentation
[cordova-universal-clipboard](https://github.com/VersoSolutions/CordovaClipboard)

## ! BE CAREFUL !

The device plugin creates a new object called *cordova.plugins.clipboard*, but the object is
available when the *deviceready* event is handled.

We don't provide a *clipboard* variable in this plugin (as said in the official
documentation on js_of_ocaml). If we did, *clipboard* will be set to **undefined**
because the *cordova.plugins.clipboard* object doesn't exist when we create the variable.

Instead, we provide a function *Clipboard.clipboard* of type unit -> Clipboard.clipboard
Js.t which does the binding when you call it.
So, use

```OCaml
let on_device_ready _ =
  let c = Clipboard.clipboard () in
  (* Some code *)

let _ =
  Dom.addEventListener Dom_html.document (Dom.Event.make "deviceready")
  (Dom_html.handler on_device_ready) Js._false
```
