(* Auto-generated from "definitions.atd" *)
[@@@ocaml.warning "-27-32-33-35-39"]

type k_Voicemail_t = Definitions_t.k_Voicemail_t = {
  name: string;
  email: string;
  recording_enabled: bool;
  instructions_enabled: bool;
  answering_audio_file_id: int;
  recording_audio_file_id_unavailable: int;
  recording_audio_file_id_busy: int
}

type k_VoicemailMessage_t = Definitions_t.k_VoicemailMessage_t = {
  read: bool;
  identifier: int;
  caller_id: int;
  timestamp: int;
  duration: int;
  wav_contents: string
}

type k_VoIPAccountProfile_t = Definitions_t.k_VoIPAccountProfile_t = {
  identifier: string;
  name: string;
  backup_number: string;
  forced: bool;
  forward_delay: int;
  forward_on_no_answer_number: int;
  forward_to_voicemail: bool;
  forward_unconditionally_number: string;
  forward_use_account_callerid_presentation: bool
}

type k_Status_t = Definitions_t.k_Status_t

type k_Options_t = Definitions_t.k_Options_t

type k_Blocking_status_t = Definitions_t.k_Blocking_status_t

type k_VirtualFaxAccount_t = Definitions_t.k_VirtualFaxAccount_t = {
  csi: int;
  formatted_csi: string;
  name: string;
  offer_id: int;
  offer_name: string;
  commitment_start_date: string;
  status: k_Status_t;
  blocking_status: k_Blocking_status_t option;
  options: k_Options_t list;
  email: string;
  password: string
}

type k_Unit_t = Definitions_t.k_Unit_t

type k_UCaaSVoIPAccount_t = Definitions_t.k_UCaaSVoIPAccount_t = {
  csi: int;
  formatted_csi: int;
  name: string;
  offer_id: int;
  offer_name: string;
  commitment_start_date: string;
  status: k_Status_t;
  blocking_status: k_Blocking_status_t option;
  options: k_Options_t list;
  short_number: int;
  incoming_acd_calls_allowed: bool;
  presented_number: string;
  presented_number_raw: string
}

type k_ServiceUpgrade_t = Definitions_t.k_ServiceUpgrade_t = {
  result: string;
  target_offer_id: int;
  planned_date: string
}

type k_Scope_t = Definitions_t.k_Scope_t

type k_SIPRecord_t = Definitions_t.k_SIPRecord_t = {
  private_ip: string;
  public_ip: string;
  user_agent: string;
  cdi: string
}

type k_ProvisioningTask_status_t = Definitions_t.k_ProvisioningTask_status_t

type k_ProvisioningTask_t = Definitions_t.k_ProvisioningTask_t = {
  action: string;
  description: string;
  status: k_ProvisioningTask_status_t;
  creation_date: string;
  planned_date: string;
  execution_date: string
}

type k_Profile_t = Definitions_t.k_Profile_t = {
  identifier: int;
  name: string;
  forced: bool
}

type k_Offer_t = Definitions_t.k_Offer_t = { id: int; name: string }

type k_Number_t = Definitions_t.k_Number_t = { number: string }

type k_NumberTranslation_t = Definitions_t.k_NumberTranslation_t = {
  csi: int;
  formatted_csi: string;
  name: string;
  offer_id: int;
  offer_name: string;
  commitment_start_date: string;
  status: k_Status_t;
  blocking_status: k_Blocking_status_t option;
  options: k_Options_t list
}

type k_MobileAccount_t = Definitions_t.k_MobileAccount_t = {
  csi: int;
  formatted_csi: string;
  name: string;
  offer_id: int;
  offer_name: string;
  commitment_start_date: string;
  status: k_Status_t;
  blocking_status: k_Blocking_status_t option;
  options: k_Options_t list;
  incoming_acd_calls_allowed: bool;
  presented_number: string;
  presented_number_raw: string
}

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

type k_FaxTransfer_t = Definitions_t.k_FaxTransfer_t = {
  csi: int;
  formatted_csi: string;
  name: string;
  offer_id: int;
  offer_name: string;
  commitment_start_date: int;
  status: k_Status_t;
  blocking_status: k_Blocking_status_t option;
  options: k_Options_t list
}

type k_EmailAccount_t = Definitions_t.k_EmailAccount_t = {
  csi: int;
  formatted_csi: string;
  name: string;
  offer_id: int;
  offer_name: string;
  commitment_start_date: string;
  status: k_Status_t;
  blocking_status: k_Blocking_status_t option;
  options: k_Options_t list;
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

type k_DSLAccess_t = Definitions_t.k_DSLAccess_t = {
  csi: int;
  formatted_csi: string;
  name: string;
  offer_id: int;
  offer_name: string;
  commitment_start_date: string;
  status: k_Status_t;
  blocking_status: k_Blocking_status_t option;
  options: k_Options_t list;
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

type k_ACDService_t = Definitions_t.k_ACDService_t = {
  csi: string;
  formatted_csi: string;
  name: string;
  offer_id: int;
  offer_name: string;
  commitment_start_date: string;
  status: k_Status_t;
  blocking_status: k_Blocking_status_t option;
  options: k_Options_t list
}

type k_ACDProfile_t = Definitions_t.k_ACDProfile_t = {
  identifier: int;
  name: string;
  forced: bool
}

val write_k_Voicemail_t :
  Buffer.t -> k_Voicemail_t -> unit
  (** Output a JSON value of type {!type:k_Voicemail_t}. *)

val string_of_k_Voicemail_t :
  ?len:int -> k_Voicemail_t -> string
  (** Serialize a value of type {!type:k_Voicemail_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_Voicemail_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_Voicemail_t
  (** Input JSON data of type {!type:k_Voicemail_t}. *)

val k_Voicemail_t_of_string :
  string -> k_Voicemail_t
  (** Deserialize JSON data of type {!type:k_Voicemail_t}. *)

val write_k_VoicemailMessage_t :
  Buffer.t -> k_VoicemailMessage_t -> unit
  (** Output a JSON value of type {!type:k_VoicemailMessage_t}. *)

val string_of_k_VoicemailMessage_t :
  ?len:int -> k_VoicemailMessage_t -> string
  (** Serialize a value of type {!type:k_VoicemailMessage_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_VoicemailMessage_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_VoicemailMessage_t
  (** Input JSON data of type {!type:k_VoicemailMessage_t}. *)

val k_VoicemailMessage_t_of_string :
  string -> k_VoicemailMessage_t
  (** Deserialize JSON data of type {!type:k_VoicemailMessage_t}. *)

val write_k_VoIPAccountProfile_t :
  Buffer.t -> k_VoIPAccountProfile_t -> unit
  (** Output a JSON value of type {!type:k_VoIPAccountProfile_t}. *)

val string_of_k_VoIPAccountProfile_t :
  ?len:int -> k_VoIPAccountProfile_t -> string
  (** Serialize a value of type {!type:k_VoIPAccountProfile_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_VoIPAccountProfile_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_VoIPAccountProfile_t
  (** Input JSON data of type {!type:k_VoIPAccountProfile_t}. *)

val k_VoIPAccountProfile_t_of_string :
  string -> k_VoIPAccountProfile_t
  (** Deserialize JSON data of type {!type:k_VoIPAccountProfile_t}. *)

val write_k_Status_t :
  Buffer.t -> k_Status_t -> unit
  (** Output a JSON value of type {!type:k_Status_t}. *)

val string_of_k_Status_t :
  ?len:int -> k_Status_t -> string
  (** Serialize a value of type {!type:k_Status_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_Status_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_Status_t
  (** Input JSON data of type {!type:k_Status_t}. *)

val k_Status_t_of_string :
  string -> k_Status_t
  (** Deserialize JSON data of type {!type:k_Status_t}. *)

val write_k_Options_t :
  Buffer.t -> k_Options_t -> unit
  (** Output a JSON value of type {!type:k_Options_t}. *)

val string_of_k_Options_t :
  ?len:int -> k_Options_t -> string
  (** Serialize a value of type {!type:k_Options_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_Options_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_Options_t
  (** Input JSON data of type {!type:k_Options_t}. *)

val k_Options_t_of_string :
  string -> k_Options_t
  (** Deserialize JSON data of type {!type:k_Options_t}. *)

val write_k_Blocking_status_t :
  Buffer.t -> k_Blocking_status_t -> unit
  (** Output a JSON value of type {!type:k_Blocking_status_t}. *)

val string_of_k_Blocking_status_t :
  ?len:int -> k_Blocking_status_t -> string
  (** Serialize a value of type {!type:k_Blocking_status_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_Blocking_status_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_Blocking_status_t
  (** Input JSON data of type {!type:k_Blocking_status_t}. *)

val k_Blocking_status_t_of_string :
  string -> k_Blocking_status_t
  (** Deserialize JSON data of type {!type:k_Blocking_status_t}. *)

val write_k_VirtualFaxAccount_t :
  Buffer.t -> k_VirtualFaxAccount_t -> unit
  (** Output a JSON value of type {!type:k_VirtualFaxAccount_t}. *)

val string_of_k_VirtualFaxAccount_t :
  ?len:int -> k_VirtualFaxAccount_t -> string
  (** Serialize a value of type {!type:k_VirtualFaxAccount_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_VirtualFaxAccount_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_VirtualFaxAccount_t
  (** Input JSON data of type {!type:k_VirtualFaxAccount_t}. *)

val k_VirtualFaxAccount_t_of_string :
  string -> k_VirtualFaxAccount_t
  (** Deserialize JSON data of type {!type:k_VirtualFaxAccount_t}. *)

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

val write_k_UCaaSVoIPAccount_t :
  Buffer.t -> k_UCaaSVoIPAccount_t -> unit
  (** Output a JSON value of type {!type:k_UCaaSVoIPAccount_t}. *)

val string_of_k_UCaaSVoIPAccount_t :
  ?len:int -> k_UCaaSVoIPAccount_t -> string
  (** Serialize a value of type {!type:k_UCaaSVoIPAccount_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_UCaaSVoIPAccount_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_UCaaSVoIPAccount_t
  (** Input JSON data of type {!type:k_UCaaSVoIPAccount_t}. *)

val k_UCaaSVoIPAccount_t_of_string :
  string -> k_UCaaSVoIPAccount_t
  (** Deserialize JSON data of type {!type:k_UCaaSVoIPAccount_t}. *)

val write_k_ServiceUpgrade_t :
  Buffer.t -> k_ServiceUpgrade_t -> unit
  (** Output a JSON value of type {!type:k_ServiceUpgrade_t}. *)

val string_of_k_ServiceUpgrade_t :
  ?len:int -> k_ServiceUpgrade_t -> string
  (** Serialize a value of type {!type:k_ServiceUpgrade_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_ServiceUpgrade_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_ServiceUpgrade_t
  (** Input JSON data of type {!type:k_ServiceUpgrade_t}. *)

val k_ServiceUpgrade_t_of_string :
  string -> k_ServiceUpgrade_t
  (** Deserialize JSON data of type {!type:k_ServiceUpgrade_t}. *)

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

val write_k_SIPRecord_t :
  Buffer.t -> k_SIPRecord_t -> unit
  (** Output a JSON value of type {!type:k_SIPRecord_t}. *)

val string_of_k_SIPRecord_t :
  ?len:int -> k_SIPRecord_t -> string
  (** Serialize a value of type {!type:k_SIPRecord_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_SIPRecord_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_SIPRecord_t
  (** Input JSON data of type {!type:k_SIPRecord_t}. *)

val k_SIPRecord_t_of_string :
  string -> k_SIPRecord_t
  (** Deserialize JSON data of type {!type:k_SIPRecord_t}. *)

val write_k_ProvisioningTask_status_t :
  Buffer.t -> k_ProvisioningTask_status_t -> unit
  (** Output a JSON value of type {!type:k_ProvisioningTask_status_t}. *)

val string_of_k_ProvisioningTask_status_t :
  ?len:int -> k_ProvisioningTask_status_t -> string
  (** Serialize a value of type {!type:k_ProvisioningTask_status_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_ProvisioningTask_status_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_ProvisioningTask_status_t
  (** Input JSON data of type {!type:k_ProvisioningTask_status_t}. *)

val k_ProvisioningTask_status_t_of_string :
  string -> k_ProvisioningTask_status_t
  (** Deserialize JSON data of type {!type:k_ProvisioningTask_status_t}. *)

val write_k_ProvisioningTask_t :
  Buffer.t -> k_ProvisioningTask_t -> unit
  (** Output a JSON value of type {!type:k_ProvisioningTask_t}. *)

val string_of_k_ProvisioningTask_t :
  ?len:int -> k_ProvisioningTask_t -> string
  (** Serialize a value of type {!type:k_ProvisioningTask_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_ProvisioningTask_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_ProvisioningTask_t
  (** Input JSON data of type {!type:k_ProvisioningTask_t}. *)

val k_ProvisioningTask_t_of_string :
  string -> k_ProvisioningTask_t
  (** Deserialize JSON data of type {!type:k_ProvisioningTask_t}. *)

val write_k_Profile_t :
  Buffer.t -> k_Profile_t -> unit
  (** Output a JSON value of type {!type:k_Profile_t}. *)

val string_of_k_Profile_t :
  ?len:int -> k_Profile_t -> string
  (** Serialize a value of type {!type:k_Profile_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_Profile_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_Profile_t
  (** Input JSON data of type {!type:k_Profile_t}. *)

val k_Profile_t_of_string :
  string -> k_Profile_t
  (** Deserialize JSON data of type {!type:k_Profile_t}. *)

val write_k_Offer_t :
  Buffer.t -> k_Offer_t -> unit
  (** Output a JSON value of type {!type:k_Offer_t}. *)

val string_of_k_Offer_t :
  ?len:int -> k_Offer_t -> string
  (** Serialize a value of type {!type:k_Offer_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_Offer_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_Offer_t
  (** Input JSON data of type {!type:k_Offer_t}. *)

val k_Offer_t_of_string :
  string -> k_Offer_t
  (** Deserialize JSON data of type {!type:k_Offer_t}. *)

val write_k_Number_t :
  Buffer.t -> k_Number_t -> unit
  (** Output a JSON value of type {!type:k_Number_t}. *)

val string_of_k_Number_t :
  ?len:int -> k_Number_t -> string
  (** Serialize a value of type {!type:k_Number_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_Number_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_Number_t
  (** Input JSON data of type {!type:k_Number_t}. *)

val k_Number_t_of_string :
  string -> k_Number_t
  (** Deserialize JSON data of type {!type:k_Number_t}. *)

val write_k_NumberTranslation_t :
  Buffer.t -> k_NumberTranslation_t -> unit
  (** Output a JSON value of type {!type:k_NumberTranslation_t}. *)

val string_of_k_NumberTranslation_t :
  ?len:int -> k_NumberTranslation_t -> string
  (** Serialize a value of type {!type:k_NumberTranslation_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_NumberTranslation_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_NumberTranslation_t
  (** Input JSON data of type {!type:k_NumberTranslation_t}. *)

val k_NumberTranslation_t_of_string :
  string -> k_NumberTranslation_t
  (** Deserialize JSON data of type {!type:k_NumberTranslation_t}. *)

val write_k_MobileAccount_t :
  Buffer.t -> k_MobileAccount_t -> unit
  (** Output a JSON value of type {!type:k_MobileAccount_t}. *)

val string_of_k_MobileAccount_t :
  ?len:int -> k_MobileAccount_t -> string
  (** Serialize a value of type {!type:k_MobileAccount_t}
      into a JSON string.
      @param len specifies the initial length
                 of the buffer used internally.
                 Default: 1024. *)

val read_k_MobileAccount_t :
  Yojson.Safe.lexer_state -> Lexing.lexbuf -> k_MobileAccount_t
  (** Input JSON data of type {!type:k_MobileAccount_t}. *)

val k_MobileAccount_t_of_string :
  string -> k_MobileAccount_t
  (** Deserialize JSON data of type {!type:k_MobileAccount_t}. *)

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

