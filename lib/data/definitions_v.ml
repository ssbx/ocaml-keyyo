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

let validate_k_Voicemail_t : _ -> k_Voicemail_t -> _ = (
  fun _ _ -> None
)
let validate_k_VoicemailMessage_t : _ -> k_VoicemailMessage_t -> _ = (
  fun _ _ -> None
)
let validate_k_VoIPAccountProfile_t : _ -> k_VoIPAccountProfile_t -> _ = (
  fun _ _ -> None
)
let validate_k_Status_t = (
  fun _ _ -> None
)
let validate_k_Options_t = (
  fun _ _ -> None
)
let validate_k_Blocking_status_t = (
  fun _ _ -> None
)
let validate__k_Options_t_list = (
  fun _ _ -> None
)
let validate__k_Blocking_status_t_nullable = (
  fun _ _ -> None
)
let validate_k_VirtualFaxAccount_t : _ -> k_VirtualFaxAccount_t -> _ = (
  fun _ _ -> None
)
let validate_k_Unit_t = (
  fun _ _ -> None
)
let validate_k_UCaaSVoIPAccount_t : _ -> k_UCaaSVoIPAccount_t -> _ = (
  fun _ _ -> None
)
let validate_k_ServiceUpgrade_t : _ -> k_ServiceUpgrade_t -> _ = (
  fun _ _ -> None
)
let validate_k_Scope_t = (
  fun _ _ -> None
)
let validate_k_SIPRecord_t : _ -> k_SIPRecord_t -> _ = (
  fun _ _ -> None
)
let validate_k_ProvisioningTask_status_t = (
  fun _ _ -> None
)
let validate_k_ProvisioningTask_t : _ -> k_ProvisioningTask_t -> _ = (
  fun _ _ -> None
)
let validate_k_Profile_t : _ -> k_Profile_t -> _ = (
  fun _ _ -> None
)
let validate_k_Offer_t : _ -> k_Offer_t -> _ = (
  fun _ _ -> None
)
let validate_k_Number_t : _ -> k_Number_t -> _ = (
  fun _ _ -> None
)
let validate_k_NumberTranslation_t : _ -> k_NumberTranslation_t -> _ = (
  fun _ _ -> None
)
let validate_k_MobileAccount_t : _ -> k_MobileAccount_t -> _ = (
  fun _ _ -> None
)
let validate_k_MinutePlanStatistic_t : _ -> k_MinutePlanStatistic_t -> _ = (
  fun _ _ -> None
)
let validate_k_FaxTransfer_t : _ -> k_FaxTransfer_t -> _ = (
  fun _ _ -> None
)
let validate_k_EmailAccount_t : _ -> k_EmailAccount_t -> _ = (
  fun _ _ -> None
)
let validate_k_DirectoryContact_t : _ -> k_DirectoryContact_t -> _ = (
  fun _ _ -> None
)
let validate_k_DirectoryBranch_t : _ -> k_DirectoryBranch_t -> _ = (
  fun _ _ -> None
)
let validate_k_DataUsageStatistic_t : _ -> k_DataUsageStatistic_t -> _ = (
  fun _ _ -> None
)
let validate_k_DSLAccess_t : _ -> k_DSLAccess_t -> _ = (
  fun _ _ -> None
)
let validate_k_CallDetailRecord_t : _ -> k_CallDetailRecord_t -> _ = (
  fun _ _ -> None
)
let validate_k_CallBarringGroup_t : _ -> k_CallBarringGroup_t -> _ = (
  fun _ _ -> None
)
let validate_k_CTIPlugin_t : _ -> k_CTIPlugin_t -> _ = (
  fun _ _ -> None
)
let validate_k_CTIPluginParameter_t : _ -> k_CTIPluginParameter_t -> _ = (
  fun _ _ -> None
)
let validate_k_CSIToken_result_t = (
  fun _ _ -> None
)
let validate__string_list = (
  fun _ _ -> None
)
let validate_k_CSIToken_t : _ -> k_CSIToken_t -> _ = (
  fun _ _ -> None
)
let validate_k_AudioFile_t : _ -> k_AudioFile_t -> _ = (
  fun _ _ -> None
)
let validate_k_ACDService_t : _ -> k_ACDService_t -> _ = (
  fun _ _ -> None
)
let validate_k_ACDProfile_t : _ -> k_ACDProfile_t -> _ = (
  fun _ _ -> None
)
let create_k_Voicemail_t 
  ~name
  ~email
  ~recording_enabled
  ~instructions_enabled
  ~answering_audio_file_id
  ~recording_audio_file_id_unavailable
  ~recording_audio_file_id_busy
  () : k_Voicemail_t =
  {
    name = name;
    email = email;
    recording_enabled = recording_enabled;
    instructions_enabled = instructions_enabled;
    answering_audio_file_id = answering_audio_file_id;
    recording_audio_file_id_unavailable = recording_audio_file_id_unavailable;
    recording_audio_file_id_busy = recording_audio_file_id_busy;
  }
let create_k_VoicemailMessage_t 
  ~read
  ~identifier
  ~caller_id
  ~timestamp
  ~duration
  ~wav_contents
  () : k_VoicemailMessage_t =
  {
    read = read;
    identifier = identifier;
    caller_id = caller_id;
    timestamp = timestamp;
    duration = duration;
    wav_contents = wav_contents;
  }
let create_k_VoIPAccountProfile_t 
  ~identifier
  ~name
  ~backup_number
  ~forced
  ~forward_delay
  ~forward_on_no_answer_number
  ~forward_to_voicemail
  ~forward_unconditionally_number
  ~forward_use_account_callerid_presentation
  () : k_VoIPAccountProfile_t =
  {
    identifier = identifier;
    name = name;
    backup_number = backup_number;
    forced = forced;
    forward_delay = forward_delay;
    forward_on_no_answer_number = forward_on_no_answer_number;
    forward_to_voicemail = forward_to_voicemail;
    forward_unconditionally_number = forward_unconditionally_number;
    forward_use_account_callerid_presentation = forward_use_account_callerid_presentation;
  }
let create_k_VirtualFaxAccount_t 
  ~csi
  ~formatted_csi
  ~name
  ~offer_id
  ~offer_name
  ~commitment_start_date
  ~status
  ~blocking_status
  ~options
  ~email
  ~password
  () : k_VirtualFaxAccount_t =
  {
    csi = csi;
    formatted_csi = formatted_csi;
    name = name;
    offer_id = offer_id;
    offer_name = offer_name;
    commitment_start_date = commitment_start_date;
    status = status;
    blocking_status = blocking_status;
    options = options;
    email = email;
    password = password;
  }
let create_k_UCaaSVoIPAccount_t 
  ~csi
  ~formatted_csi
  ~name
  ~offer_id
  ~offer_name
  ~commitment_start_date
  ~status
  ~blocking_status
  ~options
  ~short_number
  ~incoming_acd_calls_allowed
  ~presented_number
  ~presented_number_raw
  () : k_UCaaSVoIPAccount_t =
  {
    csi = csi;
    formatted_csi = formatted_csi;
    name = name;
    offer_id = offer_id;
    offer_name = offer_name;
    commitment_start_date = commitment_start_date;
    status = status;
    blocking_status = blocking_status;
    options = options;
    short_number = short_number;
    incoming_acd_calls_allowed = incoming_acd_calls_allowed;
    presented_number = presented_number;
    presented_number_raw = presented_number_raw;
  }
let create_k_ServiceUpgrade_t 
  ~result
  ~target_offer_id
  ~planned_date
  () : k_ServiceUpgrade_t =
  {
    result = result;
    target_offer_id = target_offer_id;
    planned_date = planned_date;
  }
let create_k_SIPRecord_t 
  ~private_ip
  ~public_ip
  ~user_agent
  ~cdi
  () : k_SIPRecord_t =
  {
    private_ip = private_ip;
    public_ip = public_ip;
    user_agent = user_agent;
    cdi = cdi;
  }
let create_k_ProvisioningTask_t 
  ~action
  ~description
  ~status
  ~creation_date
  ~planned_date
  ~execution_date
  () : k_ProvisioningTask_t =
  {
    action = action;
    description = description;
    status = status;
    creation_date = creation_date;
    planned_date = planned_date;
    execution_date = execution_date;
  }
let create_k_Profile_t 
  ~identifier
  ~name
  ~forced
  () : k_Profile_t =
  {
    identifier = identifier;
    name = name;
    forced = forced;
  }
let create_k_Offer_t 
  ~id
  ~name
  () : k_Offer_t =
  {
    id = id;
    name = name;
  }
let create_k_Number_t 
  ~number
  () : k_Number_t =
  {
    number = number;
  }
let create_k_NumberTranslation_t 
  ~csi
  ~formatted_csi
  ~name
  ~offer_id
  ~offer_name
  ~commitment_start_date
  ~status
  ~blocking_status
  ~options
  () : k_NumberTranslation_t =
  {
    csi = csi;
    formatted_csi = formatted_csi;
    name = name;
    offer_id = offer_id;
    offer_name = offer_name;
    commitment_start_date = commitment_start_date;
    status = status;
    blocking_status = blocking_status;
    options = options;
  }
let create_k_MobileAccount_t 
  ~csi
  ~formatted_csi
  ~name
  ~offer_id
  ~offer_name
  ~commitment_start_date
  ~status
  ~blocking_status
  ~options
  ~incoming_acd_calls_allowed
  ~presented_number
  ~presented_number_raw
  () : k_MobileAccount_t =
  {
    csi = csi;
    formatted_csi = formatted_csi;
    name = name;
    offer_id = offer_id;
    offer_name = offer_name;
    commitment_start_date = commitment_start_date;
    status = status;
    blocking_status = blocking_status;
    options = options;
    incoming_acd_calls_allowed = incoming_acd_calls_allowed;
    presented_number = presented_number;
    presented_number_raw = presented_number_raw;
  }
let create_k_MinutePlanStatistic_t 
  ~unit
  ~total
  ~remaining
  ~description
  ~last_usage_ts
  ~last_update_ts
  ~start_ts
  ~end_ts
  () : k_MinutePlanStatistic_t =
  {
    unit = unit;
    total = total;
    remaining = remaining;
    description = description;
    last_usage_ts = last_usage_ts;
    last_update_ts = last_update_ts;
    start_ts = start_ts;
    end_ts = end_ts;
  }
let create_k_FaxTransfer_t 
  ~csi
  ~formatted_csi
  ~name
  ~offer_id
  ~offer_name
  ~commitment_start_date
  ~status
  ~blocking_status
  ~options
  () : k_FaxTransfer_t =
  {
    csi = csi;
    formatted_csi = formatted_csi;
    name = name;
    offer_id = offer_id;
    offer_name = offer_name;
    commitment_start_date = commitment_start_date;
    status = status;
    blocking_status = blocking_status;
    options = options;
  }
let create_k_EmailAccount_t 
  ~csi
  ~formatted_csi
  ~name
  ~offer_id
  ~offer_name
  ~commitment_start_date
  ~status
  ~blocking_status
  ~options
  ~first_name
  ~last_name
  ~quota
  () : k_EmailAccount_t =
  {
    csi = csi;
    formatted_csi = formatted_csi;
    name = name;
    offer_id = offer_id;
    offer_name = offer_name;
    commitment_start_date = commitment_start_date;
    status = status;
    blocking_status = blocking_status;
    options = options;
    first_name = first_name;
    last_name = last_name;
    quota = quota;
  }
let create_k_DirectoryContact_t 
  ~uid
  ~branch_uid
  ~name
  ~first_name
  ~default_number
  ~work_number
  ~work_speed_number
  ~mobile_number
  ~mobile_speed_number
  ~home_number
  ~home_speed_number
  ~email
  ~company
  ~job
  ~address
  ~zipcode
  ~city
  ~country
  ~base64_picture
  () : k_DirectoryContact_t =
  {
    uid = uid;
    branch_uid = branch_uid;
    name = name;
    first_name = first_name;
    default_number = default_number;
    work_number = work_number;
    work_speed_number = work_speed_number;
    mobile_number = mobile_number;
    mobile_speed_number = mobile_speed_number;
    home_number = home_number;
    home_speed_number = home_speed_number;
    email = email;
    company = company;
    job = job;
    address = address;
    zipcode = zipcode;
    city = city;
    country = country;
    base64_picture = base64_picture;
  }
let create_k_DirectoryBranch_t 
  ~uid
  ~parent_branch_uid
  ~name
  ~depth
  () : k_DirectoryBranch_t =
  {
    uid = uid;
    parent_branch_uid = parent_branch_uid;
    name = name;
    depth = depth;
  }
let create_k_DataUsageStatistic_t 
  ~id
  ~description
  ~unit
  ~total
  ~used
  ~remaining
  ~last_usage_ts
  ~last_update_ts
  ~start_ts
  ~end_ts
  () : k_DataUsageStatistic_t =
  {
    id = id;
    description = description;
    unit = unit;
    total = total;
    used = used;
    remaining = remaining;
    last_usage_ts = last_usage_ts;
    last_update_ts = last_update_ts;
    start_ts = start_ts;
    end_ts = end_ts;
  }
let create_k_DSLAccess_t 
  ~csi
  ~formatted_csi
  ~name
  ~offer_id
  ~offer_name
  ~commitment_start_date
  ~status
  ~blocking_status
  ~options
  ~reference_number
  ~maximum_download_speed
  ~maximum_upload_speed
  () : k_DSLAccess_t =
  {
    csi = csi;
    formatted_csi = formatted_csi;
    name = name;
    offer_id = offer_id;
    offer_name = offer_name;
    commitment_start_date = commitment_start_date;
    status = status;
    blocking_status = blocking_status;
    options = options;
    reference_number = reference_number;
    maximum_download_speed = maximum_download_speed;
    maximum_upload_speed = maximum_upload_speed;
  }
let create_k_CallDetailRecord_t 
  ~call_id
  ~start_time
  ~callee
  ~callee_raw
  ~caller
  ~caller_raw
  ~caller_presentation
  ~caller_presentation_raw
  ~quantity
  ~quantity_billed
  ~destination_name
  ~cost
  ~repayment
  ~unit
  ~roaming
  ~translation_number
  ~translation_number_raw
  () : k_CallDetailRecord_t =
  {
    call_id = call_id;
    start_time = start_time;
    callee = callee;
    callee_raw = callee_raw;
    caller = caller;
    caller_raw = caller_raw;
    caller_presentation = caller_presentation;
    caller_presentation_raw = caller_presentation_raw;
    quantity = quantity;
    quantity_billed = quantity_billed;
    destination_name = destination_name;
    cost = cost;
    repayment = repayment;
    unit = unit;
    roaming = roaming;
    translation_number = translation_number;
    translation_number_raw = translation_number_raw;
  }
let create_k_CallBarringGroup_t 
  ~name
  () : k_CallBarringGroup_t =
  {
    name = name;
  }
let create_k_CTIPlugin_t 
  ~name
  ~enabled
  () : k_CTIPlugin_t =
  {
    name = name;
    enabled = enabled;
  }
let create_k_CTIPluginParameter_t 
  ~name
  ~information
  ~value
  () : k_CTIPluginParameter_t =
  {
    name = name;
    information = information;
    value = value;
  }
let create_k_CSIToken_t 
  ~result
  ~token
  ~domain_masks
  ~timestamp
  () : k_CSIToken_t =
  {
    result = result;
    token = token;
    domain_masks = domain_masks;
    timestamp = timestamp;
  }
let create_k_AudioFile_t 
  ~id
  ~name
  ~atype
  ~is_personal
  ~base46_contents
  () : k_AudioFile_t =
  {
    id = id;
    name = name;
    atype = atype;
    is_personal = is_personal;
    base46_contents = base46_contents;
  }
let create_k_ACDService_t 
  ~csi
  ~formatted_csi
  ~name
  ~offer_id
  ~offer_name
  ~commitment_start_date
  ~status
  ~blocking_status
  ~options
  () : k_ACDService_t =
  {
    csi = csi;
    formatted_csi = formatted_csi;
    name = name;
    offer_id = offer_id;
    offer_name = offer_name;
    commitment_start_date = commitment_start_date;
    status = status;
    blocking_status = blocking_status;
    options = options;
  }
let create_k_ACDProfile_t 
  ~identifier
  ~name
  ~forced
  () : k_ACDProfile_t =
  {
    identifier = identifier;
    name = name;
    forced = forced;
  }
