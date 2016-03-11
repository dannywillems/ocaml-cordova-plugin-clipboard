class type clipboard =
  object
    (* --------------- COPY --------------- *)
    (* No need to success and error callbacks *)
    method copy : Js.js_string Js.t -> unit Js.meth
    (* No need of error callback *)
    method copy_succ : Js.js_string Js.t -> (unit -> unit) -> unit Js.meth
    (* Need both *)
    method copy_cb : Js.js_string Js.t -> (unit -> unit) -> (Js.js_string Js.t ->
      unit) -> unit Js.meth

    (* -------------- PASTE --------------- *)
    (* No need of error callback *)
    method paste : (Js.js_string Js.t -> unit) -> unit Js.meth
    (* Need both *)
    method paste_cb : (Js.js_string Js.t -> unit) -> (Js.js_string Js.t -> unit) ->
      unit Js.meth
  end

let clipboard () = Js.Unsafe.js_expr ("cordova.plugins.clipboard")
