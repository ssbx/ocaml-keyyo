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

let validate_k_Unit_t = (
  fun _ _ -> None
)
let validate_k_Scope_t = (
  fun _ _ -> None
)
let validate_k_MinutePlanStatistic_t : _ -> k_MinutePlanStatistic_t -> _ = (
  fun _ _ -> None
)
let validate_k_FaxTransfer_status_t = (
  fun _ _ -> None
)
let validate_k_FaxTransfer_options_t = (
  fun _ _ -> None
)
let validate_k_FaxTransfer_blocking_status_t = (
  fun _ _ -> None
)
let validate__nullable_2989c45 = (
  fun _ _ -> None
)
let validate__k_FaxTransfer_options_t_list = (
  fun _ _ -> None
)
let validate_k_FaxTransfer_t : _ -> k_FaxTransfer_t -> _ = (
  fun _ _ -> None
)
let validate_k_EmailAccount_status_t = (
  fun _ _ -> None
)
let validate_k_EmailAccount_options_t = (
  fun _ _ -> None
)
let validate_k_EmailAccount_blocking_status_t = (
  fun _ _ -> None
)
let validate__nullable_2146145 = (
  fun _ _ -> None
)
let validate__k_EmailAccount_options_t_list = (
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
let validate_k_DSLAccess_status_t = (
  fun _ _ -> None
)
let validate_k_DSLAccess_options_t = (
  fun _ _ -> None
)
let validate_k_DSLAccess_blocking_status_t = (
  fun _ _ -> None
)
let validate__nullable_91a4b3b = (
  fun _ _ -> None
)
let validate__k_DSLAccess_options_t_list = (
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
let validate_k_ACDService_status_t = (
  fun _ _ -> None
)
let validate_k_ACDService_options_t = (
  fun _ _ -> None
)
let validate_k_ACDService_blocking_status_t = (
  fun _ _ -> None
)
let validate__nullable_7b64331 = (
  fun _ _ -> None
)
let validate__k_ACDService_options_t_list = (
  fun _ _ -> None
)
let validate_k_ACDService_t : _ -> k_ACDService_t -> _ = (
  fun _ _ -> None
)
let validate_k_ACDProfile_t : _ -> k_ACDProfile_t -> _ = (
  fun _ _ -> None
)
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
