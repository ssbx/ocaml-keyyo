(* Auto-generated from "definitions.atd" *)
[@@@ocaml.warning "-27-32-33-35-39"]

type k_Unit_t = [ `Second | `Sms | `Ko | `Mo | `Textmms | `Mms ]

type k_Scope_t = [
    `Full_access | `Full_access_read_only | `Voip_profiles_admin | `Cti_admin
]

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

type k_FaxTransfer_status_t = [
    `In_service | `Setup_pending | `Suspended | `Cancelled
  | `Cancellation_pending
]

type k_FaxTransfer_options_t = [ `Sms | `Crypt | `Supervision | `Iphone ]

type k_FaxTransfer_blocking_status_t = [ `Pending | `Blocked ]

type k_FaxTransfer_t = {
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

type k_EmailAccount_status_t = [
    `In_service | `Setup_pending | `Suspended | `Cancelled
  | `Cancellation_pending
]

type k_EmailAccount_options_t = [ `Sms | `Crypt | `Supervision | `Iphone ]

type k_EmailAccount_blocking_status_t = [ `Pending | `Blocked ]

type k_EmailAccount_t = {
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

type k_DSLAccess_status_t = [
    `In_service | `Setup_pending | `Suspended | `Cancelled
  | `Cancellation_pending
]

type k_DSLAccess_options_t = [ `Sms | `Crypt | `Supervision | `Iphone ]

type k_DSLAccess_blocking_status_t = [ `Pending | `Blocked ]

type k_DSLAccess_t = {
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

type k_ACDService_status_t = [
    `In_service | `Setup_pending | `Suspended | `Cancelled
  | `Cancellation_pending
]

type k_ACDService_options_t = [ `Sms | `Crypt | `Supervision | `Iphone ]

type k_ACDService_blocking_status_t = [ `Pending | `Blocked ]

type k_ACDService_t = {
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

type k_ACDProfile_t = { identifier: int; name: string; forced: bool }
