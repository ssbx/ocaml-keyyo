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

val validate_k_Unit_t :
  Atdgen_runtime.Util.Validation.path -> k_Unit_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_Unit_t}. *)

val validate_k_Scope_t :
  Atdgen_runtime.Util.Validation.path -> k_Scope_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_Scope_t}. *)

val create_k_MinutePlanStatistic_t :
  unit: k_Unit_t ->
  total: int ->
  remaining: int ->
  description: string ->
  last_usage_ts: int ->
  last_update_ts: int ->
  start_ts: int ->
  end_ts: int ->
  unit -> k_MinutePlanStatistic_t
  (** Create a record of type {!type:k_MinutePlanStatistic_t}. *)

val validate_k_MinutePlanStatistic_t :
  Atdgen_runtime.Util.Validation.path -> k_MinutePlanStatistic_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_MinutePlanStatistic_t}. *)

val validate_k_FaxTransfer_status_t :
  Atdgen_runtime.Util.Validation.path -> k_FaxTransfer_status_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_FaxTransfer_status_t}. *)

val validate_k_FaxTransfer_options_t :
  Atdgen_runtime.Util.Validation.path -> k_FaxTransfer_options_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_FaxTransfer_options_t}. *)

val validate_k_FaxTransfer_blocking_status_t :
  Atdgen_runtime.Util.Validation.path -> k_FaxTransfer_blocking_status_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_FaxTransfer_blocking_status_t}. *)

val create_k_FaxTransfer_t :
  csi: int ->
  formatted_csi: string ->
  name: string ->
  offer_id: int ->
  offer_name: string ->
  commitment_start_date: int ->
  status: k_FaxTransfer_status_t ->
  blocking_status: k_FaxTransfer_blocking_status_t option ->
  options: k_FaxTransfer_options_t list ->
  unit -> k_FaxTransfer_t
  (** Create a record of type {!type:k_FaxTransfer_t}. *)

val validate_k_FaxTransfer_t :
  Atdgen_runtime.Util.Validation.path -> k_FaxTransfer_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_FaxTransfer_t}. *)

val validate_k_EmailAccount_status_t :
  Atdgen_runtime.Util.Validation.path -> k_EmailAccount_status_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_EmailAccount_status_t}. *)

val validate_k_EmailAccount_options_t :
  Atdgen_runtime.Util.Validation.path -> k_EmailAccount_options_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_EmailAccount_options_t}. *)

val validate_k_EmailAccount_blocking_status_t :
  Atdgen_runtime.Util.Validation.path -> k_EmailAccount_blocking_status_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_EmailAccount_blocking_status_t}. *)

val create_k_EmailAccount_t :
  csi: int ->
  formatted_csi: string ->
  name: string ->
  offer_id: int ->
  offer_name: string ->
  commitment_start_date: string ->
  status: k_EmailAccount_status_t ->
  blocking_status: k_EmailAccount_blocking_status_t option ->
  options: k_EmailAccount_options_t list ->
  first_name: string ->
  last_name: string ->
  quota: int ->
  unit -> k_EmailAccount_t
  (** Create a record of type {!type:k_EmailAccount_t}. *)

val validate_k_EmailAccount_t :
  Atdgen_runtime.Util.Validation.path -> k_EmailAccount_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_EmailAccount_t}. *)

val create_k_DirectoryContact_t :
  uid: int ->
  branch_uid: int ->
  name: string ->
  first_name: string ->
  default_number: int ->
  work_number: int ->
  work_speed_number: int ->
  mobile_number: string ->
  mobile_speed_number: int ->
  home_number: string ->
  home_speed_number: int ->
  email: string ->
  company: string ->
  job: string ->
  address: string ->
  zipcode: int ->
  city: string ->
  country: string ->
  base64_picture: string ->
  unit -> k_DirectoryContact_t
  (** Create a record of type {!type:k_DirectoryContact_t}. *)

val validate_k_DirectoryContact_t :
  Atdgen_runtime.Util.Validation.path -> k_DirectoryContact_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_DirectoryContact_t}. *)

val create_k_DirectoryBranch_t :
  uid: int ->
  parent_branch_uid: int ->
  name: string ->
  depth: int ->
  unit -> k_DirectoryBranch_t
  (** Create a record of type {!type:k_DirectoryBranch_t}. *)

val validate_k_DirectoryBranch_t :
  Atdgen_runtime.Util.Validation.path -> k_DirectoryBranch_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_DirectoryBranch_t}. *)

val create_k_DataUsageStatistic_t :
  id: int ->
  description: string ->
  unit: k_Unit_t ->
  total: int ->
  used: int ->
  remaining: int ->
  last_usage_ts: int ->
  last_update_ts: int ->
  start_ts: int ->
  end_ts: int ->
  unit -> k_DataUsageStatistic_t
  (** Create a record of type {!type:k_DataUsageStatistic_t}. *)

val validate_k_DataUsageStatistic_t :
  Atdgen_runtime.Util.Validation.path -> k_DataUsageStatistic_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_DataUsageStatistic_t}. *)

val validate_k_DSLAccess_status_t :
  Atdgen_runtime.Util.Validation.path -> k_DSLAccess_status_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_DSLAccess_status_t}. *)

val validate_k_DSLAccess_options_t :
  Atdgen_runtime.Util.Validation.path -> k_DSLAccess_options_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_DSLAccess_options_t}. *)

val validate_k_DSLAccess_blocking_status_t :
  Atdgen_runtime.Util.Validation.path -> k_DSLAccess_blocking_status_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_DSLAccess_blocking_status_t}. *)

val create_k_DSLAccess_t :
  csi: int ->
  formatted_csi: string ->
  name: string ->
  offer_id: int ->
  offer_name: string ->
  commitment_start_date: string ->
  status: k_DSLAccess_status_t ->
  blocking_status: k_DSLAccess_blocking_status_t option ->
  options: k_DSLAccess_options_t list ->
  reference_number: int ->
  maximum_download_speed: int ->
  maximum_upload_speed: int ->
  unit -> k_DSLAccess_t
  (** Create a record of type {!type:k_DSLAccess_t}. *)

val validate_k_DSLAccess_t :
  Atdgen_runtime.Util.Validation.path -> k_DSLAccess_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_DSLAccess_t}. *)

val create_k_CallDetailRecord_t :
  call_id: string ->
  start_time: string ->
  callee: string ->
  callee_raw: string ->
  caller: string ->
  caller_raw: string ->
  caller_presentation: string ->
  caller_presentation_raw: string ->
  quantity: string ->
  quantity_billed: string ->
  destination_name: string ->
  cost: string ->
  repayment: string ->
  unit: k_Unit_t ->
  roaming: string ->
  translation_number: string ->
  translation_number_raw: string ->
  unit -> k_CallDetailRecord_t
  (** Create a record of type {!type:k_CallDetailRecord_t}. *)

val validate_k_CallDetailRecord_t :
  Atdgen_runtime.Util.Validation.path -> k_CallDetailRecord_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_CallDetailRecord_t}. *)

val create_k_CallBarringGroup_t :
  name: string ->
  unit -> k_CallBarringGroup_t
  (** Create a record of type {!type:k_CallBarringGroup_t}. *)

val validate_k_CallBarringGroup_t :
  Atdgen_runtime.Util.Validation.path -> k_CallBarringGroup_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_CallBarringGroup_t}. *)

val create_k_CTIPlugin_t :
  name: string ->
  enabled: bool ->
  unit -> k_CTIPlugin_t
  (** Create a record of type {!type:k_CTIPlugin_t}. *)

val validate_k_CTIPlugin_t :
  Atdgen_runtime.Util.Validation.path -> k_CTIPlugin_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_CTIPlugin_t}. *)

val create_k_CTIPluginParameter_t :
  name: string ->
  information: string ->
  value: string ->
  unit -> k_CTIPluginParameter_t
  (** Create a record of type {!type:k_CTIPluginParameter_t}. *)

val validate_k_CTIPluginParameter_t :
  Atdgen_runtime.Util.Validation.path -> k_CTIPluginParameter_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_CTIPluginParameter_t}. *)

val validate_k_CSIToken_result_t :
  Atdgen_runtime.Util.Validation.path -> k_CSIToken_result_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_CSIToken_result_t}. *)

val create_k_CSIToken_t :
  result: k_CSIToken_result_t ->
  token: string ->
  domain_masks: string list ->
  timestamp: int ->
  unit -> k_CSIToken_t
  (** Create a record of type {!type:k_CSIToken_t}. *)

val validate_k_CSIToken_t :
  Atdgen_runtime.Util.Validation.path -> k_CSIToken_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_CSIToken_t}. *)

val create_k_AudioFile_t :
  id: int ->
  name: string ->
  atype: string ->
  is_personal: bool ->
  base46_contents: string ->
  unit -> k_AudioFile_t
  (** Create a record of type {!type:k_AudioFile_t}. *)

val validate_k_AudioFile_t :
  Atdgen_runtime.Util.Validation.path -> k_AudioFile_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_AudioFile_t}. *)

val validate_k_ACDService_status_t :
  Atdgen_runtime.Util.Validation.path -> k_ACDService_status_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_ACDService_status_t}. *)

val validate_k_ACDService_options_t :
  Atdgen_runtime.Util.Validation.path -> k_ACDService_options_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_ACDService_options_t}. *)

val validate_k_ACDService_blocking_status_t :
  Atdgen_runtime.Util.Validation.path -> k_ACDService_blocking_status_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_ACDService_blocking_status_t}. *)

val create_k_ACDService_t :
  csi: string ->
  formatted_csi: string ->
  name: string ->
  offer_id: int ->
  offer_name: string ->
  commitment_start_date: string ->
  status: k_ACDService_status_t ->
  blocking_status: k_ACDService_blocking_status_t option ->
  options: k_ACDService_options_t list ->
  unit -> k_ACDService_t
  (** Create a record of type {!type:k_ACDService_t}. *)

val validate_k_ACDService_t :
  Atdgen_runtime.Util.Validation.path -> k_ACDService_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_ACDService_t}. *)

val create_k_ACDProfile_t :
  identifier: int ->
  name: string ->
  forced: bool ->
  unit -> k_ACDProfile_t
  (** Create a record of type {!type:k_ACDProfile_t}. *)

val validate_k_ACDProfile_t :
  Atdgen_runtime.Util.Validation.path -> k_ACDProfile_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_ACDProfile_t}. *)

