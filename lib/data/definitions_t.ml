(* Auto-generated from "definitions.atd" *)
[@@@ocaml.warning "-27-32-33-35-39"]

type k_Voicemail_t = {
  name: string;
  email: string;
  recording_enabled: bool;
  instructions_enabled: bool;
  answering_audio_file_id: int;
  recording_audio_file_id_unavailable: int;
  recording_audio_file_id_busy: int
}

type k_VoicemailMessage_t = {
  read: bool;
  identifier: int;
  caller_id: int;
  timestamp: int;
  duration: int;
  wav_contents: string
}

type k_VoIPAccountProfile_t = {
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

type k_Status_t = [
    `In_service | `Setup_pending | `Suspended | `Cancelled
  | `Cancellation_pending
]

type k_Options_t = [ `Sms | `Crypt | `Supervision | `Iphone ]

type k_Blocking_status_t = [ `Pending | `Blocked ]

type k_VirtualFaxAccount_t = {
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

type k_Unit_t = [ `Second | `Sms | `Ko | `Mo | `Textmms | `Mms ]

type k_UCaaSVoIPAccount_t = {
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

type k_ServiceUpgrade_t = {
  result: string;
  target_offer_id: int;
  planned_date: string
}

type k_Scope_t = [
    `Full_access | `Full_access_read_only | `Voip_profiles_admin | `Cti_admin
]

type k_SIPRecord_t = {
  private_ip: string;
  public_ip: string;
  user_agent: string;
  cdi: string
}

type k_ProvisioningTask_status_t = [
    `Status_TODO | `Status_WAIT | `Status_DONE | `Status_ERROR
  | `Status_CANCEL | `Status_FAILED | `Status_UNKNOWN
]

type k_ProvisioningTask_t = {
  action: string;
  description: string;
  status: k_ProvisioningTask_status_t;
  creation_date: string;
  planned_date: string;
  execution_date: string
}

type k_Profile_t = { identifier: int; name: string; forced: bool }

type k_Offer_t = { id: int; name: string }

type k_Number_t = { number: string }

type k_NumberTranslation_t = {
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

type k_MobileAccount_t = {
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

type k_MinutePlanStatistic_t = {
  unit: k_Unit_t;
  total: int;
  remaining: int;
  description: string;
  last_usage_ts: int;
  last_update_ts: int;
  start_ts: int;
  end_ts: int
}

type k_FaxTransfer_t = {
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

type k_EmailAccount_t = {
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

type k_DirectoryContact_t = {
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

type k_DirectoryBranch_t = {
  uid: int;
  parent_branch_uid: int;
  name: string;
  depth: int
}

type k_DataUsageStatistic_t = {
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

type k_DSLAccess_t = {
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

type k_CallDetailRecord_t = {
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

type k_CallBarringGroup_t = { name: string }

type k_CTIPlugin_t = { name: string; enabled: bool }

type k_CTIPluginParameter_t = {
  name: string;
  information: string;
  value: string
}

type k_CSIToken_result_t = [ `Success | `CantGenereate of string ]

type k_CSIToken_t = {
  result: k_CSIToken_result_t;
  token: string;
  domain_masks: string list;
  timestamp: int
}

type k_AudioFile_t = {
  id: int;
  name: string;
  atype: string;
  is_personal: bool;
  base46_contents: string
}

type k_ACDService_t = {
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

type k_ACDProfile_t = { identifier: int; name: string; forced: bool }
