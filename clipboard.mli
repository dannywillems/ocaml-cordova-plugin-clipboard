(* -------------------------------------------------------------------------- *)
class clipboard : Ojs.t ->
  object
    inherit Ojs.obj
    (* --------------- COPY --------------- *)
    (* copy [str] *)
    method copy         : string -> unit
    [@@js.call "copy"]

    (* copy [str] [success_cb] *)
    method copy_succ    : string          ->
                          (unit -> unit)  ->
                          unit
    [@@js.call "copy"]

    (* copy [str] [success_cb] [error_cb] *)
    method copy_cb      : string            ->
                          (unit -> unit)    ->
                          (string -> unit)  ->
                          unit
    [@@js.call "copy"]
    (* ------------------------------------ *)

    (* -------------- PASTE --------------- *)
    (* paste [success_cb] *)
    method paste        : (string -> unit) ->
                          unit
    [@@js.call "paste"]
    (* paste_cb [success_cb] [error_cb] *)
    method paste_cb     : (string -> unit) ->
                          (string -> unit) ->
                          unit
    [@@js.call "paste"]
    (* ------------------------------------ *)
  end
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
val t : unit -> clipboard
[@@js.get "cordova.plugins.clipboard"]
(* -------------------------------------------------------------------------- *)
