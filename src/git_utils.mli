val gitlab_repo :
     bot_info:Bot_components.Bot_info.bot_info
  -> owner:string
  -> name:string
  -> string

val report_status : string -> string -> int -> ('a, string) result

val gitlab_ref :
     bot_info:Bot_components.Bot_info.bot_info
  -> issue:Bot_components.GitHub_types.issue
  -> gitlab_of_github:(string -> string option)
  -> github_mapping:(string, string) Base.Hashtbl.t
  -> gitlab_mapping:(string, string) Base.Hashtbl.t
  -> Bot_components.GitHub_types.remote_ref_info Lwt.t

val ( |&& ) : string -> string -> string

val execute_cmd : string -> (unit, string) result Lwt.t

val git_fetch :
  ?force:bool -> Bot_components.GitHub_types.remote_ref_info -> string -> string

val git_push :
     ?force:bool
  -> remote_ref:Bot_components.GitHub_types.remote_ref_info
  -> local_ref:string
  -> string

val git_delete :
  remote_ref:Bot_components.GitHub_types.remote_ref_info -> string

val git_make_ancestor : base:string -> string -> (bool, string) result Lwt.t

val git_coq_bug_minimizer :
     bot_info:Bot_components.Bot_info.bot_info
  -> script:string
  -> comment_thread_id:string
  -> comment_author:string
  -> (bool, string) result Lwt.t

val init_git_bare_repository :
  bot_info:Bot_components.Bot_info.bot_info -> unit Lwt.t

val run_coq_minimizer :
     bot_info:Bot_components.Bot_info.bot_info
  -> script:string
  -> comment_thread_id:string
  -> comment_author:string
  -> unit
  -> unit Lwt.t
