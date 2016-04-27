(* -------------------------------------------------------------------------- *)
class clipboard : Ojs.t ->
  object
    inherit Ojs.obj
    (* --------------- COPY --------------- *)
    (* copy [str] ?[success_cb] *)
    method copy     : string          ->
                      ?success_cb:((unit -> unit) [@js.default (fun () -> ())])
                                      ->
                      ?error_cb:((string -> unit) [@js.default (fun e -> ())])
                                      ->
                      unit            ->
                      unit
    [@@js.call "copy"]
    (* ------------------------------------ *)

    (* -------------- PASTE --------------- *)
    (* paste_cb [success_cb] ?[error_cb] *)
    method paste    : (string -> unit) ->
                      ?error_cb:((string -> unit) [@js.default (fun e -> ())])
                                      ->
                      unit            ->
                      unit
    [@@js.call "paste"]
    (* ------------------------------------ *)
  end
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
val t : unit -> clipboard
[@@js.get "cordova.plugins.clipboard"]
(* -------------------------------------------------------------------------- *)
