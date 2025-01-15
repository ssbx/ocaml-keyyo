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

val create_k_Voicemail_t :
  name: string ->
  email: string ->
  recording_enabled: bool ->
  instructions_enabled: bool ->
  answering_audio_file_id: int ->
  recording_audio_file_id_unavailable: int ->
  recording_audio_file_id_busy: int ->
  unit -> k_Voicemail_t
  (** Create a record of type {!type:k_Voicemail_t}. *)

val validate_k_Voicemail_t :
  Atdgen_runtime.Util.Validation.path -> k_Voicemail_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_Voicemail_t}. *)

val create_k_VoicemailMessage_t :
  read: bool ->
  identifier: int ->
  caller_id: int ->
  timestamp: int ->
  duration: int ->
  wav_contents: string ->
  unit -> k_VoicemailMessage_t
  (** Create a record of type {!type:k_VoicemailMessage_t}. *)

val validate_k_VoicemailMessage_t :
  Atdgen_runtime.Util.Validation.path -> k_VoicemailMessage_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_VoicemailMessage_t}. *)

val create_k_VoIPAccountProfile_t :
  identifier: string ->
  name: string ->
  backup_number: string ->
  forced: bool ->
  forward_delay: int ->
  forward_on_no_answer_number: int ->
  forward_to_voicemail: bool ->
  forward_unconditionally_number: string ->
  forward_use_account_callerid_presentation: bool ->
  unit -> k_VoIPAccountProfile_t
  (** Create a record of type {!type:k_VoIPAccountProfile_t}. *)

val validate_k_VoIPAccountProfile_t :
  Atdgen_runtime.Util.Validation.path -> k_VoIPAccountProfile_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_VoIPAccountProfile_t}. *)

val validate_k_Status_t :
  Atdgen_runtime.Util.Validation.path -> k_Status_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_Status_t}. *)

val validate_k_Options_t :
  Atdgen_runtime.Util.Validation.path -> k_Options_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_Options_t}. *)

val validate_k_Blocking_status_t :
  Atdgen_runtime.Util.Validation.path -> k_Blocking_status_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_Blocking_status_t}. *)

val create_k_VirtualFaxAccount_t :
  csi: int ->
  formatted_csi: string ->
  name: string ->
  offer_id: int ->
  offer_name: string ->
  commitment_start_date: string ->
  status: k_Status_t ->
  blocking_status: k_Blocking_status_t option ->
  options: k_Options_t list ->
  email: string ->
  password: string ->
  unit -> k_VirtualFaxAccount_t
  (** Create a record of type {!type:k_VirtualFaxAccount_t}. *)

val validate_k_VirtualFaxAccount_t :
  Atdgen_runtime.Util.Validation.path -> k_VirtualFaxAccount_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_VirtualFaxAccount_t}. *)

val validate_k_Unit_t :
  Atdgen_runtime.Util.Validation.path -> k_Unit_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_Unit_t}. *)

val create_k_UCaaSVoIPAccount_t :
  csi: int ->
  formatted_csi: int ->
  name: string ->
  offer_id: int ->
  offer_name: string ->
  commitment_start_date: string ->
  status: k_Status_t ->
  blocking_status: k_Blocking_status_t option ->
  options: k_Options_t list ->
  short_number: int ->
  incoming_acd_calls_allowed: bool ->
  presented_number: string ->
  presented_number_raw: string ->
  unit -> k_UCaaSVoIPAccount_t
  (** Create a record of type {!type:k_UCaaSVoIPAccount_t}. *)

val validate_k_UCaaSVoIPAccount_t :
  Atdgen_runtime.Util.Validation.path -> k_UCaaSVoIPAccount_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_UCaaSVoIPAccount_t}. *)

val create_k_ServiceUpgrade_t :
  result: string ->
  target_offer_id: int ->
  planned_date: string ->
  unit -> k_ServiceUpgrade_t
  (** Create a record of type {!type:k_ServiceUpgrade_t}. *)

val validate_k_ServiceUpgrade_t :
  Atdgen_runtime.Util.Validation.path -> k_ServiceUpgrade_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_ServiceUpgrade_t}. *)

val validate_k_Scope_t :
  Atdgen_runtime.Util.Validation.path -> k_Scope_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_Scope_t}. *)

val create_k_SIPRecord_t :
  private_ip: string ->
  public_ip: string ->
  user_agent: string ->
  cdi: string ->
  unit -> k_SIPRecord_t
  (** Create a record of type {!type:k_SIPRecord_t}. *)

val validate_k_SIPRecord_t :
  Atdgen_runtime.Util.Validation.path -> k_SIPRecord_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_SIPRecord_t}. *)

val validate_k_ProvisioningTask_status_t :
  Atdgen_runtime.Util.Validation.path -> k_ProvisioningTask_status_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_ProvisioningTask_status_t}. *)

val create_k_ProvisioningTask_t :
  action: string ->
  description: string ->
  status: k_ProvisioningTask_status_t ->
  creation_date: string ->
  planned_date: string ->
  execution_date: string ->
  unit -> k_ProvisioningTask_t
  (** Create a record of type {!type:k_ProvisioningTask_t}. *)

val validate_k_ProvisioningTask_t :
  Atdgen_runtime.Util.Validation.path -> k_ProvisioningTask_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_ProvisioningTask_t}. *)

val create_k_Profile_t :
  identifier: int ->
  name: string ->
  forced: bool ->
  unit -> k_Profile_t
  (** Create a record of type {!type:k_Profile_t}. *)

val validate_k_Profile_t :
  Atdgen_runtime.Util.Validation.path -> k_Profile_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_Profile_t}. *)

val create_k_Offer_t :
  id: int ->
  name: string ->
  unit -> k_Offer_t
  (** Create a record of type {!type:k_Offer_t}. *)

val validate_k_Offer_t :
  Atdgen_runtime.Util.Validation.path -> k_Offer_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_Offer_t}. *)

val create_k_Number_t :
  number: string ->
  unit -> k_Number_t
  (** Create a record of type {!type:k_Number_t}. *)

val validate_k_Number_t :
  Atdgen_runtime.Util.Validation.path -> k_Number_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_Number_t}. *)

val create_k_NumberTranslation_t :
  csi: int ->
  formatted_csi: string ->
  name: string ->
  offer_id: int ->
  offer_name: string ->
  commitment_start_date: string ->
  status: k_Status_t ->
  blocking_status: k_Blocking_status_t option ->
  options: k_Options_t list ->
  unit -> k_NumberTranslation_t
  (** Create a record of type {!type:k_NumberTranslation_t}. *)

val validate_k_NumberTranslation_t :
  Atdgen_runtime.Util.Validation.path -> k_NumberTranslation_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_NumberTranslation_t}. *)

val create_k_MobileAccount_t :
  csi: int ->
  formatted_csi: string ->
  name: string ->
  offer_id: int ->
  offer_name: string ->
  commitment_start_date: string ->
  status: k_Status_t ->
  blocking_status: k_Blocking_status_t option ->
  options: k_Options_t list ->
  incoming_acd_calls_allowed: bool ->
  presented_number: string ->
  presented_number_raw: string ->
  unit -> k_MobileAccount_t
  (** Create a record of type {!type:k_MobileAccount_t}. *)

val validate_k_MobileAccount_t :
  Atdgen_runtime.Util.Validation.path -> k_MobileAccount_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_MobileAccount_t}. *)

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

val create_k_FaxTransfer_t :
  csi: int ->
  formatted_csi: string ->
  name: string ->
  offer_id: int ->
  offer_name: string ->
  commitment_start_date: int ->
  status: k_Status_t ->
  blocking_status: k_Blocking_status_t option ->
  options: k_Options_t list ->
  unit -> k_FaxTransfer_t
  (** Create a record of type {!type:k_FaxTransfer_t}. *)

val validate_k_FaxTransfer_t :
  Atdgen_runtime.Util.Validation.path -> k_FaxTransfer_t -> Atdgen_runtime.Util.Validation.error option
  (** Validate a value of type {!type:k_FaxTransfer_t}. *)

val create_k_EmailAccount_t :
  csi: int ->
  formatted_csi: string ->
  name: string ->
  offer_id: int ->
  offer_name: string ->
  commitment_start_date: string ->
  status: k_Status_t ->
  blocking_status: k_Blocking_status_t option ->
  options: k_Options_t list ->
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

val create_k_DSLAccess_t :
  csi: int ->
  formatted_csi: string ->
  name: string ->
  offer_id: int ->
  offer_name: string ->
  commitment_start_date: string ->
  status: k_Status_t ->
  blocking_status: k_Blocking_status_t option ->
  options: k_Options_t list ->
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

val create_k_ACDService_t :
  csi: string ->
  formatted_csi: string ->
  name: string ->
  offer_id: int ->
  offer_name: string ->
  commitment_start_date: string ->
  status: k_Status_t ->
  blocking_status: k_Blocking_status_t option ->
  options: k_Options_t list ->
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

