(* --------------- COPY --------------- *)
(* copy [str] ?[success_cb] *)
val copy :
  string                                                    ->
  ?success_cb:((unit -> unit) [@js.default (fun () -> ())]) ->
  ?error_cb:((string -> unit) [@js.default (fun e -> ())])  ->
  unit                                                      ->
  unit
[@@js.global "cordova.plugins.clipboard.copy"]
(* ------------------------------------ *)

(* -------------- PASTE --------------- *)
(* paste [success_cb] ?[error_cb] *)
val paste :
  (string -> unit)                                          ->
  ?error_cb:((string -> unit) [@js.default (fun e -> ())])  ->
  unit                                                      ->
  unit
[@@js.global "cordova.plugins.clipboard.paste"]
(* ------------------------------------ *)
