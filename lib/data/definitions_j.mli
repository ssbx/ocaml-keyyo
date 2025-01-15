(* Auto-generated from "definitions.atd" *)
[@@@ocaml.warning "-27-32-33-35-39"]

type k_Unit_t = Definitions_t.k_Unit_t

type k_Scope_t = Definitions_t.k_Scope_t

type k_MinutePlanStatistic_t = Definitions_t.k_MinutePlanStatistic_t = {
  unit: k_Unit_t;
  total: int;
  remaining: int;
  description: string;
  last_usage_ts: int;
  last_update_ts: int;
  start_ts: int;
  end_ts: int
}

type k_FaxTransfer_status_t = Definitions_t.k_FaxTransfer_status_t

type k_FaxTransfer_options_t = Definitions_t.k_FaxTransfer_options_t

type k_FaxTransfer_blocking_status_t =
  Definitions_t.k_FaxTransfer_blocking_status_t

type k_FaxTransfer_t = Definitions_t.k_FaxTransfer_t = {
  csi: int;
  formatted_csi: string;
  name: string;
  offer_id: int;
  offer_name: string;
  commitment_start_date: int;
  status: k_FaxTransfer_status_t;
  blocking_status: k_FaxTransfer_blocking_status_t option;
  options: k_FaxTransfer_options_t list
}

type k_EmailAccount_status_t = Definitions_t.k_EmailAccount_status_t

type k_EmailAccount_options_t = Definitions_t.k_EmailAccount_options_t

type k_EmailAccount_blocking_status_t =
  Definitions_t.k_EmailAccount_blocking_status_t

type k_EmailAccount_t = Definitions_t.k_EmailAccount_t = {
  csi: int;
  formatted_csi: string;
  name: string;
  offer_id: int;
  offer_name: string;
  commitment_start_date: string;
  status: k_EmailAccount_status_t;
  blocking_status: k_EmailAccount_blocking_status_t option;
  options: k_EmailAccount_options_t list;
  first_name: string;
  last_name: string;
  quota: int
}

type k_DirectoryContact_t = Definitions_t.k_DirectoryContact_t = {
  uid: int;
  branch_uid: int;
  name: string;
  first_name: string;
  default_number: int;
  work_number: int;
  work_speed_number: int;
  mobile_number: string;
  mobile_speed_number: int;
  home_number: string;
  home_speed_number: int;
  email: string;
  company: string;
  job: string;
  address: string;
  zipcode: int;
  city: string;
  country: string;
  base64_picture: string
}

type k_DirectoryBranch_t = Definitions_t.k_DirectoryBranch_t = {
  uid: int;
  parent_branch_uid: int;
  name: string;
  depth: int
}

type k_DataUsageStatistic_t = Definitions_t.k_DataUsageStatistic_t = {
  id: int;
  description: string;
  unit: k_Unit_t;
  total: int;
  used: int;
  remaining: int;
  last_usage_ts: int;
  last_update_ts: int;
  start_ts: int;
  end_ts: int
}

type k_DSLAccess_status_t = Definitions_t.k_DSLAccess_status_t

type k_DSLAccess_options_t = Definitions_t.k_DSLAccess_options_t

type k_DSLAccess_blocking_status_t =
  Definitions_t.k_DSLAccess_blocking_status_t

type k_DSLAccess_t = Definitions_t.k_DSLAccess_t = {
  csi: int;
  formatted_csi: string;
  name: string;
  offer_id: int;
  offer_name: string;
  commitment_start_date: string;
  status: k_DSLAccess_status_t;
  blocking_status: k_DSLAccess_blocking_status_t option;
  options: k_DSLAccess_options_t list;
  reference_number: int;
  maximum_download_speed: int;
  maximum_upload_speed: int
}

type k_CallDetailRecord_t = Definitions_t.k_CallDetailRecord_t = {
  call_id: string;
  start_time: string;
  callee: string;
  callee_raw: string;
  caller: string;
  caller_raw: string;
  caller_presentation: string;
  caller_presentation_raw: string;
  quantity: string;
  quantity_billed: string;
  destination_name: string;
  cost: string;
  repayment: string;
  unit: k_Unit_t;
  roaming: string;
  translation_number: string;
  translation_number_raw: string
}

type k_CallBarringGroup_t = Definitions_t.k_CallBarringGroup_t = {
  name: string
}

type k_CTIPlugin_t = Definitions_t.k_CTIPlugin_t = {
  name: string;
  enabled: bool
}

type k_CTIPluginParameter_t = Definitions_t.k_CTIPluginParameter_t = {
  name: string;
  information: string;
  value: string
}

type k_CSIToken_result_t = Definitions_t.k_CSIToken_result_t

type k_CSIToken_t = Definitions_t.k_CSIToken_t = {
  result: k_CSIToken_result_t;
  token: string;
  domain_masks: string list;
  timestamp: int
}

type k_AudioFile_t = Definitions_t.k_AudioFile_t = {
  id: int;
  name: string;
  atype: string;
  is_personal: bool;
  base46_contents: string
}

type k_ACDService_status_t = Definitions_t.k_ACDService_status_t

type k_ACDService_options_t = Definitions_t.k_ACDService_options_t

type k_ACDService_blocking_status_t =
  Definitions_t.k_ACDService_blocking_status_t

type k_ACDService_t = Definitions_t.k_ACDService_t = {
  csi: string;
  formatted_csi: string;
  name: string;
  offer_id: int;
  offer_name: string;
  commitment_start_date: string;
  status: k_ACDService_status_t;
  blocking_status: k_ACDService_blocking_status_t option;
  options: k_ACDService_options_t list
}

type k_ACDProfile_t = Definitions_t.k_ACDProfile_t = {
  identifier: int;
  name: string;
  forced: bool
}

val write_k_Unit_t :
  Buffer.t -> k_Unit_t -> unit
  (** Output a JSON value of type {!type:k_Unit_t}. *)

val string_of_k_Unit_t :
  ?len:int -> k_Unit_t -> string
  (** Serialize a value of type {!type:k_Unit_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_Unit_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_Unit_t
  (** Input JSON data of type {!type:k_Unit_t}. *)

val k_Unit_t_of_string :
  string -> k_Unit_t
  (** Deserialize JSON data of type {!type:k_Unit_t}. *)

val write_k_Scope_t :
  Buffer.t -> k_Scope_t -> unit
  (** Output a JSON value of type {!type:k_Scope_t}. *)

val string_of_k_Scope_t :
  ?len:int -> k_Scope_t -> string
  (** Serialize a value of type {!type:k_Scope_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_Scope_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_Scope_t
  (** Input JSON data of type {!type:k_Scope_t}. *)

val k_Scope_t_of_string :
  string -> k_Scope_t
  (** Deserialize JSON data of type {!type:k_Scope_t}. *)

val write_k_MinutePlanStatistic_t :
  Buffer.t -> k_MinutePlanStatistic_t -> unit
  (** Output a JSON value of type {!type:k_MinutePlanStatistic_t}. *)

val string_of_k_MinutePlanStatistic_t :
  ?len:int -> k_MinutePlanStatistic_t -> string
  (** Serialize a value of type {!type:k_MinutePlanStatistic_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_MinutePlanStatistic_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_MinutePlanStatistic_t
  (** Input JSON data of type {!type:k_MinutePlanStatistic_t}. *)

val k_MinutePlanStatistic_t_of_string :
  string -> k_MinutePlanStatistic_t
  (** Deserialize JSON data of type {!type:k_MinutePlanStatistic_t}. *)

val write_k_FaxTransfer_status_t :
  Buffer.t -> k_FaxTransfer_status_t -> unit
  (** Output a JSON value of type {!type:k_FaxTransfer_status_t}. *)

val string_of_k_FaxTransfer_status_t :
  ?len:int -> k_FaxTransfer_status_t -> string
  (** Serialize a value of type {!type:k_FaxTransfer_status_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_FaxTransfer_status_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_FaxTransfer_status_t
  (** Input JSON data of type {!type:k_FaxTransfer_status_t}. *)

val k_FaxTransfer_status_t_of_string :
  string -> k_FaxTransfer_status_t
  (** Deserialize JSON data of type {!type:k_FaxTransfer_status_t}. *)

val write_k_FaxTransfer_options_t :
  Buffer.t -> k_FaxTransfer_options_t -> unit
  (** Output a JSON value of type {!type:k_FaxTransfer_options_t}. *)

val string_of_k_FaxTransfer_options_t :
  ?len:int -> k_FaxTransfer_options_t -> string
  (** Serialize a value of type {!type:k_FaxTransfer_options_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_FaxTransfer_options_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_FaxTransfer_options_t
  (** Input JSON data of type {!type:k_FaxTransfer_options_t}. *)

val k_FaxTransfer_options_t_of_string :
  string -> k_FaxTransfer_options_t
  (** Deserialize JSON data of type {!type:k_FaxTransfer_options_t}. *)

val write_k_FaxTransfer_blocking_status_t :
  Buffer.t -> k_FaxTransfer_blocking_status_t -> unit
  (** Output a JSON value of type {!type:k_FaxTransfer_blocking_status_t}. *)

val string_of_k_FaxTransfer_blocking_status_t :
  ?len:int -> k_FaxTransfer_blocking_status_t -> string
  (** Serialize a value of type {!type:k_FaxTransfer_blocking_status_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_FaxTransfer_blocking_status_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_FaxTransfer_blocking_status_t
  (** Input JSON data of type {!type:k_FaxTransfer_blocking_status_t}. *)

val k_FaxTransfer_blocking_status_t_of_string :
  string -> k_FaxTransfer_blocking_status_t
  (** Deserialize JSON data of type {!type:k_FaxTransfer_blocking_status_t}. *)

val write_k_FaxTransfer_t :
  Buffer.t -> k_FaxTransfer_t -> unit
  (** Output a JSON value of type {!type:k_FaxTransfer_t}. *)

val string_of_k_FaxTransfer_t :
  ?len:int -> k_FaxTransfer_t -> string
  (** Serialize a value of type {!type:k_FaxTransfer_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_FaxTransfer_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_FaxTransfer_t
  (** Input JSON data of type {!type:k_FaxTransfer_t}. *)

val k_FaxTransfer_t_of_string :
  string -> k_FaxTransfer_t
  (** Deserialize JSON data of type {!type:k_FaxTransfer_t}. *)

val write_k_EmailAccount_status_t :
  Buffer.t -> k_EmailAccount_status_t -> unit
  (** Output a JSON value of type {!type:k_EmailAccount_status_t}. *)

val string_of_k_EmailAccount_status_t :
  ?len:int -> k_EmailAccount_status_t -> string
  (** Serialize a value of type {!type:k_EmailAccount_status_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_EmailAccount_status_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_EmailAccount_status_t
  (** Input JSON data of type {!type:k_EmailAccount_status_t}. *)

val k_EmailAccount_status_t_of_string :
  string -> k_EmailAccount_status_t
  (** Deserialize JSON data of type {!type:k_EmailAccount_status_t}. *)

val write_k_EmailAccount_options_t :
  Buffer.t -> k_EmailAccount_options_t -> unit
  (** Output a JSON value of type {!type:k_EmailAccount_options_t}. *)

val string_of_k_EmailAccount_options_t :
  ?len:int -> k_EmailAccount_options_t -> string
  (** Serialize a value of type {!type:k_EmailAccount_options_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_EmailAccount_options_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_EmailAccount_options_t
  (** Input JSON data of type {!type:k_EmailAccount_options_t}. *)

val k_EmailAccount_options_t_of_string :
  string -> k_EmailAccount_options_t
  (** Deserialize JSON data of type {!type:k_EmailAccount_options_t}. *)

val write_k_EmailAccount_blocking_status_t :
  Buffer.t -> k_EmailAccount_blocking_status_t -> unit
  (** Output a JSON value of type {!type:k_EmailAccount_blocking_status_t}. *)

val string_of_k_EmailAccount_blocking_status_t :
  ?len:int -> k_EmailAccount_blocking_status_t -> string
  (** Serialize a value of type {!type:k_EmailAccount_blocking_status_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_EmailAccount_blocking_status_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_EmailAccount_blocking_status_t
  (** Input JSON data of type {!type:k_EmailAccount_blocking_status_t}. *)

val k_EmailAccount_blocking_status_t_of_string :
  string -> k_EmailAccount_blocking_status_t
  (** Deserialize JSON data of type {!type:k_EmailAccount_blocking_status_t}. *)

val write_k_EmailAccount_t :
  Buffer.t -> k_EmailAccount_t -> unit
  (** Output a JSON value of type {!type:k_EmailAccount_t}. *)

val string_of_k_EmailAccount_t :
  ?len:int -> k_EmailAccount_t -> string
  (** Serialize a value of type {!type:k_EmailAccount_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_EmailAccount_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_EmailAccount_t
  (** Input JSON data of type {!type:k_EmailAccount_t}. *)

val k_EmailAccount_t_of_string :
  string -> k_EmailAccount_t
  (** Deserialize JSON data of type {!type:k_EmailAccount_t}. *)

val write_k_DirectoryContact_t :
  Buffer.t -> k_DirectoryContact_t -> unit
  (** Output a JSON value of type {!type:k_DirectoryContact_t}. *)

val string_of_k_DirectoryContact_t :
  ?len:int -> k_DirectoryContact_t -> string
  (** Serialize a value of type {!type:k_DirectoryContact_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_DirectoryContact_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_DirectoryContact_t
  (** Input JSON data of type {!type:k_DirectoryContact_t}. *)

val k_DirectoryContact_t_of_string :
  string -> k_DirectoryContact_t
  (** Deserialize JSON data of type {!type:k_DirectoryContact_t}. *)

val write_k_DirectoryBranch_t :
  Buffer.t -> k_DirectoryBranch_t -> unit
  (** Output a JSON value of type {!type:k_DirectoryBranch_t}. *)

val string_of_k_DirectoryBranch_t :
  ?len:int -> k_DirectoryBranch_t -> string
  (** Serialize a value of type {!type:k_DirectoryBranch_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_DirectoryBranch_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_DirectoryBranch_t
  (** Input JSON data of type {!type:k_DirectoryBranch_t}. *)

val k_DirectoryBranch_t_of_string :
  string -> k_DirectoryBranch_t
  (** Deserialize JSON data of type {!type:k_DirectoryBranch_t}. *)

val write_k_DataUsageStatistic_t :
  Buffer.t -> k_DataUsageStatistic_t -> unit
  (** Output a JSON value of type {!type:k_DataUsageStatistic_t}. *)

val string_of_k_DataUsageStatistic_t :
  ?len:int -> k_DataUsageStatistic_t -> string
  (** Serialize a value of type {!type:k_DataUsageStatistic_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_DataUsageStatistic_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_DataUsageStatistic_t
  (** Input JSON data of type {!type:k_DataUsageStatistic_t}. *)

val k_DataUsageStatistic_t_of_string :
  string -> k_DataUsageStatistic_t
  (** Deserialize JSON data of type {!type:k_DataUsageStatistic_t}. *)

val write_k_DSLAccess_status_t :
  Buffer.t -> k_DSLAccess_status_t -> unit
  (** Output a JSON value of type {!type:k_DSLAccess_status_t}. *)

val string_of_k_DSLAccess_status_t :
  ?len:int -> k_DSLAccess_status_t -> string
  (** Serialize a value of type {!type:k_DSLAccess_status_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_DSLAccess_status_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_DSLAccess_status_t
  (** Input JSON data of type {!type:k_DSLAccess_status_t}. *)

val k_DSLAccess_status_t_of_string :
  string -> k_DSLAccess_status_t
  (** Deserialize JSON data of type {!type:k_DSLAccess_status_t}. *)

val write_k_DSLAccess_options_t :
  Buffer.t -> k_DSLAccess_options_t -> unit
  (** Output a JSON value of type {!type:k_DSLAccess_options_t}. *)

val string_of_k_DSLAccess_options_t :
  ?len:int -> k_DSLAccess_options_t -> string
  (** Serialize a value of type {!type:k_DSLAccess_options_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_DSLAccess_options_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_DSLAccess_options_t
  (** Input JSON data of type {!type:k_DSLAccess_options_t}. *)

val k_DSLAccess_options_t_of_string :
  string -> k_DSLAccess_options_t
  (** Deserialize JSON data of type {!type:k_DSLAccess_options_t}. *)

val write_k_DSLAccess_blocking_status_t :
  Buffer.t -> k_DSLAccess_blocking_status_t -> unit
  (** Output a JSON value of type {!type:k_DSLAccess_blocking_status_t}. *)

val string_of_k_DSLAccess_blocking_status_t :
  ?len:int -> k_DSLAccess_blocking_status_t -> string
  (** Serialize a value of type {!type:k_DSLAccess_blocking_status_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_DSLAccess_blocking_status_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_DSLAccess_blocking_status_t
  (** Input JSON data of type {!type:k_DSLAccess_blocking_status_t}. *)

val k_DSLAccess_blocking_status_t_of_string :
  string -> k_DSLAccess_blocking_status_t
  (** Deserialize JSON data of type {!type:k_DSLAccess_blocking_status_t}. *)

val write_k_DSLAccess_t :
  Buffer.t -> k_DSLAccess_t -> unit
  (** Output a JSON value of type {!type:k_DSLAccess_t}. *)

val string_of_k_DSLAccess_t :
  ?len:int -> k_DSLAccess_t -> string
  (** Serialize a value of type {!type:k_DSLAccess_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_DSLAccess_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_DSLAccess_t
  (** Input JSON data of type {!type:k_DSLAccess_t}. *)

val k_DSLAccess_t_of_string :
  string -> k_DSLAccess_t
  (** Deserialize JSON data of type {!type:k_DSLAccess_t}. *)

val write_k_CallDetailRecord_t :
  Buffer.t -> k_CallDetailRecord_t -> unit
  (** Output a JSON value of type {!type:k_CallDetailRecord_t}. *)

val string_of_k_CallDetailRecord_t :
  ?len:int -> k_CallDetailRecord_t -> string
  (** Serialize a value of type {!type:k_CallDetailRecord_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_CallDetailRecord_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_CallDetailRecord_t
  (** Input JSON data of type {!type:k_CallDetailRecord_t}. *)

val k_CallDetailRecord_t_of_string :
  string -> k_CallDetailRecord_t
  (** Deserialize JSON data of type {!type:k_CallDetailRecord_t}. *)

val write_k_CallBarringGroup_t :
  Buffer.t -> k_CallBarringGroup_t -> unit
  (** Output a JSON value of type {!type:k_CallBarringGroup_t}. *)

val string_of_k_CallBarringGroup_t :
  ?len:int -> k_CallBarringGroup_t -> string
  (** Serialize a value of type {!type:k_CallBarringGroup_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_CallBarringGroup_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_CallBarringGroup_t
  (** Input JSON data of type {!type:k_CallBarringGroup_t}. *)

val k_CallBarringGroup_t_of_string :
  string -> k_CallBarringGroup_t
  (** Deserialize JSON data of type {!type:k_CallBarringGroup_t}. *)

val write_k_CTIPlugin_t :
  Buffer.t -> k_CTIPlugin_t -> unit
  (** Output a JSON value of type {!type:k_CTIPlugin_t}. *)

val string_of_k_CTIPlugin_t :
  ?len:int -> k_CTIPlugin_t -> string
  (** Serialize a value of type {!type:k_CTIPlugin_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_CTIPlugin_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_CTIPlugin_t
  (** Input JSON data of type {!type:k_CTIPlugin_t}. *)

val k_CTIPlugin_t_of_string :
  string -> k_CTIPlugin_t
  (** Deserialize JSON data of type {!type:k_CTIPlugin_t}. *)

val write_k_CTIPluginParameter_t :
  Buffer.t -> k_CTIPluginParameter_t -> unit
  (** Output a JSON value of type {!type:k_CTIPluginParameter_t}. *)

val string_of_k_CTIPluginParameter_t :
  ?len:int -> k_CTIPluginParameter_t -> string
  (** Serialize a value of type {!type:k_CTIPluginParameter_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_CTIPluginParameter_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_CTIPluginParameter_t
  (** Input JSON data of type {!type:k_CTIPluginParameter_t}. *)

val k_CTIPluginParameter_t_of_string :
  string -> k_CTIPluginParameter_t
  (** Deserialize JSON data of type {!type:k_CTIPluginParameter_t}. *)

val write_k_CSIToken_result_t :
  Buffer.t -> k_CSIToken_result_t -> unit
  (** Output a JSON value of type {!type:k_CSIToken_result_t}. *)

val string_of_k_CSIToken_result_t :
  ?len:int -> k_CSIToken_result_t -> string
  (** Serialize a value of type {!type:k_CSIToken_result_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_CSIToken_result_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_CSIToken_result_t
  (** Input JSON data of type {!type:k_CSIToken_result_t}. *)

val k_CSIToken_result_t_of_string :
  string -> k_CSIToken_result_t
  (** Deserialize JSON data of type {!type:k_CSIToken_result_t}. *)

val write_k_CSIToken_t :
  Buffer.t -> k_CSIToken_t -> unit
  (** Output a JSON value of type {!type:k_CSIToken_t}. *)

val string_of_k_CSIToken_t :
  ?len:int -> k_CSIToken_t -> string
  (** Serialize a value of type {!type:k_CSIToken_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_CSIToken_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_CSIToken_t
  (** Input JSON data of type {!type:k_CSIToken_t}. *)

val k_CSIToken_t_of_string :
  string -> k_CSIToken_t
  (** Deserialize JSON data of type {!type:k_CSIToken_t}. *)

val write_k_AudioFile_t :
  Buffer.t -> k_AudioFile_t -> unit
  (** Output a JSON value of type {!type:k_AudioFile_t}. *)

val string_of_k_AudioFile_t :
  ?len:int -> k_AudioFile_t -> string
  (** Serialize a value of type {!type:k_AudioFile_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_AudioFile_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_AudioFile_t
  (** Input JSON data of type {!type:k_AudioFile_t}. *)

val k_AudioFile_t_of_string :
  string -> k_AudioFile_t
  (** Deserialize JSON data of type {!type:k_AudioFile_t}. *)

val write_k_ACDService_status_t :
  Buffer.t -> k_ACDService_status_t -> unit
  (** Output a JSON value of type {!type:k_ACDService_status_t}. *)

val string_of_k_ACDService_status_t :
  ?len:int -> k_ACDService_status_t -> string
  (** Serialize a value of type {!type:k_ACDService_status_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_ACDService_status_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_ACDService_status_t
  (** Input JSON data of type {!type:k_ACDService_status_t}. *)

val k_ACDService_status_t_of_string :
  string -> k_ACDService_status_t
  (** Deserialize JSON data of type {!type:k_ACDService_status_t}. *)

val write_k_ACDService_options_t :
  Buffer.t -> k_ACDService_options_t -> unit
  (** Output a JSON value of type {!type:k_ACDService_options_t}. *)

val string_of_k_ACDService_options_t :
  ?len:int -> k_ACDService_options_t -> string
  (** Serialize a value of type {!type:k_ACDService_options_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_ACDService_options_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_ACDService_options_t
  (** Input JSON data of type {!type:k_ACDService_options_t}. *)

val k_ACDService_options_t_of_string :
  string -> k_ACDService_options_t
  (** Deserialize JSON data of type {!type:k_ACDService_options_t}. *)

val write_k_ACDService_blocking_status_t :
  Buffer.t -> k_ACDService_blocking_status_t -> unit
  (** Output a JSON value of type {!type:k_ACDService_blocking_status_t}. *)

val string_of_k_ACDService_blocking_status_t :
  ?len:int -> k_ACDService_blocking_status_t -> string
  (** Serialize a value of type {!type:k_ACDService_blocking_status_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_ACDService_blocking_status_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_ACDService_blocking_status_t
  (** Input JSON data of type {!type:k_ACDService_blocking_status_t}. *)

val k_ACDService_blocking_status_t_of_string :
  string -> k_ACDService_blocking_status_t
  (** Deserialize JSON data of type {!type:k_ACDService_blocking_status_t}. *)

val write_k_ACDService_t :
  Buffer.t -> k_ACDService_t -> unit
  (** Output a JSON value of type {!type:k_ACDService_t}. *)

val string_of_k_ACDService_t :
  ?len:int -> k_ACDService_t -> string
  (** Serialize a value of type {!type:k_ACDService_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_ACDService_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_ACDService_t
  (** Input JSON data of type {!type:k_ACDService_t}. *)

val k_ACDService_t_of_string :
  string -> k_ACDService_t
  (** Deserialize JSON data of type {!type:k_ACDService_t}. *)

val write_k_ACDProfile_t :
  Buffer.t -> k_ACDProfile_t -> unit
  (** Output a JSON value of type {!type:k_ACDProfile_t}. *)

val string_of_k_ACDProfile_t :
  ?len:int -> k_ACDProfile_t -> string
  (** Serialize a value of type {!type:k_ACDProfile_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_ACDProfile_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_ACDProfile_t
  (** Input JSON data of type {!type:k_ACDProfile_t}. *)

val k_ACDProfile_t_of_string :
  string -> k_ACDProfile_t
  (** Deserialize JSON data of type {!type:k_ACDProfile_t}. *)

