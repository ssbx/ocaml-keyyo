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

let write_k_Voicemail_t : _ -> k_Voicemail_t -> _ = (
  fun ob (x : k_Voicemail_t) ->
    Buffer.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"name\":";
    (
      Yojson.Safe.write_string
    )
      ob x.name;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"email\":";
    (
      Yojson.Safe.write_string
    )
      ob x.email;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"recording_enabled\":";
    (
      Yojson.Safe.write_bool
    )
      ob x.recording_enabled;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"instructions_enabled\":";
    (
      Yojson.Safe.write_bool
    )
      ob x.instructions_enabled;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"answering_audio_file_id\":";
    (
      Yojson.Safe.write_int
    )
      ob x.answering_audio_file_id;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"recording_audio_file_id_unavailable\":";
    (
      Yojson.Safe.write_int
    )
      ob x.recording_audio_file_id_unavailable;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"recording_audio_file_id_busy\":";
    (
      Yojson.Safe.write_int
    )
      ob x.recording_audio_file_id_busy;
    Buffer.add_char ob '}';
)
let string_of_k_Voicemail_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_Voicemail_t ob x;
  Buffer.contents ob
let read_k_Voicemail_t = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_name = ref (None) in
    let field_email = ref (None) in
    let field_recording_enabled = ref (None) in
    let field_instructions_enabled = ref (None) in
    let field_answering_audio_file_id = ref (None) in
    let field_recording_audio_file_id_unavailable = ref (None) in
    let field_recording_audio_file_id_busy = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
          match len with
            | 4 -> (
                if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                  0
                )
                else (
                  -1
                )
              )
            | 5 -> (
                if String.unsafe_get s pos = 'e' && String.unsafe_get s (pos+1) = 'm' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'l' then (
                  1
                )
                else (
                  -1
                )
              )
            | 17 -> (
                if String.unsafe_get s pos = 'r' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'c' && String.unsafe_get s (pos+3) = 'o' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'd' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'n' && String.unsafe_get s (pos+8) = 'g' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'e' && String.unsafe_get s (pos+11) = 'n' && String.unsafe_get s (pos+12) = 'a' && String.unsafe_get s (pos+13) = 'b' && String.unsafe_get s (pos+14) = 'l' && String.unsafe_get s (pos+15) = 'e' && String.unsafe_get s (pos+16) = 'd' then (
                  2
                )
                else (
                  -1
                )
              )
            | 20 -> (
                if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'u' && String.unsafe_get s (pos+6) = 'c' && String.unsafe_get s (pos+7) = 't' && String.unsafe_get s (pos+8) = 'i' && String.unsafe_get s (pos+9) = 'o' && String.unsafe_get s (pos+10) = 'n' && String.unsafe_get s (pos+11) = 's' && String.unsafe_get s (pos+12) = '_' && String.unsafe_get s (pos+13) = 'e' && String.unsafe_get s (pos+14) = 'n' && String.unsafe_get s (pos+15) = 'a' && String.unsafe_get s (pos+16) = 'b' && String.unsafe_get s (pos+17) = 'l' && String.unsafe_get s (pos+18) = 'e' && String.unsafe_get s (pos+19) = 'd' then (
                  3
                )
                else (
                  -1
                )
              )
            | 23 -> (
                if String.unsafe_get s pos = 'a' && String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'w' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'n' && String.unsafe_get s (pos+8) = 'g' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'a' && String.unsafe_get s (pos+11) = 'u' && String.unsafe_get s (pos+12) = 'd' && String.unsafe_get s (pos+13) = 'i' && String.unsafe_get s (pos+14) = 'o' && String.unsafe_get s (pos+15) = '_' && String.unsafe_get s (pos+16) = 'f' && String.unsafe_get s (pos+17) = 'i' && String.unsafe_get s (pos+18) = 'l' && String.unsafe_get s (pos+19) = 'e' && String.unsafe_get s (pos+20) = '_' && String.unsafe_get s (pos+21) = 'i' && String.unsafe_get s (pos+22) = 'd' then (
                  4
                )
                else (
                  -1
                )
              )
            | 28 -> (
                if String.unsafe_get s pos = 'r' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'c' && String.unsafe_get s (pos+3) = 'o' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'd' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'n' && String.unsafe_get s (pos+8) = 'g' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'a' && String.unsafe_get s (pos+11) = 'u' && String.unsafe_get s (pos+12) = 'd' && String.unsafe_get s (pos+13) = 'i' && String.unsafe_get s (pos+14) = 'o' && String.unsafe_get s (pos+15) = '_' && String.unsafe_get s (pos+16) = 'f' && String.unsafe_get s (pos+17) = 'i' && String.unsafe_get s (pos+18) = 'l' && String.unsafe_get s (pos+19) = 'e' && String.unsafe_get s (pos+20) = '_' && String.unsafe_get s (pos+21) = 'i' && String.unsafe_get s (pos+22) = 'd' && String.unsafe_get s (pos+23) = '_' && String.unsafe_get s (pos+24) = 'b' && String.unsafe_get s (pos+25) = 'u' && String.unsafe_get s (pos+26) = 's' && String.unsafe_get s (pos+27) = 'y' then (
                  6
                )
                else (
                  -1
                )
              )
            | 35 -> (
                if String.unsafe_get s pos = 'r' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'c' && String.unsafe_get s (pos+3) = 'o' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'd' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'n' && String.unsafe_get s (pos+8) = 'g' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'a' && String.unsafe_get s (pos+11) = 'u' && String.unsafe_get s (pos+12) = 'd' && String.unsafe_get s (pos+13) = 'i' && String.unsafe_get s (pos+14) = 'o' && String.unsafe_get s (pos+15) = '_' && String.unsafe_get s (pos+16) = 'f' && String.unsafe_get s (pos+17) = 'i' && String.unsafe_get s (pos+18) = 'l' && String.unsafe_get s (pos+19) = 'e' && String.unsafe_get s (pos+20) = '_' && String.unsafe_get s (pos+21) = 'i' && String.unsafe_get s (pos+22) = 'd' && String.unsafe_get s (pos+23) = '_' && String.unsafe_get s (pos+24) = 'u' && String.unsafe_get s (pos+25) = 'n' && String.unsafe_get s (pos+26) = 'a' && String.unsafe_get s (pos+27) = 'v' && String.unsafe_get s (pos+28) = 'a' && String.unsafe_get s (pos+29) = 'i' && String.unsafe_get s (pos+30) = 'l' && String.unsafe_get s (pos+31) = 'a' && String.unsafe_get s (pos+32) = 'b' && String.unsafe_get s (pos+33) = 'l' && String.unsafe_get s (pos+34) = 'e' then (
                  5
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_name := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 1 ->
            field_email := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 2 ->
            field_recording_enabled := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_bool
                ) p lb
              )
            );
          | 3 ->
            field_instructions_enabled := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_bool
                ) p lb
              )
            );
          | 4 ->
            field_answering_audio_file_id := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 5 ->
            field_recording_audio_file_id_unavailable := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 6 ->
            field_recording_audio_file_id_busy := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
            match len with
              | 4 -> (
                  if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 5 -> (
                  if String.unsafe_get s pos = 'e' && String.unsafe_get s (pos+1) = 'm' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'l' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 17 -> (
                  if String.unsafe_get s pos = 'r' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'c' && String.unsafe_get s (pos+3) = 'o' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'd' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'n' && String.unsafe_get s (pos+8) = 'g' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'e' && String.unsafe_get s (pos+11) = 'n' && String.unsafe_get s (pos+12) = 'a' && String.unsafe_get s (pos+13) = 'b' && String.unsafe_get s (pos+14) = 'l' && String.unsafe_get s (pos+15) = 'e' && String.unsafe_get s (pos+16) = 'd' then (
                    2
                  )
                  else (
                    -1
                  )
                )
              | 20 -> (
                  if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'u' && String.unsafe_get s (pos+6) = 'c' && String.unsafe_get s (pos+7) = 't' && String.unsafe_get s (pos+8) = 'i' && String.unsafe_get s (pos+9) = 'o' && String.unsafe_get s (pos+10) = 'n' && String.unsafe_get s (pos+11) = 's' && String.unsafe_get s (pos+12) = '_' && String.unsafe_get s (pos+13) = 'e' && String.unsafe_get s (pos+14) = 'n' && String.unsafe_get s (pos+15) = 'a' && String.unsafe_get s (pos+16) = 'b' && String.unsafe_get s (pos+17) = 'l' && String.unsafe_get s (pos+18) = 'e' && String.unsafe_get s (pos+19) = 'd' then (
                    3
                  )
                  else (
                    -1
                  )
                )
              | 23 -> (
                  if String.unsafe_get s pos = 'a' && String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'w' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'n' && String.unsafe_get s (pos+8) = 'g' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'a' && String.unsafe_get s (pos+11) = 'u' && String.unsafe_get s (pos+12) = 'd' && String.unsafe_get s (pos+13) = 'i' && String.unsafe_get s (pos+14) = 'o' && String.unsafe_get s (pos+15) = '_' && String.unsafe_get s (pos+16) = 'f' && String.unsafe_get s (pos+17) = 'i' && String.unsafe_get s (pos+18) = 'l' && String.unsafe_get s (pos+19) = 'e' && String.unsafe_get s (pos+20) = '_' && String.unsafe_get s (pos+21) = 'i' && String.unsafe_get s (pos+22) = 'd' then (
                    4
                  )
                  else (
                    -1
                  )
                )
              | 28 -> (
                  if String.unsafe_get s pos = 'r' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'c' && String.unsafe_get s (pos+3) = 'o' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'd' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'n' && String.unsafe_get s (pos+8) = 'g' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'a' && String.unsafe_get s (pos+11) = 'u' && String.unsafe_get s (pos+12) = 'd' && String.unsafe_get s (pos+13) = 'i' && String.unsafe_get s (pos+14) = 'o' && String.unsafe_get s (pos+15) = '_' && String.unsafe_get s (pos+16) = 'f' && String.unsafe_get s (pos+17) = 'i' && String.unsafe_get s (pos+18) = 'l' && String.unsafe_get s (pos+19) = 'e' && String.unsafe_get s (pos+20) = '_' && String.unsafe_get s (pos+21) = 'i' && String.unsafe_get s (pos+22) = 'd' && String.unsafe_get s (pos+23) = '_' && String.unsafe_get s (pos+24) = 'b' && String.unsafe_get s (pos+25) = 'u' && String.unsafe_get s (pos+26) = 's' && String.unsafe_get s (pos+27) = 'y' then (
                    6
                  )
                  else (
                    -1
                  )
                )
              | 35 -> (
                  if String.unsafe_get s pos = 'r' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'c' && String.unsafe_get s (pos+3) = 'o' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'd' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'n' && String.unsafe_get s (pos+8) = 'g' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'a' && String.unsafe_get s (pos+11) = 'u' && String.unsafe_get s (pos+12) = 'd' && String.unsafe_get s (pos+13) = 'i' && String.unsafe_get s (pos+14) = 'o' && String.unsafe_get s (pos+15) = '_' && String.unsafe_get s (pos+16) = 'f' && String.unsafe_get s (pos+17) = 'i' && String.unsafe_get s (pos+18) = 'l' && String.unsafe_get s (pos+19) = 'e' && String.unsafe_get s (pos+20) = '_' && String.unsafe_get s (pos+21) = 'i' && String.unsafe_get s (pos+22) = 'd' && String.unsafe_get s (pos+23) = '_' && String.unsafe_get s (pos+24) = 'u' && String.unsafe_get s (pos+25) = 'n' && String.unsafe_get s (pos+26) = 'a' && String.unsafe_get s (pos+27) = 'v' && String.unsafe_get s (pos+28) = 'a' && String.unsafe_get s (pos+29) = 'i' && String.unsafe_get s (pos+30) = 'l' && String.unsafe_get s (pos+31) = 'a' && String.unsafe_get s (pos+32) = 'b' && String.unsafe_get s (pos+33) = 'l' && String.unsafe_get s (pos+34) = 'e' then (
                    5
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_name := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 1 ->
              field_email := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 2 ->
              field_recording_enabled := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_bool
                  ) p lb
                )
              );
            | 3 ->
              field_instructions_enabled := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_bool
                  ) p lb
                )
              );
            | 4 ->
              field_answering_audio_file_id := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 5 ->
              field_recording_audio_file_id_unavailable := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 6 ->
              field_recording_audio_file_id_busy := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            name = (match !field_name with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "name");
            email = (match !field_email with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "email");
            recording_enabled = (match !field_recording_enabled with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "recording_enabled");
            instructions_enabled = (match !field_instructions_enabled with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "instructions_enabled");
            answering_audio_file_id = (match !field_answering_audio_file_id with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "answering_audio_file_id");
            recording_audio_file_id_unavailable = (match !field_recording_audio_file_id_unavailable with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "recording_audio_file_id_unavailable");
            recording_audio_file_id_busy = (match !field_recording_audio_file_id_busy with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "recording_audio_file_id_busy");
          }
         : k_Voicemail_t)
      )
)
let k_Voicemail_t_of_string s =
  read_k_Voicemail_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_VoicemailMessage_t : _ -> k_VoicemailMessage_t -> _ = (
  fun ob (x : k_VoicemailMessage_t) ->
    Buffer.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"read\":";
    (
      Yojson.Safe.write_bool
    )
      ob x.read;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"identifier\":";
    (
      Yojson.Safe.write_int
    )
      ob x.identifier;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"caller_id\":";
    (
      Yojson.Safe.write_int
    )
      ob x.caller_id;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"timestamp\":";
    (
      Yojson.Safe.write_int
    )
      ob x.timestamp;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"duration\":";
    (
      Yojson.Safe.write_int
    )
      ob x.duration;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"wav_contents\":";
    (
      Yojson.Safe.write_string
    )
      ob x.wav_contents;
    Buffer.add_char ob '}';
)
let string_of_k_VoicemailMessage_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_VoicemailMessage_t ob x;
  Buffer.contents ob
let read_k_VoicemailMessage_t = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_read = ref (None) in
    let field_identifier = ref (None) in
    let field_caller_id = ref (None) in
    let field_timestamp = ref (None) in
    let field_duration = ref (None) in
    let field_wav_contents = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
          match len with
            | 4 -> (
                if String.unsafe_get s pos = 'r' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'd' then (
                  0
                )
                else (
                  -1
                )
              )
            | 8 -> (
                if String.unsafe_get s pos = 'd' && String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'a' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'o' && String.unsafe_get s (pos+7) = 'n' then (
                  4
                )
                else (
                  -1
                )
              )
            | 9 -> (
                match String.unsafe_get s pos with
                  | 'c' -> (
                      if String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'l' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'i' && String.unsafe_get s (pos+8) = 'd' then (
                        2
                      )
                      else (
                        -1
                      )
                    )
                  | 't' -> (
                      if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 's' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 'a' && String.unsafe_get s (pos+7) = 'm' && String.unsafe_get s (pos+8) = 'p' then (
                        3
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 10 -> (
                if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 'd' && String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = 'n' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'f' && String.unsafe_get s (pos+7) = 'i' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = 'r' then (
                  1
                )
                else (
                  -1
                )
              )
            | 12 -> (
                if String.unsafe_get s pos = 'w' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'v' && String.unsafe_get s (pos+3) = '_' && String.unsafe_get s (pos+4) = 'c' && String.unsafe_get s (pos+5) = 'o' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 't' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = 'n' && String.unsafe_get s (pos+10) = 't' && String.unsafe_get s (pos+11) = 's' then (
                  5
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_read := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_bool
                ) p lb
              )
            );
          | 1 ->
            field_identifier := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 2 ->
            field_caller_id := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 3 ->
            field_timestamp := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 4 ->
            field_duration := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 5 ->
            field_wav_contents := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
            match len with
              | 4 -> (
                  if String.unsafe_get s pos = 'r' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'd' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 8 -> (
                  if String.unsafe_get s pos = 'd' && String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'a' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'o' && String.unsafe_get s (pos+7) = 'n' then (
                    4
                  )
                  else (
                    -1
                  )
                )
              | 9 -> (
                  match String.unsafe_get s pos with
                    | 'c' -> (
                        if String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'l' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'i' && String.unsafe_get s (pos+8) = 'd' then (
                          2
                        )
                        else (
                          -1
                        )
                      )
                    | 't' -> (
                        if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 's' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 'a' && String.unsafe_get s (pos+7) = 'm' && String.unsafe_get s (pos+8) = 'p' then (
                          3
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 10 -> (
                  if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 'd' && String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = 'n' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'f' && String.unsafe_get s (pos+7) = 'i' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = 'r' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 12 -> (
                  if String.unsafe_get s pos = 'w' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'v' && String.unsafe_get s (pos+3) = '_' && String.unsafe_get s (pos+4) = 'c' && String.unsafe_get s (pos+5) = 'o' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 't' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = 'n' && String.unsafe_get s (pos+10) = 't' && String.unsafe_get s (pos+11) = 's' then (
                    5
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_read := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_bool
                  ) p lb
                )
              );
            | 1 ->
              field_identifier := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 2 ->
              field_caller_id := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 3 ->
              field_timestamp := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 4 ->
              field_duration := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 5 ->
              field_wav_contents := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            read = (match !field_read with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "read");
            identifier = (match !field_identifier with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "identifier");
            caller_id = (match !field_caller_id with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "caller_id");
            timestamp = (match !field_timestamp with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "timestamp");
            duration = (match !field_duration with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "duration");
            wav_contents = (match !field_wav_contents with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "wav_contents");
          }
         : k_VoicemailMessage_t)
      )
)
let k_VoicemailMessage_t_of_string s =
  read_k_VoicemailMessage_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_VoIPAccountProfile_t : _ -> k_VoIPAccountProfile_t -> _ = (
  fun ob (x : k_VoIPAccountProfile_t) ->
    Buffer.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"identifier\":";
    (
      Yojson.Safe.write_string
    )
      ob x.identifier;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"name\":";
    (
      Yojson.Safe.write_string
    )
      ob x.name;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"backup_number\":";
    (
      Yojson.Safe.write_string
    )
      ob x.backup_number;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"forced\":";
    (
      Yojson.Safe.write_bool
    )
      ob x.forced;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"forward_delay\":";
    (
      Yojson.Safe.write_int
    )
      ob x.forward_delay;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"forward_on_no_answer_number\":";
    (
      Yojson.Safe.write_int
    )
      ob x.forward_on_no_answer_number;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"forward_to_voicemail\":";
    (
      Yojson.Safe.write_bool
    )
      ob x.forward_to_voicemail;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"forward_unconditionally_number\":";
    (
      Yojson.Safe.write_string
    )
      ob x.forward_unconditionally_number;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"forward_use_account_callerid_presentation\":";
    (
      Yojson.Safe.write_bool
    )
      ob x.forward_use_account_callerid_presentation;
    Buffer.add_char ob '}';
)
let string_of_k_VoIPAccountProfile_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_VoIPAccountProfile_t ob x;
  Buffer.contents ob
let read_k_VoIPAccountProfile_t = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_identifier = ref (None) in
    let field_name = ref (None) in
    let field_backup_number = ref (None) in
    let field_forced = ref (None) in
    let field_forward_delay = ref (None) in
    let field_forward_on_no_answer_number = ref (None) in
    let field_forward_to_voicemail = ref (None) in
    let field_forward_unconditionally_number = ref (None) in
    let field_forward_use_account_callerid_presentation = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
          match len with
            | 4 -> (
                if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                  1
                )
                else (
                  -1
                )
              )
            | 6 -> (
                if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'd' then (
                  3
                )
                else (
                  -1
                )
              )
            | 10 -> (
                if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 'd' && String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = 'n' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'f' && String.unsafe_get s (pos+7) = 'i' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = 'r' then (
                  0
                )
                else (
                  -1
                )
              )
            | 13 -> (
                match String.unsafe_get s pos with
                  | 'b' -> (
                      if String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'c' && String.unsafe_get s (pos+3) = 'k' && String.unsafe_get s (pos+4) = 'u' && String.unsafe_get s (pos+5) = 'p' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'n' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 'm' && String.unsafe_get s (pos+10) = 'b' && String.unsafe_get s (pos+11) = 'e' && String.unsafe_get s (pos+12) = 'r' then (
                        2
                      )
                      else (
                        -1
                      )
                    )
                  | 'f' -> (
                      if String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'w' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = 'd' && String.unsafe_get s (pos+7) = '_' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = 'e' && String.unsafe_get s (pos+10) = 'l' && String.unsafe_get s (pos+11) = 'a' && String.unsafe_get s (pos+12) = 'y' then (
                        4
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 20 -> (
                if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'w' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = 'd' && String.unsafe_get s (pos+7) = '_' && String.unsafe_get s (pos+8) = 't' && String.unsafe_get s (pos+9) = 'o' && String.unsafe_get s (pos+10) = '_' && String.unsafe_get s (pos+11) = 'v' && String.unsafe_get s (pos+12) = 'o' && String.unsafe_get s (pos+13) = 'i' && String.unsafe_get s (pos+14) = 'c' && String.unsafe_get s (pos+15) = 'e' && String.unsafe_get s (pos+16) = 'm' && String.unsafe_get s (pos+17) = 'a' && String.unsafe_get s (pos+18) = 'i' && String.unsafe_get s (pos+19) = 'l' then (
                  6
                )
                else (
                  -1
                )
              )
            | 27 -> (
                if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'w' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = 'd' && String.unsafe_get s (pos+7) = '_' && String.unsafe_get s (pos+8) = 'o' && String.unsafe_get s (pos+9) = 'n' && String.unsafe_get s (pos+10) = '_' && String.unsafe_get s (pos+11) = 'n' && String.unsafe_get s (pos+12) = 'o' && String.unsafe_get s (pos+13) = '_' && String.unsafe_get s (pos+14) = 'a' && String.unsafe_get s (pos+15) = 'n' && String.unsafe_get s (pos+16) = 's' && String.unsafe_get s (pos+17) = 'w' && String.unsafe_get s (pos+18) = 'e' && String.unsafe_get s (pos+19) = 'r' && String.unsafe_get s (pos+20) = '_' && String.unsafe_get s (pos+21) = 'n' && String.unsafe_get s (pos+22) = 'u' && String.unsafe_get s (pos+23) = 'm' && String.unsafe_get s (pos+24) = 'b' && String.unsafe_get s (pos+25) = 'e' && String.unsafe_get s (pos+26) = 'r' then (
                  5
                )
                else (
                  -1
                )
              )
            | 30 -> (
                if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'w' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = 'd' && String.unsafe_get s (pos+7) = '_' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 'n' && String.unsafe_get s (pos+10) = 'c' && String.unsafe_get s (pos+11) = 'o' && String.unsafe_get s (pos+12) = 'n' && String.unsafe_get s (pos+13) = 'd' && String.unsafe_get s (pos+14) = 'i' && String.unsafe_get s (pos+15) = 't' && String.unsafe_get s (pos+16) = 'i' && String.unsafe_get s (pos+17) = 'o' && String.unsafe_get s (pos+18) = 'n' && String.unsafe_get s (pos+19) = 'a' && String.unsafe_get s (pos+20) = 'l' && String.unsafe_get s (pos+21) = 'l' && String.unsafe_get s (pos+22) = 'y' && String.unsafe_get s (pos+23) = '_' && String.unsafe_get s (pos+24) = 'n' && String.unsafe_get s (pos+25) = 'u' && String.unsafe_get s (pos+26) = 'm' && String.unsafe_get s (pos+27) = 'b' && String.unsafe_get s (pos+28) = 'e' && String.unsafe_get s (pos+29) = 'r' then (
                  7
                )
                else (
                  -1
                )
              )
            | 41 -> (
                if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'w' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = 'd' && String.unsafe_get s (pos+7) = '_' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 'e' && String.unsafe_get s (pos+11) = '_' && String.unsafe_get s (pos+12) = 'a' && String.unsafe_get s (pos+13) = 'c' && String.unsafe_get s (pos+14) = 'c' && String.unsafe_get s (pos+15) = 'o' && String.unsafe_get s (pos+16) = 'u' && String.unsafe_get s (pos+17) = 'n' && String.unsafe_get s (pos+18) = 't' && String.unsafe_get s (pos+19) = '_' && String.unsafe_get s (pos+20) = 'c' && String.unsafe_get s (pos+21) = 'a' && String.unsafe_get s (pos+22) = 'l' && String.unsafe_get s (pos+23) = 'l' && String.unsafe_get s (pos+24) = 'e' && String.unsafe_get s (pos+25) = 'r' && String.unsafe_get s (pos+26) = 'i' && String.unsafe_get s (pos+27) = 'd' && String.unsafe_get s (pos+28) = '_' && String.unsafe_get s (pos+29) = 'p' && String.unsafe_get s (pos+30) = 'r' && String.unsafe_get s (pos+31) = 'e' && String.unsafe_get s (pos+32) = 's' && String.unsafe_get s (pos+33) = 'e' && String.unsafe_get s (pos+34) = 'n' && String.unsafe_get s (pos+35) = 't' && String.unsafe_get s (pos+36) = 'a' && String.unsafe_get s (pos+37) = 't' && String.unsafe_get s (pos+38) = 'i' && String.unsafe_get s (pos+39) = 'o' && String.unsafe_get s (pos+40) = 'n' then (
                  8
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_identifier := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 1 ->
            field_name := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 2 ->
            field_backup_number := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 3 ->
            field_forced := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_bool
                ) p lb
              )
            );
          | 4 ->
            field_forward_delay := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 5 ->
            field_forward_on_no_answer_number := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 6 ->
            field_forward_to_voicemail := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_bool
                ) p lb
              )
            );
          | 7 ->
            field_forward_unconditionally_number := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 8 ->
            field_forward_use_account_callerid_presentation := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_bool
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
            match len with
              | 4 -> (
                  if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 6 -> (
                  if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'd' then (
                    3
                  )
                  else (
                    -1
                  )
                )
              | 10 -> (
                  if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 'd' && String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = 'n' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'f' && String.unsafe_get s (pos+7) = 'i' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = 'r' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 13 -> (
                  match String.unsafe_get s pos with
                    | 'b' -> (
                        if String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'c' && String.unsafe_get s (pos+3) = 'k' && String.unsafe_get s (pos+4) = 'u' && String.unsafe_get s (pos+5) = 'p' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'n' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 'm' && String.unsafe_get s (pos+10) = 'b' && String.unsafe_get s (pos+11) = 'e' && String.unsafe_get s (pos+12) = 'r' then (
                          2
                        )
                        else (
                          -1
                        )
                      )
                    | 'f' -> (
                        if String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'w' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = 'd' && String.unsafe_get s (pos+7) = '_' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = 'e' && String.unsafe_get s (pos+10) = 'l' && String.unsafe_get s (pos+11) = 'a' && String.unsafe_get s (pos+12) = 'y' then (
                          4
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 20 -> (
                  if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'w' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = 'd' && String.unsafe_get s (pos+7) = '_' && String.unsafe_get s (pos+8) = 't' && String.unsafe_get s (pos+9) = 'o' && String.unsafe_get s (pos+10) = '_' && String.unsafe_get s (pos+11) = 'v' && String.unsafe_get s (pos+12) = 'o' && String.unsafe_get s (pos+13) = 'i' && String.unsafe_get s (pos+14) = 'c' && String.unsafe_get s (pos+15) = 'e' && String.unsafe_get s (pos+16) = 'm' && String.unsafe_get s (pos+17) = 'a' && String.unsafe_get s (pos+18) = 'i' && String.unsafe_get s (pos+19) = 'l' then (
                    6
                  )
                  else (
                    -1
                  )
                )
              | 27 -> (
                  if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'w' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = 'd' && String.unsafe_get s (pos+7) = '_' && String.unsafe_get s (pos+8) = 'o' && String.unsafe_get s (pos+9) = 'n' && String.unsafe_get s (pos+10) = '_' && String.unsafe_get s (pos+11) = 'n' && String.unsafe_get s (pos+12) = 'o' && String.unsafe_get s (pos+13) = '_' && String.unsafe_get s (pos+14) = 'a' && String.unsafe_get s (pos+15) = 'n' && String.unsafe_get s (pos+16) = 's' && String.unsafe_get s (pos+17) = 'w' && String.unsafe_get s (pos+18) = 'e' && String.unsafe_get s (pos+19) = 'r' && String.unsafe_get s (pos+20) = '_' && String.unsafe_get s (pos+21) = 'n' && String.unsafe_get s (pos+22) = 'u' && String.unsafe_get s (pos+23) = 'm' && String.unsafe_get s (pos+24) = 'b' && String.unsafe_get s (pos+25) = 'e' && String.unsafe_get s (pos+26) = 'r' then (
                    5
                  )
                  else (
                    -1
                  )
                )
              | 30 -> (
                  if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'w' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = 'd' && String.unsafe_get s (pos+7) = '_' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 'n' && String.unsafe_get s (pos+10) = 'c' && String.unsafe_get s (pos+11) = 'o' && String.unsafe_get s (pos+12) = 'n' && String.unsafe_get s (pos+13) = 'd' && String.unsafe_get s (pos+14) = 'i' && String.unsafe_get s (pos+15) = 't' && String.unsafe_get s (pos+16) = 'i' && String.unsafe_get s (pos+17) = 'o' && String.unsafe_get s (pos+18) = 'n' && String.unsafe_get s (pos+19) = 'a' && String.unsafe_get s (pos+20) = 'l' && String.unsafe_get s (pos+21) = 'l' && String.unsafe_get s (pos+22) = 'y' && String.unsafe_get s (pos+23) = '_' && String.unsafe_get s (pos+24) = 'n' && String.unsafe_get s (pos+25) = 'u' && String.unsafe_get s (pos+26) = 'm' && String.unsafe_get s (pos+27) = 'b' && String.unsafe_get s (pos+28) = 'e' && String.unsafe_get s (pos+29) = 'r' then (
                    7
                  )
                  else (
                    -1
                  )
                )
              | 41 -> (
                  if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'w' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = 'd' && String.unsafe_get s (pos+7) = '_' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 'e' && String.unsafe_get s (pos+11) = '_' && String.unsafe_get s (pos+12) = 'a' && String.unsafe_get s (pos+13) = 'c' && String.unsafe_get s (pos+14) = 'c' && String.unsafe_get s (pos+15) = 'o' && String.unsafe_get s (pos+16) = 'u' && String.unsafe_get s (pos+17) = 'n' && String.unsafe_get s (pos+18) = 't' && String.unsafe_get s (pos+19) = '_' && String.unsafe_get s (pos+20) = 'c' && String.unsafe_get s (pos+21) = 'a' && String.unsafe_get s (pos+22) = 'l' && String.unsafe_get s (pos+23) = 'l' && String.unsafe_get s (pos+24) = 'e' && String.unsafe_get s (pos+25) = 'r' && String.unsafe_get s (pos+26) = 'i' && String.unsafe_get s (pos+27) = 'd' && String.unsafe_get s (pos+28) = '_' && String.unsafe_get s (pos+29) = 'p' && String.unsafe_get s (pos+30) = 'r' && String.unsafe_get s (pos+31) = 'e' && String.unsafe_get s (pos+32) = 's' && String.unsafe_get s (pos+33) = 'e' && String.unsafe_get s (pos+34) = 'n' && String.unsafe_get s (pos+35) = 't' && String.unsafe_get s (pos+36) = 'a' && String.unsafe_get s (pos+37) = 't' && String.unsafe_get s (pos+38) = 'i' && String.unsafe_get s (pos+39) = 'o' && String.unsafe_get s (pos+40) = 'n' then (
                    8
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_identifier := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 1 ->
              field_name := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 2 ->
              field_backup_number := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 3 ->
              field_forced := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_bool
                  ) p lb
                )
              );
            | 4 ->
              field_forward_delay := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 5 ->
              field_forward_on_no_answer_number := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 6 ->
              field_forward_to_voicemail := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_bool
                  ) p lb
                )
              );
            | 7 ->
              field_forward_unconditionally_number := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 8 ->
              field_forward_use_account_callerid_presentation := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_bool
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            identifier = (match !field_identifier with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "identifier");
            name = (match !field_name with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "name");
            backup_number = (match !field_backup_number with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "backup_number");
            forced = (match !field_forced with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "forced");
            forward_delay = (match !field_forward_delay with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "forward_delay");
            forward_on_no_answer_number = (match !field_forward_on_no_answer_number with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "forward_on_no_answer_number");
            forward_to_voicemail = (match !field_forward_to_voicemail with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "forward_to_voicemail");
            forward_unconditionally_number = (match !field_forward_unconditionally_number with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "forward_unconditionally_number");
            forward_use_account_callerid_presentation = (match !field_forward_use_account_callerid_presentation with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "forward_use_account_callerid_presentation");
          }
         : k_VoIPAccountProfile_t)
      )
)
let k_VoIPAccountProfile_t_of_string s =
  read_k_VoIPAccountProfile_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_Status_t = (
  fun ob x ->
    match x with
      | `In_service -> Buffer.add_string ob "\"in_service\""
      | `Setup_pending -> Buffer.add_string ob "\"setup_pending\""
      | `Suspended -> Buffer.add_string ob "\"suspended\""
      | `Cancelled -> Buffer.add_string ob "\"cancelled\""
      | `Cancellation_pending -> Buffer.add_string ob "\"cancellation_pending\""
)
let string_of_k_Status_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_Status_t ob x;
  Buffer.contents ob
let read_k_Status_t = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "in_service" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `In_service
            | "setup_pending" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Setup_pending
            | "suspended" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Suspended
            | "cancelled" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Cancelled
            | "cancellation_pending" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Cancellation_pending
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "in_service" ->
              `In_service
            | "setup_pending" ->
              `Setup_pending
            | "suspended" ->
              `Suspended
            | "cancelled" ->
              `Cancelled
            | "cancellation_pending" ->
              `Cancellation_pending
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let k_Status_t_of_string s =
  read_k_Status_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_Options_t = (
  fun ob x ->
    match x with
      | `Sms -> Buffer.add_string ob "\"sms\""
      | `Crypt -> Buffer.add_string ob "\"crypt\""
      | `Supervision -> Buffer.add_string ob "\"supervision\""
      | `Iphone -> Buffer.add_string ob "\"iphone\""
)
let string_of_k_Options_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_Options_t ob x;
  Buffer.contents ob
let read_k_Options_t = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "sms" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Sms
            | "crypt" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Crypt
            | "supervision" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Supervision
            | "iphone" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Iphone
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "sms" ->
              `Sms
            | "crypt" ->
              `Crypt
            | "supervision" ->
              `Supervision
            | "iphone" ->
              `Iphone
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let k_Options_t_of_string s =
  read_k_Options_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_Blocking_status_t = (
  fun ob x ->
    match x with
      | `Pending -> Buffer.add_string ob "\"pending\""
      | `Blocked -> Buffer.add_string ob "\"blocked\""
)
let string_of_k_Blocking_status_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_Blocking_status_t ob x;
  Buffer.contents ob
let read_k_Blocking_status_t = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "pending" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Pending
            | "blocked" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Blocked
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "pending" ->
              `Pending
            | "blocked" ->
              `Blocked
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let k_Blocking_status_t_of_string s =
  read_k_Blocking_status_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__k_Options_t_list = (
  Atdgen_runtime.Oj_run.write_list (
    write_k_Options_t
  )
)
let string_of__k_Options_t_list ?(len = 1024) x =
  let ob = Buffer.create len in
  write__k_Options_t_list ob x;
  Buffer.contents ob
let read__k_Options_t_list = (
  Atdgen_runtime.Oj_run.read_list (
    read_k_Options_t
  )
)
let _k_Options_t_list_of_string s =
  read__k_Options_t_list (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__k_Blocking_status_t_nullable = (
  Atdgen_runtime.Oj_run.write_nullable (
    write_k_Blocking_status_t
  )
)
let string_of__k_Blocking_status_t_nullable ?(len = 1024) x =
  let ob = Buffer.create len in
  write__k_Blocking_status_t_nullable ob x;
  Buffer.contents ob
let read__k_Blocking_status_t_nullable = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    (if Yojson.Safe.read_null_if_possible p lb then None
    else Some ((
      read_k_Blocking_status_t
    ) p lb) : _ option)
)
let _k_Blocking_status_t_nullable_of_string s =
  read__k_Blocking_status_t_nullable (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_VirtualFaxAccount_t : _ -> k_VirtualFaxAccount_t -> _ = (
  fun ob (x : k_VirtualFaxAccount_t) ->
    Buffer.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"csi\":";
    (
      Yojson.Safe.write_int
    )
      ob x.csi;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"formatted_csi\":";
    (
      Yojson.Safe.write_string
    )
      ob x.formatted_csi;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"name\":";
    (
      Yojson.Safe.write_string
    )
      ob x.name;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"offer_id\":";
    (
      Yojson.Safe.write_int
    )
      ob x.offer_id;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"offer_name\":";
    (
      Yojson.Safe.write_string
    )
      ob x.offer_name;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"commitment_start_date\":";
    (
      Yojson.Safe.write_string
    )
      ob x.commitment_start_date;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"status\":";
    (
      write_k_Status_t
    )
      ob x.status;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"blocking_status\":";
    (
      write__k_Blocking_status_t_nullable
    )
      ob x.blocking_status;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"options\":";
    (
      write__k_Options_t_list
    )
      ob x.options;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"email\":";
    (
      Yojson.Safe.write_string
    )
      ob x.email;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"password\":";
    (
      Yojson.Safe.write_string
    )
      ob x.password;
    Buffer.add_char ob '}';
)
let string_of_k_VirtualFaxAccount_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_VirtualFaxAccount_t ob x;
  Buffer.contents ob
let read_k_VirtualFaxAccount_t = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_csi = ref (None) in
    let field_formatted_csi = ref (None) in
    let field_name = ref (None) in
    let field_offer_id = ref (None) in
    let field_offer_name = ref (None) in
    let field_commitment_start_date = ref (None) in
    let field_status = ref (None) in
    let field_blocking_status = ref (None) in
    let field_options = ref (None) in
    let field_email = ref (None) in
    let field_password = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
          match len with
            | 3 -> (
                if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 's' && String.unsafe_get s (pos+2) = 'i' then (
                  0
                )
                else (
                  -1
                )
              )
            | 4 -> (
                if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                  2
                )
                else (
                  -1
                )
              )
            | 5 -> (
                if String.unsafe_get s pos = 'e' && String.unsafe_get s (pos+1) = 'm' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'l' then (
                  9
                )
                else (
                  -1
                )
              )
            | 6 -> (
                if String.unsafe_get s pos = 's' && String.unsafe_get s (pos+1) = 't' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'u' && String.unsafe_get s (pos+5) = 's' then (
                  6
                )
                else (
                  -1
                )
              )
            | 7 -> (
                if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'p' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'o' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 's' then (
                  8
                )
                else (
                  -1
                )
              )
            | 8 -> (
                match String.unsafe_get s pos with
                  | 'o' -> (
                      if String.unsafe_get s (pos+1) = 'f' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'd' then (
                        3
                      )
                      else (
                        -1
                      )
                    )
                  | 'p' -> (
                      if String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 's' && String.unsafe_get s (pos+4) = 'w' && String.unsafe_get s (pos+5) = 'o' && String.unsafe_get s (pos+6) = 'r' && String.unsafe_get s (pos+7) = 'd' then (
                        10
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 10 -> (
                if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'f' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'a' && String.unsafe_get s (pos+8) = 'm' && String.unsafe_get s (pos+9) = 'e' then (
                  4
                )
                else (
                  -1
                )
              )
            | 13 -> (
                if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'c' && String.unsafe_get s (pos+11) = 's' && String.unsafe_get s (pos+12) = 'i' then (
                  1
                )
                else (
                  -1
                )
              )
            | 15 -> (
                if String.unsafe_get s pos = 'b' && String.unsafe_get s (pos+1) = 'l' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'k' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'g' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 't' && String.unsafe_get s (pos+11) = 'a' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 'u' && String.unsafe_get s (pos+14) = 's' then (
                  7
                )
                else (
                  -1
                )
              )
            | 21 -> (
                if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 'm' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'n' && String.unsafe_get s (pos+9) = 't' && String.unsafe_get s (pos+10) = '_' && String.unsafe_get s (pos+11) = 's' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 'a' && String.unsafe_get s (pos+14) = 'r' && String.unsafe_get s (pos+15) = 't' && String.unsafe_get s (pos+16) = '_' && String.unsafe_get s (pos+17) = 'd' && String.unsafe_get s (pos+18) = 'a' && String.unsafe_get s (pos+19) = 't' && String.unsafe_get s (pos+20) = 'e' then (
                  5
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_csi := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 1 ->
            field_formatted_csi := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 2 ->
            field_name := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 3 ->
            field_offer_id := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 4 ->
            field_offer_name := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 5 ->
            field_commitment_start_date := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 6 ->
            field_status := (
              Some (
                (
                  read_k_Status_t
                ) p lb
              )
            );
          | 7 ->
            field_blocking_status := (
              Some (
                (
                  read__k_Blocking_status_t_nullable
                ) p lb
              )
            );
          | 8 ->
            field_options := (
              Some (
                (
                  read__k_Options_t_list
                ) p lb
              )
            );
          | 9 ->
            field_email := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 10 ->
            field_password := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
            match len with
              | 3 -> (
                  if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 's' && String.unsafe_get s (pos+2) = 'i' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 4 -> (
                  if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                    2
                  )
                  else (
                    -1
                  )
                )
              | 5 -> (
                  if String.unsafe_get s pos = 'e' && String.unsafe_get s (pos+1) = 'm' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'l' then (
                    9
                  )
                  else (
                    -1
                  )
                )
              | 6 -> (
                  if String.unsafe_get s pos = 's' && String.unsafe_get s (pos+1) = 't' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'u' && String.unsafe_get s (pos+5) = 's' then (
                    6
                  )
                  else (
                    -1
                  )
                )
              | 7 -> (
                  if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'p' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'o' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 's' then (
                    8
                  )
                  else (
                    -1
                  )
                )
              | 8 -> (
                  match String.unsafe_get s pos with
                    | 'o' -> (
                        if String.unsafe_get s (pos+1) = 'f' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'd' then (
                          3
                        )
                        else (
                          -1
                        )
                      )
                    | 'p' -> (
                        if String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 's' && String.unsafe_get s (pos+4) = 'w' && String.unsafe_get s (pos+5) = 'o' && String.unsafe_get s (pos+6) = 'r' && String.unsafe_get s (pos+7) = 'd' then (
                          10
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 10 -> (
                  if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'f' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'a' && String.unsafe_get s (pos+8) = 'm' && String.unsafe_get s (pos+9) = 'e' then (
                    4
                  )
                  else (
                    -1
                  )
                )
              | 13 -> (
                  if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'c' && String.unsafe_get s (pos+11) = 's' && String.unsafe_get s (pos+12) = 'i' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 15 -> (
                  if String.unsafe_get s pos = 'b' && String.unsafe_get s (pos+1) = 'l' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'k' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'g' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 't' && String.unsafe_get s (pos+11) = 'a' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 'u' && String.unsafe_get s (pos+14) = 's' then (
                    7
                  )
                  else (
                    -1
                  )
                )
              | 21 -> (
                  if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 'm' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'n' && String.unsafe_get s (pos+9) = 't' && String.unsafe_get s (pos+10) = '_' && String.unsafe_get s (pos+11) = 's' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 'a' && String.unsafe_get s (pos+14) = 'r' && String.unsafe_get s (pos+15) = 't' && String.unsafe_get s (pos+16) = '_' && String.unsafe_get s (pos+17) = 'd' && String.unsafe_get s (pos+18) = 'a' && String.unsafe_get s (pos+19) = 't' && String.unsafe_get s (pos+20) = 'e' then (
                    5
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_csi := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 1 ->
              field_formatted_csi := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 2 ->
              field_name := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 3 ->
              field_offer_id := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 4 ->
              field_offer_name := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 5 ->
              field_commitment_start_date := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 6 ->
              field_status := (
                Some (
                  (
                    read_k_Status_t
                  ) p lb
                )
              );
            | 7 ->
              field_blocking_status := (
                Some (
                  (
                    read__k_Blocking_status_t_nullable
                  ) p lb
                )
              );
            | 8 ->
              field_options := (
                Some (
                  (
                    read__k_Options_t_list
                  ) p lb
                )
              );
            | 9 ->
              field_email := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 10 ->
              field_password := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            csi = (match !field_csi with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "csi");
            formatted_csi = (match !field_formatted_csi with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "formatted_csi");
            name = (match !field_name with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "name");
            offer_id = (match !field_offer_id with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "offer_id");
            offer_name = (match !field_offer_name with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "offer_name");
            commitment_start_date = (match !field_commitment_start_date with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "commitment_start_date");
            status = (match !field_status with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "status");
            blocking_status = (match !field_blocking_status with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "blocking_status");
            options = (match !field_options with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "options");
            email = (match !field_email with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "email");
            password = (match !field_password with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "password");
          }
         : k_VirtualFaxAccount_t)
      )
)
let k_VirtualFaxAccount_t_of_string s =
  read_k_VirtualFaxAccount_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_Unit_t = (
  fun ob x ->
    match x with
      | `Second -> Buffer.add_string ob "\"second\""
      | `Sms -> Buffer.add_string ob "\"sms\""
      | `Ko -> Buffer.add_string ob "\"ko\""
      | `Mo -> Buffer.add_string ob "\"Mo\""
      | `Textmms -> Buffer.add_string ob "\"textmms\""
      | `Mms -> Buffer.add_string ob "\"mms\""
)
let string_of_k_Unit_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_Unit_t ob x;
  Buffer.contents ob
let read_k_Unit_t = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "second" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Second
            | "sms" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Sms
            | "ko" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Ko
            | "Mo" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Mo
            | "textmms" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Textmms
            | "mms" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Mms
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "second" ->
              `Second
            | "sms" ->
              `Sms
            | "ko" ->
              `Ko
            | "Mo" ->
              `Mo
            | "textmms" ->
              `Textmms
            | "mms" ->
              `Mms
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let k_Unit_t_of_string s =
  read_k_Unit_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_UCaaSVoIPAccount_t : _ -> k_UCaaSVoIPAccount_t -> _ = (
  fun ob (x : k_UCaaSVoIPAccount_t) ->
    Buffer.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"csi\":";
    (
      Yojson.Safe.write_int
    )
      ob x.csi;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"formatted_csi\":";
    (
      Yojson.Safe.write_int
    )
      ob x.formatted_csi;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"name\":";
    (
      Yojson.Safe.write_string
    )
      ob x.name;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"offer_id\":";
    (
      Yojson.Safe.write_int
    )
      ob x.offer_id;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"offer_name\":";
    (
      Yojson.Safe.write_string
    )
      ob x.offer_name;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"commitment_start_date\":";
    (
      Yojson.Safe.write_string
    )
      ob x.commitment_start_date;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"status\":";
    (
      write_k_Status_t
    )
      ob x.status;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"blocking_status\":";
    (
      write__k_Blocking_status_t_nullable
    )
      ob x.blocking_status;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"options\":";
    (
      write__k_Options_t_list
    )
      ob x.options;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"short_number\":";
    (
      Yojson.Safe.write_int
    )
      ob x.short_number;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"incoming_acd_calls_allowed\":";
    (
      Yojson.Safe.write_bool
    )
      ob x.incoming_acd_calls_allowed;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"presented_number\":";
    (
      Yojson.Safe.write_string
    )
      ob x.presented_number;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"presented_number_raw\":";
    (
      Yojson.Safe.write_string
    )
      ob x.presented_number_raw;
    Buffer.add_char ob '}';
)
let string_of_k_UCaaSVoIPAccount_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_UCaaSVoIPAccount_t ob x;
  Buffer.contents ob
let read_k_UCaaSVoIPAccount_t = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_csi = ref (None) in
    let field_formatted_csi = ref (None) in
    let field_name = ref (None) in
    let field_offer_id = ref (None) in
    let field_offer_name = ref (None) in
    let field_commitment_start_date = ref (None) in
    let field_status = ref (None) in
    let field_blocking_status = ref (None) in
    let field_options = ref (None) in
    let field_short_number = ref (None) in
    let field_incoming_acd_calls_allowed = ref (None) in
    let field_presented_number = ref (None) in
    let field_presented_number_raw = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
          match len with
            | 3 -> (
                if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 's' && String.unsafe_get s (pos+2) = 'i' then (
                  0
                )
                else (
                  -1
                )
              )
            | 4 -> (
                if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                  2
                )
                else (
                  -1
                )
              )
            | 6 -> (
                if String.unsafe_get s pos = 's' && String.unsafe_get s (pos+1) = 't' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'u' && String.unsafe_get s (pos+5) = 's' then (
                  6
                )
                else (
                  -1
                )
              )
            | 7 -> (
                if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'p' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'o' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 's' then (
                  8
                )
                else (
                  -1
                )
              )
            | 8 -> (
                if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'f' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'd' then (
                  3
                )
                else (
                  -1
                )
              )
            | 10 -> (
                if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'f' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'a' && String.unsafe_get s (pos+8) = 'm' && String.unsafe_get s (pos+9) = 'e' then (
                  4
                )
                else (
                  -1
                )
              )
            | 12 -> (
                if String.unsafe_get s pos = 's' && String.unsafe_get s (pos+1) = 'h' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'r' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'u' && String.unsafe_get s (pos+8) = 'm' && String.unsafe_get s (pos+9) = 'b' && String.unsafe_get s (pos+10) = 'e' && String.unsafe_get s (pos+11) = 'r' then (
                  9
                )
                else (
                  -1
                )
              )
            | 13 -> (
                if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'c' && String.unsafe_get s (pos+11) = 's' && String.unsafe_get s (pos+12) = 'i' then (
                  1
                )
                else (
                  -1
                )
              )
            | 15 -> (
                if String.unsafe_get s pos = 'b' && String.unsafe_get s (pos+1) = 'l' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'k' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'g' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 't' && String.unsafe_get s (pos+11) = 'a' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 'u' && String.unsafe_get s (pos+14) = 's' then (
                  7
                )
                else (
                  -1
                )
              )
            | 16 -> (
                if String.unsafe_get s pos = 'p' && String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = 's' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'n' && String.unsafe_get s (pos+11) = 'u' && String.unsafe_get s (pos+12) = 'm' && String.unsafe_get s (pos+13) = 'b' && String.unsafe_get s (pos+14) = 'e' && String.unsafe_get s (pos+15) = 'r' then (
                  11
                )
                else (
                  -1
                )
              )
            | 20 -> (
                if String.unsafe_get s pos = 'p' && String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = 's' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'n' && String.unsafe_get s (pos+11) = 'u' && String.unsafe_get s (pos+12) = 'm' && String.unsafe_get s (pos+13) = 'b' && String.unsafe_get s (pos+14) = 'e' && String.unsafe_get s (pos+15) = 'r' && String.unsafe_get s (pos+16) = '_' && String.unsafe_get s (pos+17) = 'r' && String.unsafe_get s (pos+18) = 'a' && String.unsafe_get s (pos+19) = 'w' then (
                  12
                )
                else (
                  -1
                )
              )
            | 21 -> (
                if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 'm' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'n' && String.unsafe_get s (pos+9) = 't' && String.unsafe_get s (pos+10) = '_' && String.unsafe_get s (pos+11) = 's' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 'a' && String.unsafe_get s (pos+14) = 'r' && String.unsafe_get s (pos+15) = 't' && String.unsafe_get s (pos+16) = '_' && String.unsafe_get s (pos+17) = 'd' && String.unsafe_get s (pos+18) = 'a' && String.unsafe_get s (pos+19) = 't' && String.unsafe_get s (pos+20) = 'e' then (
                  5
                )
                else (
                  -1
                )
              )
            | 26 -> (
                if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 'c' && String.unsafe_get s (pos+3) = 'o' && String.unsafe_get s (pos+4) = 'm' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'g' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 'a' && String.unsafe_get s (pos+10) = 'c' && String.unsafe_get s (pos+11) = 'd' && String.unsafe_get s (pos+12) = '_' && String.unsafe_get s (pos+13) = 'c' && String.unsafe_get s (pos+14) = 'a' && String.unsafe_get s (pos+15) = 'l' && String.unsafe_get s (pos+16) = 'l' && String.unsafe_get s (pos+17) = 's' && String.unsafe_get s (pos+18) = '_' && String.unsafe_get s (pos+19) = 'a' && String.unsafe_get s (pos+20) = 'l' && String.unsafe_get s (pos+21) = 'l' && String.unsafe_get s (pos+22) = 'o' && String.unsafe_get s (pos+23) = 'w' && String.unsafe_get s (pos+24) = 'e' && String.unsafe_get s (pos+25) = 'd' then (
                  10
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_csi := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 1 ->
            field_formatted_csi := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 2 ->
            field_name := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 3 ->
            field_offer_id := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 4 ->
            field_offer_name := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 5 ->
            field_commitment_start_date := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 6 ->
            field_status := (
              Some (
                (
                  read_k_Status_t
                ) p lb
              )
            );
          | 7 ->
            field_blocking_status := (
              Some (
                (
                  read__k_Blocking_status_t_nullable
                ) p lb
              )
            );
          | 8 ->
            field_options := (
              Some (
                (
                  read__k_Options_t_list
                ) p lb
              )
            );
          | 9 ->
            field_short_number := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 10 ->
            field_incoming_acd_calls_allowed := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_bool
                ) p lb
              )
            );
          | 11 ->
            field_presented_number := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 12 ->
            field_presented_number_raw := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
            match len with
              | 3 -> (
                  if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 's' && String.unsafe_get s (pos+2) = 'i' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 4 -> (
                  if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                    2
                  )
                  else (
                    -1
                  )
                )
              | 6 -> (
                  if String.unsafe_get s pos = 's' && String.unsafe_get s (pos+1) = 't' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'u' && String.unsafe_get s (pos+5) = 's' then (
                    6
                  )
                  else (
                    -1
                  )
                )
              | 7 -> (
                  if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'p' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'o' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 's' then (
                    8
                  )
                  else (
                    -1
                  )
                )
              | 8 -> (
                  if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'f' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'd' then (
                    3
                  )
                  else (
                    -1
                  )
                )
              | 10 -> (
                  if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'f' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'a' && String.unsafe_get s (pos+8) = 'm' && String.unsafe_get s (pos+9) = 'e' then (
                    4
                  )
                  else (
                    -1
                  )
                )
              | 12 -> (
                  if String.unsafe_get s pos = 's' && String.unsafe_get s (pos+1) = 'h' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'r' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'u' && String.unsafe_get s (pos+8) = 'm' && String.unsafe_get s (pos+9) = 'b' && String.unsafe_get s (pos+10) = 'e' && String.unsafe_get s (pos+11) = 'r' then (
                    9
                  )
                  else (
                    -1
                  )
                )
              | 13 -> (
                  if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'c' && String.unsafe_get s (pos+11) = 's' && String.unsafe_get s (pos+12) = 'i' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 15 -> (
                  if String.unsafe_get s pos = 'b' && String.unsafe_get s (pos+1) = 'l' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'k' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'g' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 't' && String.unsafe_get s (pos+11) = 'a' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 'u' && String.unsafe_get s (pos+14) = 's' then (
                    7
                  )
                  else (
                    -1
                  )
                )
              | 16 -> (
                  if String.unsafe_get s pos = 'p' && String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = 's' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'n' && String.unsafe_get s (pos+11) = 'u' && String.unsafe_get s (pos+12) = 'm' && String.unsafe_get s (pos+13) = 'b' && String.unsafe_get s (pos+14) = 'e' && String.unsafe_get s (pos+15) = 'r' then (
                    11
                  )
                  else (
                    -1
                  )
                )
              | 20 -> (
                  if String.unsafe_get s pos = 'p' && String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = 's' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'n' && String.unsafe_get s (pos+11) = 'u' && String.unsafe_get s (pos+12) = 'm' && String.unsafe_get s (pos+13) = 'b' && String.unsafe_get s (pos+14) = 'e' && String.unsafe_get s (pos+15) = 'r' && String.unsafe_get s (pos+16) = '_' && String.unsafe_get s (pos+17) = 'r' && String.unsafe_get s (pos+18) = 'a' && String.unsafe_get s (pos+19) = 'w' then (
                    12
                  )
                  else (
                    -1
                  )
                )
              | 21 -> (
                  if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 'm' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'n' && String.unsafe_get s (pos+9) = 't' && String.unsafe_get s (pos+10) = '_' && String.unsafe_get s (pos+11) = 's' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 'a' && String.unsafe_get s (pos+14) = 'r' && String.unsafe_get s (pos+15) = 't' && String.unsafe_get s (pos+16) = '_' && String.unsafe_get s (pos+17) = 'd' && String.unsafe_get s (pos+18) = 'a' && String.unsafe_get s (pos+19) = 't' && String.unsafe_get s (pos+20) = 'e' then (
                    5
                  )
                  else (
                    -1
                  )
                )
              | 26 -> (
                  if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 'c' && String.unsafe_get s (pos+3) = 'o' && String.unsafe_get s (pos+4) = 'm' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'g' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 'a' && String.unsafe_get s (pos+10) = 'c' && String.unsafe_get s (pos+11) = 'd' && String.unsafe_get s (pos+12) = '_' && String.unsafe_get s (pos+13) = 'c' && String.unsafe_get s (pos+14) = 'a' && String.unsafe_get s (pos+15) = 'l' && String.unsafe_get s (pos+16) = 'l' && String.unsafe_get s (pos+17) = 's' && String.unsafe_get s (pos+18) = '_' && String.unsafe_get s (pos+19) = 'a' && String.unsafe_get s (pos+20) = 'l' && String.unsafe_get s (pos+21) = 'l' && String.unsafe_get s (pos+22) = 'o' && String.unsafe_get s (pos+23) = 'w' && String.unsafe_get s (pos+24) = 'e' && String.unsafe_get s (pos+25) = 'd' then (
                    10
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_csi := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 1 ->
              field_formatted_csi := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 2 ->
              field_name := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 3 ->
              field_offer_id := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 4 ->
              field_offer_name := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 5 ->
              field_commitment_start_date := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 6 ->
              field_status := (
                Some (
                  (
                    read_k_Status_t
                  ) p lb
                )
              );
            | 7 ->
              field_blocking_status := (
                Some (
                  (
                    read__k_Blocking_status_t_nullable
                  ) p lb
                )
              );
            | 8 ->
              field_options := (
                Some (
                  (
                    read__k_Options_t_list
                  ) p lb
                )
              );
            | 9 ->
              field_short_number := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 10 ->
              field_incoming_acd_calls_allowed := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_bool
                  ) p lb
                )
              );
            | 11 ->
              field_presented_number := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 12 ->
              field_presented_number_raw := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            csi = (match !field_csi with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "csi");
            formatted_csi = (match !field_formatted_csi with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "formatted_csi");
            name = (match !field_name with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "name");
            offer_id = (match !field_offer_id with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "offer_id");
            offer_name = (match !field_offer_name with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "offer_name");
            commitment_start_date = (match !field_commitment_start_date with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "commitment_start_date");
            status = (match !field_status with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "status");
            blocking_status = (match !field_blocking_status with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "blocking_status");
            options = (match !field_options with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "options");
            short_number = (match !field_short_number with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "short_number");
            incoming_acd_calls_allowed = (match !field_incoming_acd_calls_allowed with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "incoming_acd_calls_allowed");
            presented_number = (match !field_presented_number with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "presented_number");
            presented_number_raw = (match !field_presented_number_raw with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "presented_number_raw");
          }
         : k_UCaaSVoIPAccount_t)
      )
)
let k_UCaaSVoIPAccount_t_of_string s =
  read_k_UCaaSVoIPAccount_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_ServiceUpgrade_t : _ -> k_ServiceUpgrade_t -> _ = (
  fun ob (x : k_ServiceUpgrade_t) ->
    Buffer.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"result\":";
    (
      Yojson.Safe.write_string
    )
      ob x.result;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"target_offer_id\":";
    (
      Yojson.Safe.write_int
    )
      ob x.target_offer_id;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"planned_date\":";
    (
      Yojson.Safe.write_string
    )
      ob x.planned_date;
    Buffer.add_char ob '}';
)
let string_of_k_ServiceUpgrade_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_ServiceUpgrade_t ob x;
  Buffer.contents ob
let read_k_ServiceUpgrade_t = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_result = ref (None) in
    let field_target_offer_id = ref (None) in
    let field_planned_date = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
          match len with
            | 6 -> (
                if String.unsafe_get s pos = 'r' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'u' && String.unsafe_get s (pos+4) = 'l' && String.unsafe_get s (pos+5) = 't' then (
                  0
                )
                else (
                  -1
                )
              )
            | 12 -> (
                if String.unsafe_get s pos = 'p' && String.unsafe_get s (pos+1) = 'l' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'n' && String.unsafe_get s (pos+4) = 'n' && String.unsafe_get s (pos+5) = 'e' && String.unsafe_get s (pos+6) = 'd' && String.unsafe_get s (pos+7) = '_' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = 'a' && String.unsafe_get s (pos+10) = 't' && String.unsafe_get s (pos+11) = 'e' then (
                  2
                )
                else (
                  -1
                )
              )
            | 15 -> (
                if String.unsafe_get s pos = 't' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'g' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'o' && String.unsafe_get s (pos+8) = 'f' && String.unsafe_get s (pos+9) = 'f' && String.unsafe_get s (pos+10) = 'e' && String.unsafe_get s (pos+11) = 'r' && String.unsafe_get s (pos+12) = '_' && String.unsafe_get s (pos+13) = 'i' && String.unsafe_get s (pos+14) = 'd' then (
                  1
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_result := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 1 ->
            field_target_offer_id := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 2 ->
            field_planned_date := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
            match len with
              | 6 -> (
                  if String.unsafe_get s pos = 'r' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'u' && String.unsafe_get s (pos+4) = 'l' && String.unsafe_get s (pos+5) = 't' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 12 -> (
                  if String.unsafe_get s pos = 'p' && String.unsafe_get s (pos+1) = 'l' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'n' && String.unsafe_get s (pos+4) = 'n' && String.unsafe_get s (pos+5) = 'e' && String.unsafe_get s (pos+6) = 'd' && String.unsafe_get s (pos+7) = '_' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = 'a' && String.unsafe_get s (pos+10) = 't' && String.unsafe_get s (pos+11) = 'e' then (
                    2
                  )
                  else (
                    -1
                  )
                )
              | 15 -> (
                  if String.unsafe_get s pos = 't' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'g' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'o' && String.unsafe_get s (pos+8) = 'f' && String.unsafe_get s (pos+9) = 'f' && String.unsafe_get s (pos+10) = 'e' && String.unsafe_get s (pos+11) = 'r' && String.unsafe_get s (pos+12) = '_' && String.unsafe_get s (pos+13) = 'i' && String.unsafe_get s (pos+14) = 'd' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_result := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 1 ->
              field_target_offer_id := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 2 ->
              field_planned_date := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            result = (match !field_result with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "result");
            target_offer_id = (match !field_target_offer_id with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "target_offer_id");
            planned_date = (match !field_planned_date with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "planned_date");
          }
         : k_ServiceUpgrade_t)
      )
)
let k_ServiceUpgrade_t_of_string s =
  read_k_ServiceUpgrade_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_Scope_t = (
  fun ob x ->
    match x with
      | `Full_access -> Buffer.add_string ob "\"full_access\""
      | `Full_access_read_only -> Buffer.add_string ob "\"full_access_read_only\""
      | `Voip_profiles_admin -> Buffer.add_string ob "\"voip_profiles_admin\""
      | `Cti_admin -> Buffer.add_string ob "\"cti_admin\""
)
let string_of_k_Scope_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_Scope_t ob x;
  Buffer.contents ob
let read_k_Scope_t = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "full_access" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Full_access
            | "full_access_read_only" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Full_access_read_only
            | "voip_profiles_admin" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Voip_profiles_admin
            | "cti_admin" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Cti_admin
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "full_access" ->
              `Full_access
            | "full_access_read_only" ->
              `Full_access_read_only
            | "voip_profiles_admin" ->
              `Voip_profiles_admin
            | "cti_admin" ->
              `Cti_admin
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let k_Scope_t_of_string s =
  read_k_Scope_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_SIPRecord_t : _ -> k_SIPRecord_t -> _ = (
  fun ob (x : k_SIPRecord_t) ->
    Buffer.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"private_ip\":";
    (
      Yojson.Safe.write_string
    )
      ob x.private_ip;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"public_ip\":";
    (
      Yojson.Safe.write_string
    )
      ob x.public_ip;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"user_agent\":";
    (
      Yojson.Safe.write_string
    )
      ob x.user_agent;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"cdi\":";
    (
      Yojson.Safe.write_string
    )
      ob x.cdi;
    Buffer.add_char ob '}';
)
let string_of_k_SIPRecord_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_SIPRecord_t ob x;
  Buffer.contents ob
let read_k_SIPRecord_t = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_private_ip = ref (None) in
    let field_public_ip = ref (None) in
    let field_user_agent = ref (None) in
    let field_cdi = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
          match len with
            | 3 -> (
                if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'd' && String.unsafe_get s (pos+2) = 'i' then (
                  3
                )
                else (
                  -1
                )
              )
            | 9 -> (
                if String.unsafe_get s pos = 'p' && String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'b' && String.unsafe_get s (pos+3) = 'l' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 'c' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'i' && String.unsafe_get s (pos+8) = 'p' then (
                  1
                )
                else (
                  -1
                )
              )
            | 10 -> (
                match String.unsafe_get s pos with
                  | 'p' -> (
                      if String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'i' && String.unsafe_get s (pos+3) = 'v' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 'e' && String.unsafe_get s (pos+7) = '_' && String.unsafe_get s (pos+8) = 'i' && String.unsafe_get s (pos+9) = 'p' then (
                        0
                      )
                      else (
                        -1
                      )
                    )
                  | 'u' -> (
                      if String.unsafe_get s (pos+1) = 's' && String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = 'r' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'a' && String.unsafe_get s (pos+6) = 'g' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'n' && String.unsafe_get s (pos+9) = 't' then (
                        2
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_private_ip := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 1 ->
            field_public_ip := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 2 ->
            field_user_agent := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 3 ->
            field_cdi := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
            match len with
              | 3 -> (
                  if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'd' && String.unsafe_get s (pos+2) = 'i' then (
                    3
                  )
                  else (
                    -1
                  )
                )
              | 9 -> (
                  if String.unsafe_get s pos = 'p' && String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'b' && String.unsafe_get s (pos+3) = 'l' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 'c' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'i' && String.unsafe_get s (pos+8) = 'p' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 10 -> (
                  match String.unsafe_get s pos with
                    | 'p' -> (
                        if String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'i' && String.unsafe_get s (pos+3) = 'v' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 'e' && String.unsafe_get s (pos+7) = '_' && String.unsafe_get s (pos+8) = 'i' && String.unsafe_get s (pos+9) = 'p' then (
                          0
                        )
                        else (
                          -1
                        )
                      )
                    | 'u' -> (
                        if String.unsafe_get s (pos+1) = 's' && String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = 'r' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'a' && String.unsafe_get s (pos+6) = 'g' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'n' && String.unsafe_get s (pos+9) = 't' then (
                          2
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_private_ip := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 1 ->
              field_public_ip := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 2 ->
              field_user_agent := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 3 ->
              field_cdi := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            private_ip = (match !field_private_ip with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "private_ip");
            public_ip = (match !field_public_ip with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "public_ip");
            user_agent = (match !field_user_agent with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "user_agent");
            cdi = (match !field_cdi with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "cdi");
          }
         : k_SIPRecord_t)
      )
)
let k_SIPRecord_t_of_string s =
  read_k_SIPRecord_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_ProvisioningTask_status_t = (
  fun ob x ->
    match x with
      | `Status_TODO -> Buffer.add_string ob "\"TODO\""
      | `Status_WAIT -> Buffer.add_string ob "\"WAIT\""
      | `Status_DONE -> Buffer.add_string ob "\"DONE\""
      | `Status_ERROR -> Buffer.add_string ob "\"ERROR\""
      | `Status_CANCEL -> Buffer.add_string ob "\"CANCEL\""
      | `Status_FAILED -> Buffer.add_string ob "\"FAILED\""
      | `Status_UNKNOWN -> Buffer.add_string ob "\"UNKNOWN\""
)
let string_of_k_ProvisioningTask_status_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_ProvisioningTask_status_t ob x;
  Buffer.contents ob
let read_k_ProvisioningTask_status_t = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "TODO" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Status_TODO
            | "WAIT" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Status_WAIT
            | "DONE" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Status_DONE
            | "ERROR" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Status_ERROR
            | "CANCEL" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Status_CANCEL
            | "FAILED" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Status_FAILED
            | "UNKNOWN" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Status_UNKNOWN
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "TODO" ->
              `Status_TODO
            | "WAIT" ->
              `Status_WAIT
            | "DONE" ->
              `Status_DONE
            | "ERROR" ->
              `Status_ERROR
            | "CANCEL" ->
              `Status_CANCEL
            | "FAILED" ->
              `Status_FAILED
            | "UNKNOWN" ->
              `Status_UNKNOWN
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let k_ProvisioningTask_status_t_of_string s =
  read_k_ProvisioningTask_status_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_ProvisioningTask_t : _ -> k_ProvisioningTask_t -> _ = (
  fun ob (x : k_ProvisioningTask_t) ->
    Buffer.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"action\":";
    (
      Yojson.Safe.write_string
    )
      ob x.action;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"description\":";
    (
      Yojson.Safe.write_string
    )
      ob x.description;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"status\":";
    (
      write_k_ProvisioningTask_status_t
    )
      ob x.status;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"creation_date\":";
    (
      Yojson.Safe.write_string
    )
      ob x.creation_date;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"planned_date\":";
    (
      Yojson.Safe.write_string
    )
      ob x.planned_date;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"execution_date\":";
    (
      Yojson.Safe.write_string
    )
      ob x.execution_date;
    Buffer.add_char ob '}';
)
let string_of_k_ProvisioningTask_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_ProvisioningTask_t ob x;
  Buffer.contents ob
let read_k_ProvisioningTask_t = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_action = ref (None) in
    let field_description = ref (None) in
    let field_status = ref (None) in
    let field_creation_date = ref (None) in
    let field_planned_date = ref (None) in
    let field_execution_date = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
          match len with
            | 6 -> (
                match String.unsafe_get s pos with
                  | 'a' -> (
                      if String.unsafe_get s (pos+1) = 'c' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'o' && String.unsafe_get s (pos+5) = 'n' then (
                        0
                      )
                      else (
                        -1
                      )
                    )
                  | 's' -> (
                      if String.unsafe_get s (pos+1) = 't' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'u' && String.unsafe_get s (pos+5) = 's' then (
                        2
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 11 -> (
                if String.unsafe_get s pos = 'd' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'p' && String.unsafe_get s (pos+7) = 't' && String.unsafe_get s (pos+8) = 'i' && String.unsafe_get s (pos+9) = 'o' && String.unsafe_get s (pos+10) = 'n' then (
                  1
                )
                else (
                  -1
                )
              )
            | 12 -> (
                if String.unsafe_get s pos = 'p' && String.unsafe_get s (pos+1) = 'l' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'n' && String.unsafe_get s (pos+4) = 'n' && String.unsafe_get s (pos+5) = 'e' && String.unsafe_get s (pos+6) = 'd' && String.unsafe_get s (pos+7) = '_' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = 'a' && String.unsafe_get s (pos+10) = 't' && String.unsafe_get s (pos+11) = 'e' then (
                  4
                )
                else (
                  -1
                )
              )
            | 13 -> (
                if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = 'a' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'o' && String.unsafe_get s (pos+7) = 'n' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 'd' && String.unsafe_get s (pos+10) = 'a' && String.unsafe_get s (pos+11) = 't' && String.unsafe_get s (pos+12) = 'e' then (
                  3
                )
                else (
                  -1
                )
              )
            | 14 -> (
                if String.unsafe_get s pos = 'e' && String.unsafe_get s (pos+1) = 'x' && String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'u' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'o' && String.unsafe_get s (pos+8) = 'n' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'd' && String.unsafe_get s (pos+11) = 'a' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 'e' then (
                  5
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_action := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 1 ->
            field_description := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 2 ->
            field_status := (
              Some (
                (
                  read_k_ProvisioningTask_status_t
                ) p lb
              )
            );
          | 3 ->
            field_creation_date := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 4 ->
            field_planned_date := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 5 ->
            field_execution_date := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
            match len with
              | 6 -> (
                  match String.unsafe_get s pos with
                    | 'a' -> (
                        if String.unsafe_get s (pos+1) = 'c' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'o' && String.unsafe_get s (pos+5) = 'n' then (
                          0
                        )
                        else (
                          -1
                        )
                      )
                    | 's' -> (
                        if String.unsafe_get s (pos+1) = 't' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'u' && String.unsafe_get s (pos+5) = 's' then (
                          2
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 11 -> (
                  if String.unsafe_get s pos = 'd' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'p' && String.unsafe_get s (pos+7) = 't' && String.unsafe_get s (pos+8) = 'i' && String.unsafe_get s (pos+9) = 'o' && String.unsafe_get s (pos+10) = 'n' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 12 -> (
                  if String.unsafe_get s pos = 'p' && String.unsafe_get s (pos+1) = 'l' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'n' && String.unsafe_get s (pos+4) = 'n' && String.unsafe_get s (pos+5) = 'e' && String.unsafe_get s (pos+6) = 'd' && String.unsafe_get s (pos+7) = '_' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = 'a' && String.unsafe_get s (pos+10) = 't' && String.unsafe_get s (pos+11) = 'e' then (
                    4
                  )
                  else (
                    -1
                  )
                )
              | 13 -> (
                  if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = 'a' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'o' && String.unsafe_get s (pos+7) = 'n' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 'd' && String.unsafe_get s (pos+10) = 'a' && String.unsafe_get s (pos+11) = 't' && String.unsafe_get s (pos+12) = 'e' then (
                    3
                  )
                  else (
                    -1
                  )
                )
              | 14 -> (
                  if String.unsafe_get s pos = 'e' && String.unsafe_get s (pos+1) = 'x' && String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'u' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'o' && String.unsafe_get s (pos+8) = 'n' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'd' && String.unsafe_get s (pos+11) = 'a' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 'e' then (
                    5
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_action := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 1 ->
              field_description := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 2 ->
              field_status := (
                Some (
                  (
                    read_k_ProvisioningTask_status_t
                  ) p lb
                )
              );
            | 3 ->
              field_creation_date := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 4 ->
              field_planned_date := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 5 ->
              field_execution_date := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            action = (match !field_action with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "action");
            description = (match !field_description with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "description");
            status = (match !field_status with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "status");
            creation_date = (match !field_creation_date with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "creation_date");
            planned_date = (match !field_planned_date with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "planned_date");
            execution_date = (match !field_execution_date with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "execution_date");
          }
         : k_ProvisioningTask_t)
      )
)
let k_ProvisioningTask_t_of_string s =
  read_k_ProvisioningTask_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_Profile_t : _ -> k_Profile_t -> _ = (
  fun ob (x : k_Profile_t) ->
    Buffer.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"identifier\":";
    (
      Yojson.Safe.write_int
    )
      ob x.identifier;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"name\":";
    (
      Yojson.Safe.write_string
    )
      ob x.name;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"forced\":";
    (
      Yojson.Safe.write_bool
    )
      ob x.forced;
    Buffer.add_char ob '}';
)
let string_of_k_Profile_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_Profile_t ob x;
  Buffer.contents ob
let read_k_Profile_t = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_identifier = ref (None) in
    let field_name = ref (None) in
    let field_forced = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
          match len with
            | 4 -> (
                if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                  1
                )
                else (
                  -1
                )
              )
            | 6 -> (
                if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'd' then (
                  2
                )
                else (
                  -1
                )
              )
            | 10 -> (
                if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 'd' && String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = 'n' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'f' && String.unsafe_get s (pos+7) = 'i' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = 'r' then (
                  0
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_identifier := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 1 ->
            field_name := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 2 ->
            field_forced := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_bool
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
            match len with
              | 4 -> (
                  if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 6 -> (
                  if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'd' then (
                    2
                  )
                  else (
                    -1
                  )
                )
              | 10 -> (
                  if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 'd' && String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = 'n' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'f' && String.unsafe_get s (pos+7) = 'i' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = 'r' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_identifier := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 1 ->
              field_name := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 2 ->
              field_forced := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_bool
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            identifier = (match !field_identifier with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "identifier");
            name = (match !field_name with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "name");
            forced = (match !field_forced with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "forced");
          }
         : k_Profile_t)
      )
)
let k_Profile_t_of_string s =
  read_k_Profile_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_Offer_t : _ -> k_Offer_t -> _ = (
  fun ob (x : k_Offer_t) ->
    Buffer.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"id\":";
    (
      Yojson.Safe.write_int
    )
      ob x.id;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"name\":";
    (
      Yojson.Safe.write_string
    )
      ob x.name;
    Buffer.add_char ob '}';
)
let string_of_k_Offer_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_Offer_t ob x;
  Buffer.contents ob
let read_k_Offer_t = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_id = ref (None) in
    let field_name = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
          match len with
            | 2 -> (
                if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 'd' then (
                  0
                )
                else (
                  -1
                )
              )
            | 4 -> (
                if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                  1
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_id := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 1 ->
            field_name := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
            match len with
              | 2 -> (
                  if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 'd' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 4 -> (
                  if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_id := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 1 ->
              field_name := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            id = (match !field_id with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "id");
            name = (match !field_name with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "name");
          }
         : k_Offer_t)
      )
)
let k_Offer_t_of_string s =
  read_k_Offer_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_Number_t : _ -> k_Number_t -> _ = (
  fun ob (x : k_Number_t) ->
    Buffer.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"number\":";
    (
      Yojson.Safe.write_string
    )
      ob x.number;
    Buffer.add_char ob '}';
)
let string_of_k_Number_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_Number_t ob x;
  Buffer.contents ob
let read_k_Number_t = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_number = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
          if len = 6 && String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'b' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'r' then (
            0
          )
          else (
            -1
          )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_number := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
            if len = 6 && String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'b' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'r' then (
              0
            )
            else (
              -1
            )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_number := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            number = (match !field_number with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "number");
          }
         : k_Number_t)
      )
)
let k_Number_t_of_string s =
  read_k_Number_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_NumberTranslation_t : _ -> k_NumberTranslation_t -> _ = (
  fun ob (x : k_NumberTranslation_t) ->
    Buffer.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"csi\":";
    (
      Yojson.Safe.write_int
    )
      ob x.csi;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"formatted_csi\":";
    (
      Yojson.Safe.write_string
    )
      ob x.formatted_csi;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"name\":";
    (
      Yojson.Safe.write_string
    )
      ob x.name;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"offer_id\":";
    (
      Yojson.Safe.write_int
    )
      ob x.offer_id;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"offer_name\":";
    (
      Yojson.Safe.write_string
    )
      ob x.offer_name;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"commitment_start_date\":";
    (
      Yojson.Safe.write_string
    )
      ob x.commitment_start_date;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"status\":";
    (
      write_k_Status_t
    )
      ob x.status;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"blocking_status\":";
    (
      write__k_Blocking_status_t_nullable
    )
      ob x.blocking_status;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"options\":";
    (
      write__k_Options_t_list
    )
      ob x.options;
    Buffer.add_char ob '}';
)
let string_of_k_NumberTranslation_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_NumberTranslation_t ob x;
  Buffer.contents ob
let read_k_NumberTranslation_t = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_csi = ref (None) in
    let field_formatted_csi = ref (None) in
    let field_name = ref (None) in
    let field_offer_id = ref (None) in
    let field_offer_name = ref (None) in
    let field_commitment_start_date = ref (None) in
    let field_status = ref (None) in
    let field_blocking_status = ref (None) in
    let field_options = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
          match len with
            | 3 -> (
                if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 's' && String.unsafe_get s (pos+2) = 'i' then (
                  0
                )
                else (
                  -1
                )
              )
            | 4 -> (
                if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                  2
                )
                else (
                  -1
                )
              )
            | 6 -> (
                if String.unsafe_get s pos = 's' && String.unsafe_get s (pos+1) = 't' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'u' && String.unsafe_get s (pos+5) = 's' then (
                  6
                )
                else (
                  -1
                )
              )
            | 7 -> (
                if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'p' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'o' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 's' then (
                  8
                )
                else (
                  -1
                )
              )
            | 8 -> (
                if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'f' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'd' then (
                  3
                )
                else (
                  -1
                )
              )
            | 10 -> (
                if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'f' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'a' && String.unsafe_get s (pos+8) = 'm' && String.unsafe_get s (pos+9) = 'e' then (
                  4
                )
                else (
                  -1
                )
              )
            | 13 -> (
                if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'c' && String.unsafe_get s (pos+11) = 's' && String.unsafe_get s (pos+12) = 'i' then (
                  1
                )
                else (
                  -1
                )
              )
            | 15 -> (
                if String.unsafe_get s pos = 'b' && String.unsafe_get s (pos+1) = 'l' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'k' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'g' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 't' && String.unsafe_get s (pos+11) = 'a' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 'u' && String.unsafe_get s (pos+14) = 's' then (
                  7
                )
                else (
                  -1
                )
              )
            | 21 -> (
                if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 'm' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'n' && String.unsafe_get s (pos+9) = 't' && String.unsafe_get s (pos+10) = '_' && String.unsafe_get s (pos+11) = 's' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 'a' && String.unsafe_get s (pos+14) = 'r' && String.unsafe_get s (pos+15) = 't' && String.unsafe_get s (pos+16) = '_' && String.unsafe_get s (pos+17) = 'd' && String.unsafe_get s (pos+18) = 'a' && String.unsafe_get s (pos+19) = 't' && String.unsafe_get s (pos+20) = 'e' then (
                  5
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_csi := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 1 ->
            field_formatted_csi := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 2 ->
            field_name := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 3 ->
            field_offer_id := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 4 ->
            field_offer_name := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 5 ->
            field_commitment_start_date := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 6 ->
            field_status := (
              Some (
                (
                  read_k_Status_t
                ) p lb
              )
            );
          | 7 ->
            field_blocking_status := (
              Some (
                (
                  read__k_Blocking_status_t_nullable
                ) p lb
              )
            );
          | 8 ->
            field_options := (
              Some (
                (
                  read__k_Options_t_list
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
            match len with
              | 3 -> (
                  if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 's' && String.unsafe_get s (pos+2) = 'i' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 4 -> (
                  if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                    2
                  )
                  else (
                    -1
                  )
                )
              | 6 -> (
                  if String.unsafe_get s pos = 's' && String.unsafe_get s (pos+1) = 't' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'u' && String.unsafe_get s (pos+5) = 's' then (
                    6
                  )
                  else (
                    -1
                  )
                )
              | 7 -> (
                  if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'p' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'o' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 's' then (
                    8
                  )
                  else (
                    -1
                  )
                )
              | 8 -> (
                  if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'f' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'd' then (
                    3
                  )
                  else (
                    -1
                  )
                )
              | 10 -> (
                  if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'f' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'a' && String.unsafe_get s (pos+8) = 'm' && String.unsafe_get s (pos+9) = 'e' then (
                    4
                  )
                  else (
                    -1
                  )
                )
              | 13 -> (
                  if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'c' && String.unsafe_get s (pos+11) = 's' && String.unsafe_get s (pos+12) = 'i' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 15 -> (
                  if String.unsafe_get s pos = 'b' && String.unsafe_get s (pos+1) = 'l' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'k' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'g' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 't' && String.unsafe_get s (pos+11) = 'a' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 'u' && String.unsafe_get s (pos+14) = 's' then (
                    7
                  )
                  else (
                    -1
                  )
                )
              | 21 -> (
                  if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 'm' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'n' && String.unsafe_get s (pos+9) = 't' && String.unsafe_get s (pos+10) = '_' && String.unsafe_get s (pos+11) = 's' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 'a' && String.unsafe_get s (pos+14) = 'r' && String.unsafe_get s (pos+15) = 't' && String.unsafe_get s (pos+16) = '_' && String.unsafe_get s (pos+17) = 'd' && String.unsafe_get s (pos+18) = 'a' && String.unsafe_get s (pos+19) = 't' && String.unsafe_get s (pos+20) = 'e' then (
                    5
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_csi := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 1 ->
              field_formatted_csi := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 2 ->
              field_name := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 3 ->
              field_offer_id := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 4 ->
              field_offer_name := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 5 ->
              field_commitment_start_date := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 6 ->
              field_status := (
                Some (
                  (
                    read_k_Status_t
                  ) p lb
                )
              );
            | 7 ->
              field_blocking_status := (
                Some (
                  (
                    read__k_Blocking_status_t_nullable
                  ) p lb
                )
              );
            | 8 ->
              field_options := (
                Some (
                  (
                    read__k_Options_t_list
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            csi = (match !field_csi with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "csi");
            formatted_csi = (match !field_formatted_csi with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "formatted_csi");
            name = (match !field_name with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "name");
            offer_id = (match !field_offer_id with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "offer_id");
            offer_name = (match !field_offer_name with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "offer_name");
            commitment_start_date = (match !field_commitment_start_date with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "commitment_start_date");
            status = (match !field_status with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "status");
            blocking_status = (match !field_blocking_status with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "blocking_status");
            options = (match !field_options with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "options");
          }
         : k_NumberTranslation_t)
      )
)
let k_NumberTranslation_t_of_string s =
  read_k_NumberTranslation_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_MobileAccount_t : _ -> k_MobileAccount_t -> _ = (
  fun ob (x : k_MobileAccount_t) ->
    Buffer.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"csi\":";
    (
      Yojson.Safe.write_int
    )
      ob x.csi;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"formatted_csi\":";
    (
      Yojson.Safe.write_string
    )
      ob x.formatted_csi;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"name\":";
    (
      Yojson.Safe.write_string
    )
      ob x.name;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"offer_id\":";
    (
      Yojson.Safe.write_int
    )
      ob x.offer_id;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"offer_name\":";
    (
      Yojson.Safe.write_string
    )
      ob x.offer_name;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"commitment_start_date\":";
    (
      Yojson.Safe.write_string
    )
      ob x.commitment_start_date;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"status\":";
    (
      write_k_Status_t
    )
      ob x.status;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"blocking_status\":";
    (
      write__k_Blocking_status_t_nullable
    )
      ob x.blocking_status;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"options\":";
    (
      write__k_Options_t_list
    )
      ob x.options;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"incoming_acd_calls_allowed\":";
    (
      Yojson.Safe.write_bool
    )
      ob x.incoming_acd_calls_allowed;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"presented_number\":";
    (
      Yojson.Safe.write_string
    )
      ob x.presented_number;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"presented_number_raw\":";
    (
      Yojson.Safe.write_string
    )
      ob x.presented_number_raw;
    Buffer.add_char ob '}';
)
let string_of_k_MobileAccount_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_MobileAccount_t ob x;
  Buffer.contents ob
let read_k_MobileAccount_t = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_csi = ref (None) in
    let field_formatted_csi = ref (None) in
    let field_name = ref (None) in
    let field_offer_id = ref (None) in
    let field_offer_name = ref (None) in
    let field_commitment_start_date = ref (None) in
    let field_status = ref (None) in
    let field_blocking_status = ref (None) in
    let field_options = ref (None) in
    let field_incoming_acd_calls_allowed = ref (None) in
    let field_presented_number = ref (None) in
    let field_presented_number_raw = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
          match len with
            | 3 -> (
                if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 's' && String.unsafe_get s (pos+2) = 'i' then (
                  0
                )
                else (
                  -1
                )
              )
            | 4 -> (
                if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                  2
                )
                else (
                  -1
                )
              )
            | 6 -> (
                if String.unsafe_get s pos = 's' && String.unsafe_get s (pos+1) = 't' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'u' && String.unsafe_get s (pos+5) = 's' then (
                  6
                )
                else (
                  -1
                )
              )
            | 7 -> (
                if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'p' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'o' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 's' then (
                  8
                )
                else (
                  -1
                )
              )
            | 8 -> (
                if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'f' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'd' then (
                  3
                )
                else (
                  -1
                )
              )
            | 10 -> (
                if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'f' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'a' && String.unsafe_get s (pos+8) = 'm' && String.unsafe_get s (pos+9) = 'e' then (
                  4
                )
                else (
                  -1
                )
              )
            | 13 -> (
                if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'c' && String.unsafe_get s (pos+11) = 's' && String.unsafe_get s (pos+12) = 'i' then (
                  1
                )
                else (
                  -1
                )
              )
            | 15 -> (
                if String.unsafe_get s pos = 'b' && String.unsafe_get s (pos+1) = 'l' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'k' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'g' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 't' && String.unsafe_get s (pos+11) = 'a' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 'u' && String.unsafe_get s (pos+14) = 's' then (
                  7
                )
                else (
                  -1
                )
              )
            | 16 -> (
                if String.unsafe_get s pos = 'p' && String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = 's' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'n' && String.unsafe_get s (pos+11) = 'u' && String.unsafe_get s (pos+12) = 'm' && String.unsafe_get s (pos+13) = 'b' && String.unsafe_get s (pos+14) = 'e' && String.unsafe_get s (pos+15) = 'r' then (
                  10
                )
                else (
                  -1
                )
              )
            | 20 -> (
                if String.unsafe_get s pos = 'p' && String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = 's' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'n' && String.unsafe_get s (pos+11) = 'u' && String.unsafe_get s (pos+12) = 'm' && String.unsafe_get s (pos+13) = 'b' && String.unsafe_get s (pos+14) = 'e' && String.unsafe_get s (pos+15) = 'r' && String.unsafe_get s (pos+16) = '_' && String.unsafe_get s (pos+17) = 'r' && String.unsafe_get s (pos+18) = 'a' && String.unsafe_get s (pos+19) = 'w' then (
                  11
                )
                else (
                  -1
                )
              )
            | 21 -> (
                if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 'm' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'n' && String.unsafe_get s (pos+9) = 't' && String.unsafe_get s (pos+10) = '_' && String.unsafe_get s (pos+11) = 's' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 'a' && String.unsafe_get s (pos+14) = 'r' && String.unsafe_get s (pos+15) = 't' && String.unsafe_get s (pos+16) = '_' && String.unsafe_get s (pos+17) = 'd' && String.unsafe_get s (pos+18) = 'a' && String.unsafe_get s (pos+19) = 't' && String.unsafe_get s (pos+20) = 'e' then (
                  5
                )
                else (
                  -1
                )
              )
            | 26 -> (
                if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 'c' && String.unsafe_get s (pos+3) = 'o' && String.unsafe_get s (pos+4) = 'm' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'g' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 'a' && String.unsafe_get s (pos+10) = 'c' && String.unsafe_get s (pos+11) = 'd' && String.unsafe_get s (pos+12) = '_' && String.unsafe_get s (pos+13) = 'c' && String.unsafe_get s (pos+14) = 'a' && String.unsafe_get s (pos+15) = 'l' && String.unsafe_get s (pos+16) = 'l' && String.unsafe_get s (pos+17) = 's' && String.unsafe_get s (pos+18) = '_' && String.unsafe_get s (pos+19) = 'a' && String.unsafe_get s (pos+20) = 'l' && String.unsafe_get s (pos+21) = 'l' && String.unsafe_get s (pos+22) = 'o' && String.unsafe_get s (pos+23) = 'w' && String.unsafe_get s (pos+24) = 'e' && String.unsafe_get s (pos+25) = 'd' then (
                  9
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_csi := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 1 ->
            field_formatted_csi := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 2 ->
            field_name := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 3 ->
            field_offer_id := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 4 ->
            field_offer_name := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 5 ->
            field_commitment_start_date := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 6 ->
            field_status := (
              Some (
                (
                  read_k_Status_t
                ) p lb
              )
            );
          | 7 ->
            field_blocking_status := (
              Some (
                (
                  read__k_Blocking_status_t_nullable
                ) p lb
              )
            );
          | 8 ->
            field_options := (
              Some (
                (
                  read__k_Options_t_list
                ) p lb
              )
            );
          | 9 ->
            field_incoming_acd_calls_allowed := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_bool
                ) p lb
              )
            );
          | 10 ->
            field_presented_number := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 11 ->
            field_presented_number_raw := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
            match len with
              | 3 -> (
                  if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 's' && String.unsafe_get s (pos+2) = 'i' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 4 -> (
                  if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                    2
                  )
                  else (
                    -1
                  )
                )
              | 6 -> (
                  if String.unsafe_get s pos = 's' && String.unsafe_get s (pos+1) = 't' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'u' && String.unsafe_get s (pos+5) = 's' then (
                    6
                  )
                  else (
                    -1
                  )
                )
              | 7 -> (
                  if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'p' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'o' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 's' then (
                    8
                  )
                  else (
                    -1
                  )
                )
              | 8 -> (
                  if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'f' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'd' then (
                    3
                  )
                  else (
                    -1
                  )
                )
              | 10 -> (
                  if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'f' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'a' && String.unsafe_get s (pos+8) = 'm' && String.unsafe_get s (pos+9) = 'e' then (
                    4
                  )
                  else (
                    -1
                  )
                )
              | 13 -> (
                  if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'c' && String.unsafe_get s (pos+11) = 's' && String.unsafe_get s (pos+12) = 'i' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 15 -> (
                  if String.unsafe_get s pos = 'b' && String.unsafe_get s (pos+1) = 'l' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'k' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'g' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 't' && String.unsafe_get s (pos+11) = 'a' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 'u' && String.unsafe_get s (pos+14) = 's' then (
                    7
                  )
                  else (
                    -1
                  )
                )
              | 16 -> (
                  if String.unsafe_get s pos = 'p' && String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = 's' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'n' && String.unsafe_get s (pos+11) = 'u' && String.unsafe_get s (pos+12) = 'm' && String.unsafe_get s (pos+13) = 'b' && String.unsafe_get s (pos+14) = 'e' && String.unsafe_get s (pos+15) = 'r' then (
                    10
                  )
                  else (
                    -1
                  )
                )
              | 20 -> (
                  if String.unsafe_get s pos = 'p' && String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = 's' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'n' && String.unsafe_get s (pos+11) = 'u' && String.unsafe_get s (pos+12) = 'm' && String.unsafe_get s (pos+13) = 'b' && String.unsafe_get s (pos+14) = 'e' && String.unsafe_get s (pos+15) = 'r' && String.unsafe_get s (pos+16) = '_' && String.unsafe_get s (pos+17) = 'r' && String.unsafe_get s (pos+18) = 'a' && String.unsafe_get s (pos+19) = 'w' then (
                    11
                  )
                  else (
                    -1
                  )
                )
              | 21 -> (
                  if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 'm' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'n' && String.unsafe_get s (pos+9) = 't' && String.unsafe_get s (pos+10) = '_' && String.unsafe_get s (pos+11) = 's' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 'a' && String.unsafe_get s (pos+14) = 'r' && String.unsafe_get s (pos+15) = 't' && String.unsafe_get s (pos+16) = '_' && String.unsafe_get s (pos+17) = 'd' && String.unsafe_get s (pos+18) = 'a' && String.unsafe_get s (pos+19) = 't' && String.unsafe_get s (pos+20) = 'e' then (
                    5
                  )
                  else (
                    -1
                  )
                )
              | 26 -> (
                  if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 'c' && String.unsafe_get s (pos+3) = 'o' && String.unsafe_get s (pos+4) = 'm' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'g' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 'a' && String.unsafe_get s (pos+10) = 'c' && String.unsafe_get s (pos+11) = 'd' && String.unsafe_get s (pos+12) = '_' && String.unsafe_get s (pos+13) = 'c' && String.unsafe_get s (pos+14) = 'a' && String.unsafe_get s (pos+15) = 'l' && String.unsafe_get s (pos+16) = 'l' && String.unsafe_get s (pos+17) = 's' && String.unsafe_get s (pos+18) = '_' && String.unsafe_get s (pos+19) = 'a' && String.unsafe_get s (pos+20) = 'l' && String.unsafe_get s (pos+21) = 'l' && String.unsafe_get s (pos+22) = 'o' && String.unsafe_get s (pos+23) = 'w' && String.unsafe_get s (pos+24) = 'e' && String.unsafe_get s (pos+25) = 'd' then (
                    9
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_csi := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 1 ->
              field_formatted_csi := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 2 ->
              field_name := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 3 ->
              field_offer_id := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 4 ->
              field_offer_name := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 5 ->
              field_commitment_start_date := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 6 ->
              field_status := (
                Some (
                  (
                    read_k_Status_t
                  ) p lb
                )
              );
            | 7 ->
              field_blocking_status := (
                Some (
                  (
                    read__k_Blocking_status_t_nullable
                  ) p lb
                )
              );
            | 8 ->
              field_options := (
                Some (
                  (
                    read__k_Options_t_list
                  ) p lb
                )
              );
            | 9 ->
              field_incoming_acd_calls_allowed := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_bool
                  ) p lb
                )
              );
            | 10 ->
              field_presented_number := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 11 ->
              field_presented_number_raw := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            csi = (match !field_csi with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "csi");
            formatted_csi = (match !field_formatted_csi with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "formatted_csi");
            name = (match !field_name with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "name");
            offer_id = (match !field_offer_id with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "offer_id");
            offer_name = (match !field_offer_name with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "offer_name");
            commitment_start_date = (match !field_commitment_start_date with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "commitment_start_date");
            status = (match !field_status with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "status");
            blocking_status = (match !field_blocking_status with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "blocking_status");
            options = (match !field_options with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "options");
            incoming_acd_calls_allowed = (match !field_incoming_acd_calls_allowed with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "incoming_acd_calls_allowed");
            presented_number = (match !field_presented_number with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "presented_number");
            presented_number_raw = (match !field_presented_number_raw with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "presented_number_raw");
          }
         : k_MobileAccount_t)
      )
)
let k_MobileAccount_t_of_string s =
  read_k_MobileAccount_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_MinutePlanStatistic_t : _ -> k_MinutePlanStatistic_t -> _ = (
  fun ob (x : k_MinutePlanStatistic_t) ->
    Buffer.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"unit\":";
    (
      write_k_Unit_t
    )
      ob x.unit;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"total\":";
    (
      Yojson.Safe.write_int
    )
      ob x.total;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"remaining\":";
    (
      Yojson.Safe.write_int
    )
      ob x.remaining;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"description\":";
    (
      Yojson.Safe.write_string
    )
      ob x.description;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"last_usage_ts\":";
    (
      Yojson.Safe.write_int
    )
      ob x.last_usage_ts;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"last_update_ts\":";
    (
      Yojson.Safe.write_int
    )
      ob x.last_update_ts;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"start_ts\":";
    (
      Yojson.Safe.write_int
    )
      ob x.start_ts;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"end_ts\":";
    (
      Yojson.Safe.write_int
    )
      ob x.end_ts;
    Buffer.add_char ob '}';
)
let string_of_k_MinutePlanStatistic_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_MinutePlanStatistic_t ob x;
  Buffer.contents ob
let read_k_MinutePlanStatistic_t = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_unit = ref (None) in
    let field_total = ref (None) in
    let field_remaining = ref (None) in
    let field_description = ref (None) in
    let field_last_usage_ts = ref (None) in
    let field_last_update_ts = ref (None) in
    let field_start_ts = ref (None) in
    let field_end_ts = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
          match len with
            | 4 -> (
                if String.unsafe_get s pos = 'u' && String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 'i' && String.unsafe_get s (pos+3) = 't' then (
                  0
                )
                else (
                  -1
                )
              )
            | 5 -> (
                if String.unsafe_get s pos = 't' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'a' && String.unsafe_get s (pos+4) = 'l' then (
                  1
                )
                else (
                  -1
                )
              )
            | 6 -> (
                if String.unsafe_get s pos = 'e' && String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 'd' && String.unsafe_get s (pos+3) = '_' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 's' then (
                  7
                )
                else (
                  -1
                )
              )
            | 8 -> (
                if String.unsafe_get s pos = 's' && String.unsafe_get s (pos+1) = 't' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'r' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 's' then (
                  6
                )
                else (
                  -1
                )
              )
            | 9 -> (
                if String.unsafe_get s pos = 'r' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'a' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'n' && String.unsafe_get s (pos+8) = 'g' then (
                  2
                )
                else (
                  -1
                )
              )
            | 11 -> (
                if String.unsafe_get s pos = 'd' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'p' && String.unsafe_get s (pos+7) = 't' && String.unsafe_get s (pos+8) = 'i' && String.unsafe_get s (pos+9) = 'o' && String.unsafe_get s (pos+10) = 'n' then (
                  3
                )
                else (
                  -1
                )
              )
            | 13 -> (
                if String.unsafe_get s pos = 'l' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'u' && String.unsafe_get s (pos+6) = 's' && String.unsafe_get s (pos+7) = 'a' && String.unsafe_get s (pos+8) = 'g' && String.unsafe_get s (pos+9) = 'e' && String.unsafe_get s (pos+10) = '_' && String.unsafe_get s (pos+11) = 't' && String.unsafe_get s (pos+12) = 's' then (
                  4
                )
                else (
                  -1
                )
              )
            | 14 -> (
                if String.unsafe_get s pos = 'l' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'u' && String.unsafe_get s (pos+6) = 'p' && String.unsafe_get s (pos+7) = 'd' && String.unsafe_get s (pos+8) = 'a' && String.unsafe_get s (pos+9) = 't' && String.unsafe_get s (pos+10) = 'e' && String.unsafe_get s (pos+11) = '_' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 's' then (
                  5
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_unit := (
              Some (
                (
                  read_k_Unit_t
                ) p lb
              )
            );
          | 1 ->
            field_total := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 2 ->
            field_remaining := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 3 ->
            field_description := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 4 ->
            field_last_usage_ts := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 5 ->
            field_last_update_ts := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 6 ->
            field_start_ts := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 7 ->
            field_end_ts := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
            match len with
              | 4 -> (
                  if String.unsafe_get s pos = 'u' && String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 'i' && String.unsafe_get s (pos+3) = 't' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 5 -> (
                  if String.unsafe_get s pos = 't' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'a' && String.unsafe_get s (pos+4) = 'l' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 6 -> (
                  if String.unsafe_get s pos = 'e' && String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 'd' && String.unsafe_get s (pos+3) = '_' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 's' then (
                    7
                  )
                  else (
                    -1
                  )
                )
              | 8 -> (
                  if String.unsafe_get s pos = 's' && String.unsafe_get s (pos+1) = 't' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'r' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 's' then (
                    6
                  )
                  else (
                    -1
                  )
                )
              | 9 -> (
                  if String.unsafe_get s pos = 'r' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'a' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'n' && String.unsafe_get s (pos+8) = 'g' then (
                    2
                  )
                  else (
                    -1
                  )
                )
              | 11 -> (
                  if String.unsafe_get s pos = 'd' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'p' && String.unsafe_get s (pos+7) = 't' && String.unsafe_get s (pos+8) = 'i' && String.unsafe_get s (pos+9) = 'o' && String.unsafe_get s (pos+10) = 'n' then (
                    3
                  )
                  else (
                    -1
                  )
                )
              | 13 -> (
                  if String.unsafe_get s pos = 'l' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'u' && String.unsafe_get s (pos+6) = 's' && String.unsafe_get s (pos+7) = 'a' && String.unsafe_get s (pos+8) = 'g' && String.unsafe_get s (pos+9) = 'e' && String.unsafe_get s (pos+10) = '_' && String.unsafe_get s (pos+11) = 't' && String.unsafe_get s (pos+12) = 's' then (
                    4
                  )
                  else (
                    -1
                  )
                )
              | 14 -> (
                  if String.unsafe_get s pos = 'l' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'u' && String.unsafe_get s (pos+6) = 'p' && String.unsafe_get s (pos+7) = 'd' && String.unsafe_get s (pos+8) = 'a' && String.unsafe_get s (pos+9) = 't' && String.unsafe_get s (pos+10) = 'e' && String.unsafe_get s (pos+11) = '_' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 's' then (
                    5
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_unit := (
                Some (
                  (
                    read_k_Unit_t
                  ) p lb
                )
              );
            | 1 ->
              field_total := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 2 ->
              field_remaining := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 3 ->
              field_description := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 4 ->
              field_last_usage_ts := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 5 ->
              field_last_update_ts := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 6 ->
              field_start_ts := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 7 ->
              field_end_ts := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            unit = (match !field_unit with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "unit");
            total = (match !field_total with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "total");
            remaining = (match !field_remaining with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "remaining");
            description = (match !field_description with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "description");
            last_usage_ts = (match !field_last_usage_ts with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "last_usage_ts");
            last_update_ts = (match !field_last_update_ts with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "last_update_ts");
            start_ts = (match !field_start_ts with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "start_ts");
            end_ts = (match !field_end_ts with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "end_ts");
          }
         : k_MinutePlanStatistic_t)
      )
)
let k_MinutePlanStatistic_t_of_string s =
  read_k_MinutePlanStatistic_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_FaxTransfer_t : _ -> k_FaxTransfer_t -> _ = (
  fun ob (x : k_FaxTransfer_t) ->
    Buffer.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"csi\":";
    (
      Yojson.Safe.write_int
    )
      ob x.csi;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"formatted_csi\":";
    (
      Yojson.Safe.write_string
    )
      ob x.formatted_csi;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"name\":";
    (
      Yojson.Safe.write_string
    )
      ob x.name;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"offer_id\":";
    (
      Yojson.Safe.write_int
    )
      ob x.offer_id;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"offer_name\":";
    (
      Yojson.Safe.write_string
    )
      ob x.offer_name;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"commitment_start_date\":";
    (
      Yojson.Safe.write_int
    )
      ob x.commitment_start_date;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"status\":";
    (
      write_k_Status_t
    )
      ob x.status;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"blocking_status\":";
    (
      write__k_Blocking_status_t_nullable
    )
      ob x.blocking_status;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"options\":";
    (
      write__k_Options_t_list
    )
      ob x.options;
    Buffer.add_char ob '}';
)
let string_of_k_FaxTransfer_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_FaxTransfer_t ob x;
  Buffer.contents ob
let read_k_FaxTransfer_t = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_csi = ref (None) in
    let field_formatted_csi = ref (None) in
    let field_name = ref (None) in
    let field_offer_id = ref (None) in
    let field_offer_name = ref (None) in
    let field_commitment_start_date = ref (None) in
    let field_status = ref (None) in
    let field_blocking_status = ref (None) in
    let field_options = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
          match len with
            | 3 -> (
                if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 's' && String.unsafe_get s (pos+2) = 'i' then (
                  0
                )
                else (
                  -1
                )
              )
            | 4 -> (
                if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                  2
                )
                else (
                  -1
                )
              )
            | 6 -> (
                if String.unsafe_get s pos = 's' && String.unsafe_get s (pos+1) = 't' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'u' && String.unsafe_get s (pos+5) = 's' then (
                  6
                )
                else (
                  -1
                )
              )
            | 7 -> (
                if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'p' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'o' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 's' then (
                  8
                )
                else (
                  -1
                )
              )
            | 8 -> (
                if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'f' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'd' then (
                  3
                )
                else (
                  -1
                )
              )
            | 10 -> (
                if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'f' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'a' && String.unsafe_get s (pos+8) = 'm' && String.unsafe_get s (pos+9) = 'e' then (
                  4
                )
                else (
                  -1
                )
              )
            | 13 -> (
                if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'c' && String.unsafe_get s (pos+11) = 's' && String.unsafe_get s (pos+12) = 'i' then (
                  1
                )
                else (
                  -1
                )
              )
            | 15 -> (
                if String.unsafe_get s pos = 'b' && String.unsafe_get s (pos+1) = 'l' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'k' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'g' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 't' && String.unsafe_get s (pos+11) = 'a' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 'u' && String.unsafe_get s (pos+14) = 's' then (
                  7
                )
                else (
                  -1
                )
              )
            | 21 -> (
                if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 'm' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'n' && String.unsafe_get s (pos+9) = 't' && String.unsafe_get s (pos+10) = '_' && String.unsafe_get s (pos+11) = 's' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 'a' && String.unsafe_get s (pos+14) = 'r' && String.unsafe_get s (pos+15) = 't' && String.unsafe_get s (pos+16) = '_' && String.unsafe_get s (pos+17) = 'd' && String.unsafe_get s (pos+18) = 'a' && String.unsafe_get s (pos+19) = 't' && String.unsafe_get s (pos+20) = 'e' then (
                  5
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_csi := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 1 ->
            field_formatted_csi := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 2 ->
            field_name := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 3 ->
            field_offer_id := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 4 ->
            field_offer_name := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 5 ->
            field_commitment_start_date := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 6 ->
            field_status := (
              Some (
                (
                  read_k_Status_t
                ) p lb
              )
            );
          | 7 ->
            field_blocking_status := (
              Some (
                (
                  read__k_Blocking_status_t_nullable
                ) p lb
              )
            );
          | 8 ->
            field_options := (
              Some (
                (
                  read__k_Options_t_list
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
            match len with
              | 3 -> (
                  if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 's' && String.unsafe_get s (pos+2) = 'i' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 4 -> (
                  if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                    2
                  )
                  else (
                    -1
                  )
                )
              | 6 -> (
                  if String.unsafe_get s pos = 's' && String.unsafe_get s (pos+1) = 't' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'u' && String.unsafe_get s (pos+5) = 's' then (
                    6
                  )
                  else (
                    -1
                  )
                )
              | 7 -> (
                  if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'p' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'o' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 's' then (
                    8
                  )
                  else (
                    -1
                  )
                )
              | 8 -> (
                  if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'f' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'd' then (
                    3
                  )
                  else (
                    -1
                  )
                )
              | 10 -> (
                  if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'f' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'a' && String.unsafe_get s (pos+8) = 'm' && String.unsafe_get s (pos+9) = 'e' then (
                    4
                  )
                  else (
                    -1
                  )
                )
              | 13 -> (
                  if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'c' && String.unsafe_get s (pos+11) = 's' && String.unsafe_get s (pos+12) = 'i' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 15 -> (
                  if String.unsafe_get s pos = 'b' && String.unsafe_get s (pos+1) = 'l' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'k' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'g' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 't' && String.unsafe_get s (pos+11) = 'a' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 'u' && String.unsafe_get s (pos+14) = 's' then (
                    7
                  )
                  else (
                    -1
                  )
                )
              | 21 -> (
                  if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 'm' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'n' && String.unsafe_get s (pos+9) = 't' && String.unsafe_get s (pos+10) = '_' && String.unsafe_get s (pos+11) = 's' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 'a' && String.unsafe_get s (pos+14) = 'r' && String.unsafe_get s (pos+15) = 't' && String.unsafe_get s (pos+16) = '_' && String.unsafe_get s (pos+17) = 'd' && String.unsafe_get s (pos+18) = 'a' && String.unsafe_get s (pos+19) = 't' && String.unsafe_get s (pos+20) = 'e' then (
                    5
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_csi := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 1 ->
              field_formatted_csi := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 2 ->
              field_name := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 3 ->
              field_offer_id := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 4 ->
              field_offer_name := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 5 ->
              field_commitment_start_date := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 6 ->
              field_status := (
                Some (
                  (
                    read_k_Status_t
                  ) p lb
                )
              );
            | 7 ->
              field_blocking_status := (
                Some (
                  (
                    read__k_Blocking_status_t_nullable
                  ) p lb
                )
              );
            | 8 ->
              field_options := (
                Some (
                  (
                    read__k_Options_t_list
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            csi = (match !field_csi with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "csi");
            formatted_csi = (match !field_formatted_csi with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "formatted_csi");
            name = (match !field_name with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "name");
            offer_id = (match !field_offer_id with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "offer_id");
            offer_name = (match !field_offer_name with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "offer_name");
            commitment_start_date = (match !field_commitment_start_date with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "commitment_start_date");
            status = (match !field_status with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "status");
            blocking_status = (match !field_blocking_status with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "blocking_status");
            options = (match !field_options with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "options");
          }
         : k_FaxTransfer_t)
      )
)
let k_FaxTransfer_t_of_string s =
  read_k_FaxTransfer_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_EmailAccount_t : _ -> k_EmailAccount_t -> _ = (
  fun ob (x : k_EmailAccount_t) ->
    Buffer.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"csi\":";
    (
      Yojson.Safe.write_int
    )
      ob x.csi;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"formatted_csi\":";
    (
      Yojson.Safe.write_string
    )
      ob x.formatted_csi;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"name\":";
    (
      Yojson.Safe.write_string
    )
      ob x.name;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"offer_id\":";
    (
      Yojson.Safe.write_int
    )
      ob x.offer_id;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"offer_name\":";
    (
      Yojson.Safe.write_string
    )
      ob x.offer_name;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"commitment_start_date\":";
    (
      Yojson.Safe.write_string
    )
      ob x.commitment_start_date;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"status\":";
    (
      write_k_Status_t
    )
      ob x.status;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"blocking_status\":";
    (
      write__k_Blocking_status_t_nullable
    )
      ob x.blocking_status;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"options\":";
    (
      write__k_Options_t_list
    )
      ob x.options;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"first_name\":";
    (
      Yojson.Safe.write_string
    )
      ob x.first_name;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"last_name\":";
    (
      Yojson.Safe.write_string
    )
      ob x.last_name;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"quota\":";
    (
      Yojson.Safe.write_int
    )
      ob x.quota;
    Buffer.add_char ob '}';
)
let string_of_k_EmailAccount_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_EmailAccount_t ob x;
  Buffer.contents ob
let read_k_EmailAccount_t = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_csi = ref (None) in
    let field_formatted_csi = ref (None) in
    let field_name = ref (None) in
    let field_offer_id = ref (None) in
    let field_offer_name = ref (None) in
    let field_commitment_start_date = ref (None) in
    let field_status = ref (None) in
    let field_blocking_status = ref (None) in
    let field_options = ref (None) in
    let field_first_name = ref (None) in
    let field_last_name = ref (None) in
    let field_quota = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
          match len with
            | 3 -> (
                if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 's' && String.unsafe_get s (pos+2) = 'i' then (
                  0
                )
                else (
                  -1
                )
              )
            | 4 -> (
                if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                  2
                )
                else (
                  -1
                )
              )
            | 5 -> (
                if String.unsafe_get s pos = 'q' && String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'a' then (
                  11
                )
                else (
                  -1
                )
              )
            | 6 -> (
                if String.unsafe_get s pos = 's' && String.unsafe_get s (pos+1) = 't' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'u' && String.unsafe_get s (pos+5) = 's' then (
                  6
                )
                else (
                  -1
                )
              )
            | 7 -> (
                if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'p' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'o' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 's' then (
                  8
                )
                else (
                  -1
                )
              )
            | 8 -> (
                if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'f' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'd' then (
                  3
                )
                else (
                  -1
                )
              )
            | 9 -> (
                if String.unsafe_get s pos = 'l' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 'a' && String.unsafe_get s (pos+7) = 'm' && String.unsafe_get s (pos+8) = 'e' then (
                  10
                )
                else (
                  -1
                )
              )
            | 10 -> (
                match String.unsafe_get s pos with
                  | 'f' -> (
                      if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 's' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'a' && String.unsafe_get s (pos+8) = 'm' && String.unsafe_get s (pos+9) = 'e' then (
                        9
                      )
                      else (
                        -1
                      )
                    )
                  | 'o' -> (
                      if String.unsafe_get s (pos+1) = 'f' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'a' && String.unsafe_get s (pos+8) = 'm' && String.unsafe_get s (pos+9) = 'e' then (
                        4
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 13 -> (
                if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'c' && String.unsafe_get s (pos+11) = 's' && String.unsafe_get s (pos+12) = 'i' then (
                  1
                )
                else (
                  -1
                )
              )
            | 15 -> (
                if String.unsafe_get s pos = 'b' && String.unsafe_get s (pos+1) = 'l' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'k' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'g' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 't' && String.unsafe_get s (pos+11) = 'a' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 'u' && String.unsafe_get s (pos+14) = 's' then (
                  7
                )
                else (
                  -1
                )
              )
            | 21 -> (
                if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 'm' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'n' && String.unsafe_get s (pos+9) = 't' && String.unsafe_get s (pos+10) = '_' && String.unsafe_get s (pos+11) = 's' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 'a' && String.unsafe_get s (pos+14) = 'r' && String.unsafe_get s (pos+15) = 't' && String.unsafe_get s (pos+16) = '_' && String.unsafe_get s (pos+17) = 'd' && String.unsafe_get s (pos+18) = 'a' && String.unsafe_get s (pos+19) = 't' && String.unsafe_get s (pos+20) = 'e' then (
                  5
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_csi := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 1 ->
            field_formatted_csi := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 2 ->
            field_name := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 3 ->
            field_offer_id := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 4 ->
            field_offer_name := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 5 ->
            field_commitment_start_date := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 6 ->
            field_status := (
              Some (
                (
                  read_k_Status_t
                ) p lb
              )
            );
          | 7 ->
            field_blocking_status := (
              Some (
                (
                  read__k_Blocking_status_t_nullable
                ) p lb
              )
            );
          | 8 ->
            field_options := (
              Some (
                (
                  read__k_Options_t_list
                ) p lb
              )
            );
          | 9 ->
            field_first_name := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 10 ->
            field_last_name := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 11 ->
            field_quota := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
            match len with
              | 3 -> (
                  if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 's' && String.unsafe_get s (pos+2) = 'i' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 4 -> (
                  if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                    2
                  )
                  else (
                    -1
                  )
                )
              | 5 -> (
                  if String.unsafe_get s pos = 'q' && String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'a' then (
                    11
                  )
                  else (
                    -1
                  )
                )
              | 6 -> (
                  if String.unsafe_get s pos = 's' && String.unsafe_get s (pos+1) = 't' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'u' && String.unsafe_get s (pos+5) = 's' then (
                    6
                  )
                  else (
                    -1
                  )
                )
              | 7 -> (
                  if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'p' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'o' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 's' then (
                    8
                  )
                  else (
                    -1
                  )
                )
              | 8 -> (
                  if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'f' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'd' then (
                    3
                  )
                  else (
                    -1
                  )
                )
              | 9 -> (
                  if String.unsafe_get s pos = 'l' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 'a' && String.unsafe_get s (pos+7) = 'm' && String.unsafe_get s (pos+8) = 'e' then (
                    10
                  )
                  else (
                    -1
                  )
                )
              | 10 -> (
                  match String.unsafe_get s pos with
                    | 'f' -> (
                        if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 's' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'a' && String.unsafe_get s (pos+8) = 'm' && String.unsafe_get s (pos+9) = 'e' then (
                          9
                        )
                        else (
                          -1
                        )
                      )
                    | 'o' -> (
                        if String.unsafe_get s (pos+1) = 'f' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'a' && String.unsafe_get s (pos+8) = 'm' && String.unsafe_get s (pos+9) = 'e' then (
                          4
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 13 -> (
                  if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'c' && String.unsafe_get s (pos+11) = 's' && String.unsafe_get s (pos+12) = 'i' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 15 -> (
                  if String.unsafe_get s pos = 'b' && String.unsafe_get s (pos+1) = 'l' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'k' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'g' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 't' && String.unsafe_get s (pos+11) = 'a' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 'u' && String.unsafe_get s (pos+14) = 's' then (
                    7
                  )
                  else (
                    -1
                  )
                )
              | 21 -> (
                  if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 'm' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'n' && String.unsafe_get s (pos+9) = 't' && String.unsafe_get s (pos+10) = '_' && String.unsafe_get s (pos+11) = 's' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 'a' && String.unsafe_get s (pos+14) = 'r' && String.unsafe_get s (pos+15) = 't' && String.unsafe_get s (pos+16) = '_' && String.unsafe_get s (pos+17) = 'd' && String.unsafe_get s (pos+18) = 'a' && String.unsafe_get s (pos+19) = 't' && String.unsafe_get s (pos+20) = 'e' then (
                    5
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_csi := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 1 ->
              field_formatted_csi := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 2 ->
              field_name := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 3 ->
              field_offer_id := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 4 ->
              field_offer_name := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 5 ->
              field_commitment_start_date := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 6 ->
              field_status := (
                Some (
                  (
                    read_k_Status_t
                  ) p lb
                )
              );
            | 7 ->
              field_blocking_status := (
                Some (
                  (
                    read__k_Blocking_status_t_nullable
                  ) p lb
                )
              );
            | 8 ->
              field_options := (
                Some (
                  (
                    read__k_Options_t_list
                  ) p lb
                )
              );
            | 9 ->
              field_first_name := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 10 ->
              field_last_name := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 11 ->
              field_quota := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            csi = (match !field_csi with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "csi");
            formatted_csi = (match !field_formatted_csi with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "formatted_csi");
            name = (match !field_name with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "name");
            offer_id = (match !field_offer_id with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "offer_id");
            offer_name = (match !field_offer_name with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "offer_name");
            commitment_start_date = (match !field_commitment_start_date with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "commitment_start_date");
            status = (match !field_status with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "status");
            blocking_status = (match !field_blocking_status with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "blocking_status");
            options = (match !field_options with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "options");
            first_name = (match !field_first_name with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "first_name");
            last_name = (match !field_last_name with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "last_name");
            quota = (match !field_quota with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "quota");
          }
         : k_EmailAccount_t)
      )
)
let k_EmailAccount_t_of_string s =
  read_k_EmailAccount_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_DirectoryContact_t : _ -> k_DirectoryContact_t -> _ = (
  fun ob (x : k_DirectoryContact_t) ->
    Buffer.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"uid\":";
    (
      Yojson.Safe.write_int
    )
      ob x.uid;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"branch_uid\":";
    (
      Yojson.Safe.write_int
    )
      ob x.branch_uid;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"name\":";
    (
      Yojson.Safe.write_string
    )
      ob x.name;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"first_name\":";
    (
      Yojson.Safe.write_string
    )
      ob x.first_name;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"default_number\":";
    (
      Yojson.Safe.write_int
    )
      ob x.default_number;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"work_number\":";
    (
      Yojson.Safe.write_int
    )
      ob x.work_number;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"work_speed_number\":";
    (
      Yojson.Safe.write_int
    )
      ob x.work_speed_number;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"mobile_number\":";
    (
      Yojson.Safe.write_string
    )
      ob x.mobile_number;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"mobile_speed_number\":";
    (
      Yojson.Safe.write_int
    )
      ob x.mobile_speed_number;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"home_number\":";
    (
      Yojson.Safe.write_string
    )
      ob x.home_number;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"home_speed_number\":";
    (
      Yojson.Safe.write_int
    )
      ob x.home_speed_number;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"email\":";
    (
      Yojson.Safe.write_string
    )
      ob x.email;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"company\":";
    (
      Yojson.Safe.write_string
    )
      ob x.company;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"job\":";
    (
      Yojson.Safe.write_string
    )
      ob x.job;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"address\":";
    (
      Yojson.Safe.write_string
    )
      ob x.address;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"zipcode\":";
    (
      Yojson.Safe.write_int
    )
      ob x.zipcode;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"city\":";
    (
      Yojson.Safe.write_string
    )
      ob x.city;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"country\":";
    (
      Yojson.Safe.write_string
    )
      ob x.country;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"base64_picture\":";
    (
      Yojson.Safe.write_string
    )
      ob x.base64_picture;
    Buffer.add_char ob '}';
)
let string_of_k_DirectoryContact_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_DirectoryContact_t ob x;
  Buffer.contents ob
let read_k_DirectoryContact_t = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_uid = ref (None) in
    let field_branch_uid = ref (None) in
    let field_name = ref (None) in
    let field_first_name = ref (None) in
    let field_default_number = ref (None) in
    let field_work_number = ref (None) in
    let field_work_speed_number = ref (None) in
    let field_mobile_number = ref (None) in
    let field_mobile_speed_number = ref (None) in
    let field_home_number = ref (None) in
    let field_home_speed_number = ref (None) in
    let field_email = ref (None) in
    let field_company = ref (None) in
    let field_job = ref (None) in
    let field_address = ref (None) in
    let field_zipcode = ref (None) in
    let field_city = ref (None) in
    let field_country = ref (None) in
    let field_base64_picture = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
          match len with
            | 3 -> (
                match String.unsafe_get s pos with
                  | 'j' -> (
                      if String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'b' then (
                        13
                      )
                      else (
                        -1
                      )
                    )
                  | 'u' -> (
                      if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'd' then (
                        0
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 4 -> (
                match String.unsafe_get s pos with
                  | 'c' -> (
                      if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'y' then (
                        16
                      )
                      else (
                        -1
                      )
                    )
                  | 'n' -> (
                      if String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                        2
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 5 -> (
                if String.unsafe_get s pos = 'e' && String.unsafe_get s (pos+1) = 'm' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'l' then (
                  11
                )
                else (
                  -1
                )
              )
            | 7 -> (
                match String.unsafe_get s pos with
                  | 'a' -> (
                      if String.unsafe_get s (pos+1) = 'd' && String.unsafe_get s (pos+2) = 'd' && String.unsafe_get s (pos+3) = 'r' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 's' && String.unsafe_get s (pos+6) = 's' then (
                        14
                      )
                      else (
                        -1
                      )
                    )
                  | 'c' -> (
                      if String.unsafe_get s (pos+1) = 'o' then (
                        match String.unsafe_get s (pos+2) with
                          | 'm' -> (
                              if String.unsafe_get s (pos+3) = 'p' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 'y' then (
                                12
                              )
                              else (
                                -1
                              )
                            )
                          | 'u' -> (
                              if String.unsafe_get s (pos+3) = 'n' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = 'y' then (
                                17
                              )
                              else (
                                -1
                              )
                            )
                          | _ -> (
                              -1
                            )
                      )
                      else (
                        -1
                      )
                    )
                  | 'z' -> (
                      if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'p' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'o' && String.unsafe_get s (pos+5) = 'd' && String.unsafe_get s (pos+6) = 'e' then (
                        15
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 10 -> (
                match String.unsafe_get s pos with
                  | 'b' -> (
                      if String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'n' && String.unsafe_get s (pos+4) = 'c' && String.unsafe_get s (pos+5) = 'h' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'u' && String.unsafe_get s (pos+8) = 'i' && String.unsafe_get s (pos+9) = 'd' then (
                        1
                      )
                      else (
                        -1
                      )
                    )
                  | 'f' -> (
                      if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 's' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'a' && String.unsafe_get s (pos+8) = 'm' && String.unsafe_get s (pos+9) = 'e' then (
                        3
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 11 -> (
                match String.unsafe_get s pos with
                  | 'h' -> (
                      if String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 'u' && String.unsafe_get s (pos+7) = 'm' && String.unsafe_get s (pos+8) = 'b' && String.unsafe_get s (pos+9) = 'e' && String.unsafe_get s (pos+10) = 'r' then (
                        9
                      )
                      else (
                        -1
                      )
                    )
                  | 'w' -> (
                      if String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'k' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 'u' && String.unsafe_get s (pos+7) = 'm' && String.unsafe_get s (pos+8) = 'b' && String.unsafe_get s (pos+9) = 'e' && String.unsafe_get s (pos+10) = 'r' then (
                        5
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 13 -> (
                if String.unsafe_get s pos = 'm' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'b' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'l' && String.unsafe_get s (pos+5) = 'e' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'n' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 'm' && String.unsafe_get s (pos+10) = 'b' && String.unsafe_get s (pos+11) = 'e' && String.unsafe_get s (pos+12) = 'r' then (
                  7
                )
                else (
                  -1
                )
              )
            | 14 -> (
                match String.unsafe_get s pos with
                  | 'b' -> (
                      if String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = '6' && String.unsafe_get s (pos+5) = '4' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'p' && String.unsafe_get s (pos+8) = 'i' && String.unsafe_get s (pos+9) = 'c' && String.unsafe_get s (pos+10) = 't' && String.unsafe_get s (pos+11) = 'u' && String.unsafe_get s (pos+12) = 'r' && String.unsafe_get s (pos+13) = 'e' then (
                        18
                      )
                      else (
                        -1
                      )
                    )
                  | 'd' -> (
                      if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'a' && String.unsafe_get s (pos+4) = 'u' && String.unsafe_get s (pos+5) = 'l' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = '_' && String.unsafe_get s (pos+8) = 'n' && String.unsafe_get s (pos+9) = 'u' && String.unsafe_get s (pos+10) = 'm' && String.unsafe_get s (pos+11) = 'b' && String.unsafe_get s (pos+12) = 'e' && String.unsafe_get s (pos+13) = 'r' then (
                        4
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 17 -> (
                match String.unsafe_get s pos with
                  | 'h' -> (
                      if String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 's' && String.unsafe_get s (pos+6) = 'p' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = 'd' && String.unsafe_get s (pos+10) = '_' && String.unsafe_get s (pos+11) = 'n' && String.unsafe_get s (pos+12) = 'u' && String.unsafe_get s (pos+13) = 'm' && String.unsafe_get s (pos+14) = 'b' && String.unsafe_get s (pos+15) = 'e' && String.unsafe_get s (pos+16) = 'r' then (
                        10
                      )
                      else (
                        -1
                      )
                    )
                  | 'w' -> (
                      if String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'k' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 's' && String.unsafe_get s (pos+6) = 'p' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = 'd' && String.unsafe_get s (pos+10) = '_' && String.unsafe_get s (pos+11) = 'n' && String.unsafe_get s (pos+12) = 'u' && String.unsafe_get s (pos+13) = 'm' && String.unsafe_get s (pos+14) = 'b' && String.unsafe_get s (pos+15) = 'e' && String.unsafe_get s (pos+16) = 'r' then (
                        6
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 19 -> (
                if String.unsafe_get s pos = 'm' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'b' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'l' && String.unsafe_get s (pos+5) = 'e' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 's' && String.unsafe_get s (pos+8) = 'p' && String.unsafe_get s (pos+9) = 'e' && String.unsafe_get s (pos+10) = 'e' && String.unsafe_get s (pos+11) = 'd' && String.unsafe_get s (pos+12) = '_' && String.unsafe_get s (pos+13) = 'n' && String.unsafe_get s (pos+14) = 'u' && String.unsafe_get s (pos+15) = 'm' && String.unsafe_get s (pos+16) = 'b' && String.unsafe_get s (pos+17) = 'e' && String.unsafe_get s (pos+18) = 'r' then (
                  8
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_uid := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 1 ->
            field_branch_uid := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 2 ->
            field_name := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 3 ->
            field_first_name := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 4 ->
            field_default_number := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 5 ->
            field_work_number := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 6 ->
            field_work_speed_number := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 7 ->
            field_mobile_number := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 8 ->
            field_mobile_speed_number := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 9 ->
            field_home_number := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 10 ->
            field_home_speed_number := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 11 ->
            field_email := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 12 ->
            field_company := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 13 ->
            field_job := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 14 ->
            field_address := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 15 ->
            field_zipcode := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 16 ->
            field_city := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 17 ->
            field_country := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 18 ->
            field_base64_picture := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
            match len with
              | 3 -> (
                  match String.unsafe_get s pos with
                    | 'j' -> (
                        if String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'b' then (
                          13
                        )
                        else (
                          -1
                        )
                      )
                    | 'u' -> (
                        if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'd' then (
                          0
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 4 -> (
                  match String.unsafe_get s pos with
                    | 'c' -> (
                        if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'y' then (
                          16
                        )
                        else (
                          -1
                        )
                      )
                    | 'n' -> (
                        if String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                          2
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 5 -> (
                  if String.unsafe_get s pos = 'e' && String.unsafe_get s (pos+1) = 'm' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'l' then (
                    11
                  )
                  else (
                    -1
                  )
                )
              | 7 -> (
                  match String.unsafe_get s pos with
                    | 'a' -> (
                        if String.unsafe_get s (pos+1) = 'd' && String.unsafe_get s (pos+2) = 'd' && String.unsafe_get s (pos+3) = 'r' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 's' && String.unsafe_get s (pos+6) = 's' then (
                          14
                        )
                        else (
                          -1
                        )
                      )
                    | 'c' -> (
                        if String.unsafe_get s (pos+1) = 'o' then (
                          match String.unsafe_get s (pos+2) with
                            | 'm' -> (
                                if String.unsafe_get s (pos+3) = 'p' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 'y' then (
                                  12
                                )
                                else (
                                  -1
                                )
                              )
                            | 'u' -> (
                                if String.unsafe_get s (pos+3) = 'n' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = 'y' then (
                                  17
                                )
                                else (
                                  -1
                                )
                              )
                            | _ -> (
                                -1
                              )
                        )
                        else (
                          -1
                        )
                      )
                    | 'z' -> (
                        if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'p' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'o' && String.unsafe_get s (pos+5) = 'd' && String.unsafe_get s (pos+6) = 'e' then (
                          15
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 10 -> (
                  match String.unsafe_get s pos with
                    | 'b' -> (
                        if String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'n' && String.unsafe_get s (pos+4) = 'c' && String.unsafe_get s (pos+5) = 'h' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'u' && String.unsafe_get s (pos+8) = 'i' && String.unsafe_get s (pos+9) = 'd' then (
                          1
                        )
                        else (
                          -1
                        )
                      )
                    | 'f' -> (
                        if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 's' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'a' && String.unsafe_get s (pos+8) = 'm' && String.unsafe_get s (pos+9) = 'e' then (
                          3
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 11 -> (
                  match String.unsafe_get s pos with
                    | 'h' -> (
                        if String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 'u' && String.unsafe_get s (pos+7) = 'm' && String.unsafe_get s (pos+8) = 'b' && String.unsafe_get s (pos+9) = 'e' && String.unsafe_get s (pos+10) = 'r' then (
                          9
                        )
                        else (
                          -1
                        )
                      )
                    | 'w' -> (
                        if String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'k' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 'u' && String.unsafe_get s (pos+7) = 'm' && String.unsafe_get s (pos+8) = 'b' && String.unsafe_get s (pos+9) = 'e' && String.unsafe_get s (pos+10) = 'r' then (
                          5
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 13 -> (
                  if String.unsafe_get s pos = 'm' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'b' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'l' && String.unsafe_get s (pos+5) = 'e' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'n' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 'm' && String.unsafe_get s (pos+10) = 'b' && String.unsafe_get s (pos+11) = 'e' && String.unsafe_get s (pos+12) = 'r' then (
                    7
                  )
                  else (
                    -1
                  )
                )
              | 14 -> (
                  match String.unsafe_get s pos with
                    | 'b' -> (
                        if String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = '6' && String.unsafe_get s (pos+5) = '4' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'p' && String.unsafe_get s (pos+8) = 'i' && String.unsafe_get s (pos+9) = 'c' && String.unsafe_get s (pos+10) = 't' && String.unsafe_get s (pos+11) = 'u' && String.unsafe_get s (pos+12) = 'r' && String.unsafe_get s (pos+13) = 'e' then (
                          18
                        )
                        else (
                          -1
                        )
                      )
                    | 'd' -> (
                        if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'a' && String.unsafe_get s (pos+4) = 'u' && String.unsafe_get s (pos+5) = 'l' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = '_' && String.unsafe_get s (pos+8) = 'n' && String.unsafe_get s (pos+9) = 'u' && String.unsafe_get s (pos+10) = 'm' && String.unsafe_get s (pos+11) = 'b' && String.unsafe_get s (pos+12) = 'e' && String.unsafe_get s (pos+13) = 'r' then (
                          4
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 17 -> (
                  match String.unsafe_get s pos with
                    | 'h' -> (
                        if String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 's' && String.unsafe_get s (pos+6) = 'p' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = 'd' && String.unsafe_get s (pos+10) = '_' && String.unsafe_get s (pos+11) = 'n' && String.unsafe_get s (pos+12) = 'u' && String.unsafe_get s (pos+13) = 'm' && String.unsafe_get s (pos+14) = 'b' && String.unsafe_get s (pos+15) = 'e' && String.unsafe_get s (pos+16) = 'r' then (
                          10
                        )
                        else (
                          -1
                        )
                      )
                    | 'w' -> (
                        if String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'k' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 's' && String.unsafe_get s (pos+6) = 'p' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = 'd' && String.unsafe_get s (pos+10) = '_' && String.unsafe_get s (pos+11) = 'n' && String.unsafe_get s (pos+12) = 'u' && String.unsafe_get s (pos+13) = 'm' && String.unsafe_get s (pos+14) = 'b' && String.unsafe_get s (pos+15) = 'e' && String.unsafe_get s (pos+16) = 'r' then (
                          6
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 19 -> (
                  if String.unsafe_get s pos = 'm' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'b' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'l' && String.unsafe_get s (pos+5) = 'e' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 's' && String.unsafe_get s (pos+8) = 'p' && String.unsafe_get s (pos+9) = 'e' && String.unsafe_get s (pos+10) = 'e' && String.unsafe_get s (pos+11) = 'd' && String.unsafe_get s (pos+12) = '_' && String.unsafe_get s (pos+13) = 'n' && String.unsafe_get s (pos+14) = 'u' && String.unsafe_get s (pos+15) = 'm' && String.unsafe_get s (pos+16) = 'b' && String.unsafe_get s (pos+17) = 'e' && String.unsafe_get s (pos+18) = 'r' then (
                    8
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_uid := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 1 ->
              field_branch_uid := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 2 ->
              field_name := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 3 ->
              field_first_name := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 4 ->
              field_default_number := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 5 ->
              field_work_number := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 6 ->
              field_work_speed_number := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 7 ->
              field_mobile_number := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 8 ->
              field_mobile_speed_number := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 9 ->
              field_home_number := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 10 ->
              field_home_speed_number := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 11 ->
              field_email := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 12 ->
              field_company := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 13 ->
              field_job := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 14 ->
              field_address := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 15 ->
              field_zipcode := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 16 ->
              field_city := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 17 ->
              field_country := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 18 ->
              field_base64_picture := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            uid = (match !field_uid with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "uid");
            branch_uid = (match !field_branch_uid with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "branch_uid");
            name = (match !field_name with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "name");
            first_name = (match !field_first_name with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "first_name");
            default_number = (match !field_default_number with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "default_number");
            work_number = (match !field_work_number with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "work_number");
            work_speed_number = (match !field_work_speed_number with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "work_speed_number");
            mobile_number = (match !field_mobile_number with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "mobile_number");
            mobile_speed_number = (match !field_mobile_speed_number with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "mobile_speed_number");
            home_number = (match !field_home_number with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "home_number");
            home_speed_number = (match !field_home_speed_number with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "home_speed_number");
            email = (match !field_email with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "email");
            company = (match !field_company with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "company");
            job = (match !field_job with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "job");
            address = (match !field_address with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "address");
            zipcode = (match !field_zipcode with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "zipcode");
            city = (match !field_city with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "city");
            country = (match !field_country with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "country");
            base64_picture = (match !field_base64_picture with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "base64_picture");
          }
         : k_DirectoryContact_t)
      )
)
let k_DirectoryContact_t_of_string s =
  read_k_DirectoryContact_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_DirectoryBranch_t : _ -> k_DirectoryBranch_t -> _ = (
  fun ob (x : k_DirectoryBranch_t) ->
    Buffer.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"uid\":";
    (
      Yojson.Safe.write_int
    )
      ob x.uid;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"parent_branch_uid\":";
    (
      Yojson.Safe.write_int
    )
      ob x.parent_branch_uid;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"name\":";
    (
      Yojson.Safe.write_string
    )
      ob x.name;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"depth\":";
    (
      Yojson.Safe.write_int
    )
      ob x.depth;
    Buffer.add_char ob '}';
)
let string_of_k_DirectoryBranch_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_DirectoryBranch_t ob x;
  Buffer.contents ob
let read_k_DirectoryBranch_t = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_uid = ref (None) in
    let field_parent_branch_uid = ref (None) in
    let field_name = ref (None) in
    let field_depth = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
          match len with
            | 3 -> (
                if String.unsafe_get s pos = 'u' && String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'd' then (
                  0
                )
                else (
                  -1
                )
              )
            | 4 -> (
                if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                  2
                )
                else (
                  -1
                )
              )
            | 5 -> (
                if String.unsafe_get s pos = 'd' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'p' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'h' then (
                  3
                )
                else (
                  -1
                )
              )
            | 17 -> (
                if String.unsafe_get s pos = 'p' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'n' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'b' && String.unsafe_get s (pos+8) = 'r' && String.unsafe_get s (pos+9) = 'a' && String.unsafe_get s (pos+10) = 'n' && String.unsafe_get s (pos+11) = 'c' && String.unsafe_get s (pos+12) = 'h' && String.unsafe_get s (pos+13) = '_' && String.unsafe_get s (pos+14) = 'u' && String.unsafe_get s (pos+15) = 'i' && String.unsafe_get s (pos+16) = 'd' then (
                  1
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_uid := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 1 ->
            field_parent_branch_uid := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 2 ->
            field_name := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 3 ->
            field_depth := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
            match len with
              | 3 -> (
                  if String.unsafe_get s pos = 'u' && String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'd' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 4 -> (
                  if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                    2
                  )
                  else (
                    -1
                  )
                )
              | 5 -> (
                  if String.unsafe_get s pos = 'd' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'p' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'h' then (
                    3
                  )
                  else (
                    -1
                  )
                )
              | 17 -> (
                  if String.unsafe_get s pos = 'p' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'n' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'b' && String.unsafe_get s (pos+8) = 'r' && String.unsafe_get s (pos+9) = 'a' && String.unsafe_get s (pos+10) = 'n' && String.unsafe_get s (pos+11) = 'c' && String.unsafe_get s (pos+12) = 'h' && String.unsafe_get s (pos+13) = '_' && String.unsafe_get s (pos+14) = 'u' && String.unsafe_get s (pos+15) = 'i' && String.unsafe_get s (pos+16) = 'd' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_uid := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 1 ->
              field_parent_branch_uid := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 2 ->
              field_name := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 3 ->
              field_depth := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            uid = (match !field_uid with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "uid");
            parent_branch_uid = (match !field_parent_branch_uid with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "parent_branch_uid");
            name = (match !field_name with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "name");
            depth = (match !field_depth with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "depth");
          }
         : k_DirectoryBranch_t)
      )
)
let k_DirectoryBranch_t_of_string s =
  read_k_DirectoryBranch_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_DataUsageStatistic_t : _ -> k_DataUsageStatistic_t -> _ = (
  fun ob (x : k_DataUsageStatistic_t) ->
    Buffer.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"id\":";
    (
      Yojson.Safe.write_int
    )
      ob x.id;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"description\":";
    (
      Yojson.Safe.write_string
    )
      ob x.description;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"unit\":";
    (
      write_k_Unit_t
    )
      ob x.unit;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"total\":";
    (
      Yojson.Safe.write_int
    )
      ob x.total;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"used\":";
    (
      Yojson.Safe.write_int
    )
      ob x.used;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"remaining\":";
    (
      Yojson.Safe.write_int
    )
      ob x.remaining;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"last_usage_ts\":";
    (
      Yojson.Safe.write_int
    )
      ob x.last_usage_ts;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"last_update_ts\":";
    (
      Yojson.Safe.write_int
    )
      ob x.last_update_ts;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"start_ts\":";
    (
      Yojson.Safe.write_int
    )
      ob x.start_ts;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"end_ts\":";
    (
      Yojson.Safe.write_int
    )
      ob x.end_ts;
    Buffer.add_char ob '}';
)
let string_of_k_DataUsageStatistic_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_DataUsageStatistic_t ob x;
  Buffer.contents ob
let read_k_DataUsageStatistic_t = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_id = ref (None) in
    let field_description = ref (None) in
    let field_unit = ref (None) in
    let field_total = ref (None) in
    let field_used = ref (None) in
    let field_remaining = ref (None) in
    let field_last_usage_ts = ref (None) in
    let field_last_update_ts = ref (None) in
    let field_start_ts = ref (None) in
    let field_end_ts = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
          match len with
            | 2 -> (
                if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 'd' then (
                  0
                )
                else (
                  -1
                )
              )
            | 4 -> (
                if String.unsafe_get s pos = 'u' then (
                  match String.unsafe_get s (pos+1) with
                    | 'n' -> (
                        if String.unsafe_get s (pos+2) = 'i' && String.unsafe_get s (pos+3) = 't' then (
                          2
                        )
                        else (
                          -1
                        )
                      )
                    | 's' -> (
                        if String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = 'd' then (
                          4
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
                else (
                  -1
                )
              )
            | 5 -> (
                if String.unsafe_get s pos = 't' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'a' && String.unsafe_get s (pos+4) = 'l' then (
                  3
                )
                else (
                  -1
                )
              )
            | 6 -> (
                if String.unsafe_get s pos = 'e' && String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 'd' && String.unsafe_get s (pos+3) = '_' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 's' then (
                  9
                )
                else (
                  -1
                )
              )
            | 8 -> (
                if String.unsafe_get s pos = 's' && String.unsafe_get s (pos+1) = 't' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'r' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 's' then (
                  8
                )
                else (
                  -1
                )
              )
            | 9 -> (
                if String.unsafe_get s pos = 'r' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'a' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'n' && String.unsafe_get s (pos+8) = 'g' then (
                  5
                )
                else (
                  -1
                )
              )
            | 11 -> (
                if String.unsafe_get s pos = 'd' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'p' && String.unsafe_get s (pos+7) = 't' && String.unsafe_get s (pos+8) = 'i' && String.unsafe_get s (pos+9) = 'o' && String.unsafe_get s (pos+10) = 'n' then (
                  1
                )
                else (
                  -1
                )
              )
            | 13 -> (
                if String.unsafe_get s pos = 'l' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'u' && String.unsafe_get s (pos+6) = 's' && String.unsafe_get s (pos+7) = 'a' && String.unsafe_get s (pos+8) = 'g' && String.unsafe_get s (pos+9) = 'e' && String.unsafe_get s (pos+10) = '_' && String.unsafe_get s (pos+11) = 't' && String.unsafe_get s (pos+12) = 's' then (
                  6
                )
                else (
                  -1
                )
              )
            | 14 -> (
                if String.unsafe_get s pos = 'l' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'u' && String.unsafe_get s (pos+6) = 'p' && String.unsafe_get s (pos+7) = 'd' && String.unsafe_get s (pos+8) = 'a' && String.unsafe_get s (pos+9) = 't' && String.unsafe_get s (pos+10) = 'e' && String.unsafe_get s (pos+11) = '_' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 's' then (
                  7
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_id := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 1 ->
            field_description := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 2 ->
            field_unit := (
              Some (
                (
                  read_k_Unit_t
                ) p lb
              )
            );
          | 3 ->
            field_total := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 4 ->
            field_used := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 5 ->
            field_remaining := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 6 ->
            field_last_usage_ts := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 7 ->
            field_last_update_ts := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 8 ->
            field_start_ts := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 9 ->
            field_end_ts := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
            match len with
              | 2 -> (
                  if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 'd' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 4 -> (
                  if String.unsafe_get s pos = 'u' then (
                    match String.unsafe_get s (pos+1) with
                      | 'n' -> (
                          if String.unsafe_get s (pos+2) = 'i' && String.unsafe_get s (pos+3) = 't' then (
                            2
                          )
                          else (
                            -1
                          )
                        )
                      | 's' -> (
                          if String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = 'd' then (
                            4
                          )
                          else (
                            -1
                          )
                        )
                      | _ -> (
                          -1
                        )
                  )
                  else (
                    -1
                  )
                )
              | 5 -> (
                  if String.unsafe_get s pos = 't' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'a' && String.unsafe_get s (pos+4) = 'l' then (
                    3
                  )
                  else (
                    -1
                  )
                )
              | 6 -> (
                  if String.unsafe_get s pos = 'e' && String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 'd' && String.unsafe_get s (pos+3) = '_' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 's' then (
                    9
                  )
                  else (
                    -1
                  )
                )
              | 8 -> (
                  if String.unsafe_get s pos = 's' && String.unsafe_get s (pos+1) = 't' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'r' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 's' then (
                    8
                  )
                  else (
                    -1
                  )
                )
              | 9 -> (
                  if String.unsafe_get s pos = 'r' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'a' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'n' && String.unsafe_get s (pos+8) = 'g' then (
                    5
                  )
                  else (
                    -1
                  )
                )
              | 11 -> (
                  if String.unsafe_get s pos = 'd' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'p' && String.unsafe_get s (pos+7) = 't' && String.unsafe_get s (pos+8) = 'i' && String.unsafe_get s (pos+9) = 'o' && String.unsafe_get s (pos+10) = 'n' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 13 -> (
                  if String.unsafe_get s pos = 'l' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'u' && String.unsafe_get s (pos+6) = 's' && String.unsafe_get s (pos+7) = 'a' && String.unsafe_get s (pos+8) = 'g' && String.unsafe_get s (pos+9) = 'e' && String.unsafe_get s (pos+10) = '_' && String.unsafe_get s (pos+11) = 't' && String.unsafe_get s (pos+12) = 's' then (
                    6
                  )
                  else (
                    -1
                  )
                )
              | 14 -> (
                  if String.unsafe_get s pos = 'l' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'u' && String.unsafe_get s (pos+6) = 'p' && String.unsafe_get s (pos+7) = 'd' && String.unsafe_get s (pos+8) = 'a' && String.unsafe_get s (pos+9) = 't' && String.unsafe_get s (pos+10) = 'e' && String.unsafe_get s (pos+11) = '_' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 's' then (
                    7
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_id := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 1 ->
              field_description := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 2 ->
              field_unit := (
                Some (
                  (
                    read_k_Unit_t
                  ) p lb
                )
              );
            | 3 ->
              field_total := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 4 ->
              field_used := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 5 ->
              field_remaining := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 6 ->
              field_last_usage_ts := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 7 ->
              field_last_update_ts := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 8 ->
              field_start_ts := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 9 ->
              field_end_ts := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            id = (match !field_id with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "id");
            description = (match !field_description with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "description");
            unit = (match !field_unit with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "unit");
            total = (match !field_total with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "total");
            used = (match !field_used with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "used");
            remaining = (match !field_remaining with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "remaining");
            last_usage_ts = (match !field_last_usage_ts with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "last_usage_ts");
            last_update_ts = (match !field_last_update_ts with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "last_update_ts");
            start_ts = (match !field_start_ts with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "start_ts");
            end_ts = (match !field_end_ts with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "end_ts");
          }
         : k_DataUsageStatistic_t)
      )
)
let k_DataUsageStatistic_t_of_string s =
  read_k_DataUsageStatistic_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_DSLAccess_t : _ -> k_DSLAccess_t -> _ = (
  fun ob (x : k_DSLAccess_t) ->
    Buffer.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"csi\":";
    (
      Yojson.Safe.write_int
    )
      ob x.csi;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"formatted_csi\":";
    (
      Yojson.Safe.write_string
    )
      ob x.formatted_csi;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"name\":";
    (
      Yojson.Safe.write_string
    )
      ob x.name;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"offer_id\":";
    (
      Yojson.Safe.write_int
    )
      ob x.offer_id;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"offer_name\":";
    (
      Yojson.Safe.write_string
    )
      ob x.offer_name;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"commitment_start_date\":";
    (
      Yojson.Safe.write_string
    )
      ob x.commitment_start_date;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"status\":";
    (
      write_k_Status_t
    )
      ob x.status;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"blocking_status\":";
    (
      write__k_Blocking_status_t_nullable
    )
      ob x.blocking_status;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"options\":";
    (
      write__k_Options_t_list
    )
      ob x.options;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"reference_number\":";
    (
      Yojson.Safe.write_int
    )
      ob x.reference_number;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"maximum_download_speed\":";
    (
      Yojson.Safe.write_int
    )
      ob x.maximum_download_speed;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"maximum_upload_speed\":";
    (
      Yojson.Safe.write_int
    )
      ob x.maximum_upload_speed;
    Buffer.add_char ob '}';
)
let string_of_k_DSLAccess_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_DSLAccess_t ob x;
  Buffer.contents ob
let read_k_DSLAccess_t = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_csi = ref (None) in
    let field_formatted_csi = ref (None) in
    let field_name = ref (None) in
    let field_offer_id = ref (None) in
    let field_offer_name = ref (None) in
    let field_commitment_start_date = ref (None) in
    let field_status = ref (None) in
    let field_blocking_status = ref (None) in
    let field_options = ref (None) in
    let field_reference_number = ref (None) in
    let field_maximum_download_speed = ref (None) in
    let field_maximum_upload_speed = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
          match len with
            | 3 -> (
                if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 's' && String.unsafe_get s (pos+2) = 'i' then (
                  0
                )
                else (
                  -1
                )
              )
            | 4 -> (
                if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                  2
                )
                else (
                  -1
                )
              )
            | 6 -> (
                if String.unsafe_get s pos = 's' && String.unsafe_get s (pos+1) = 't' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'u' && String.unsafe_get s (pos+5) = 's' then (
                  6
                )
                else (
                  -1
                )
              )
            | 7 -> (
                if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'p' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'o' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 's' then (
                  8
                )
                else (
                  -1
                )
              )
            | 8 -> (
                if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'f' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'd' then (
                  3
                )
                else (
                  -1
                )
              )
            | 10 -> (
                if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'f' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'a' && String.unsafe_get s (pos+8) = 'm' && String.unsafe_get s (pos+9) = 'e' then (
                  4
                )
                else (
                  -1
                )
              )
            | 13 -> (
                if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'c' && String.unsafe_get s (pos+11) = 's' && String.unsafe_get s (pos+12) = 'i' then (
                  1
                )
                else (
                  -1
                )
              )
            | 15 -> (
                if String.unsafe_get s pos = 'b' && String.unsafe_get s (pos+1) = 'l' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'k' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'g' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 't' && String.unsafe_get s (pos+11) = 'a' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 'u' && String.unsafe_get s (pos+14) = 's' then (
                  7
                )
                else (
                  -1
                )
              )
            | 16 -> (
                if String.unsafe_get s pos = 'r' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'e' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'c' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'n' && String.unsafe_get s (pos+11) = 'u' && String.unsafe_get s (pos+12) = 'm' && String.unsafe_get s (pos+13) = 'b' && String.unsafe_get s (pos+14) = 'e' && String.unsafe_get s (pos+15) = 'r' then (
                  9
                )
                else (
                  -1
                )
              )
            | 20 -> (
                if String.unsafe_get s pos = 'm' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'x' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'm' && String.unsafe_get s (pos+5) = 'u' && String.unsafe_get s (pos+6) = 'm' && String.unsafe_get s (pos+7) = '_' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 'p' && String.unsafe_get s (pos+10) = 'l' && String.unsafe_get s (pos+11) = 'o' && String.unsafe_get s (pos+12) = 'a' && String.unsafe_get s (pos+13) = 'd' && String.unsafe_get s (pos+14) = '_' && String.unsafe_get s (pos+15) = 's' && String.unsafe_get s (pos+16) = 'p' && String.unsafe_get s (pos+17) = 'e' && String.unsafe_get s (pos+18) = 'e' && String.unsafe_get s (pos+19) = 'd' then (
                  11
                )
                else (
                  -1
                )
              )
            | 21 -> (
                if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 'm' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'n' && String.unsafe_get s (pos+9) = 't' && String.unsafe_get s (pos+10) = '_' && String.unsafe_get s (pos+11) = 's' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 'a' && String.unsafe_get s (pos+14) = 'r' && String.unsafe_get s (pos+15) = 't' && String.unsafe_get s (pos+16) = '_' && String.unsafe_get s (pos+17) = 'd' && String.unsafe_get s (pos+18) = 'a' && String.unsafe_get s (pos+19) = 't' && String.unsafe_get s (pos+20) = 'e' then (
                  5
                )
                else (
                  -1
                )
              )
            | 22 -> (
                if String.unsafe_get s pos = 'm' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'x' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'm' && String.unsafe_get s (pos+5) = 'u' && String.unsafe_get s (pos+6) = 'm' && String.unsafe_get s (pos+7) = '_' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = 'o' && String.unsafe_get s (pos+10) = 'w' && String.unsafe_get s (pos+11) = 'n' && String.unsafe_get s (pos+12) = 'l' && String.unsafe_get s (pos+13) = 'o' && String.unsafe_get s (pos+14) = 'a' && String.unsafe_get s (pos+15) = 'd' && String.unsafe_get s (pos+16) = '_' && String.unsafe_get s (pos+17) = 's' && String.unsafe_get s (pos+18) = 'p' && String.unsafe_get s (pos+19) = 'e' && String.unsafe_get s (pos+20) = 'e' && String.unsafe_get s (pos+21) = 'd' then (
                  10
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_csi := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 1 ->
            field_formatted_csi := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 2 ->
            field_name := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 3 ->
            field_offer_id := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 4 ->
            field_offer_name := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 5 ->
            field_commitment_start_date := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 6 ->
            field_status := (
              Some (
                (
                  read_k_Status_t
                ) p lb
              )
            );
          | 7 ->
            field_blocking_status := (
              Some (
                (
                  read__k_Blocking_status_t_nullable
                ) p lb
              )
            );
          | 8 ->
            field_options := (
              Some (
                (
                  read__k_Options_t_list
                ) p lb
              )
            );
          | 9 ->
            field_reference_number := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 10 ->
            field_maximum_download_speed := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 11 ->
            field_maximum_upload_speed := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
            match len with
              | 3 -> (
                  if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 's' && String.unsafe_get s (pos+2) = 'i' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 4 -> (
                  if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                    2
                  )
                  else (
                    -1
                  )
                )
              | 6 -> (
                  if String.unsafe_get s pos = 's' && String.unsafe_get s (pos+1) = 't' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'u' && String.unsafe_get s (pos+5) = 's' then (
                    6
                  )
                  else (
                    -1
                  )
                )
              | 7 -> (
                  if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'p' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'o' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 's' then (
                    8
                  )
                  else (
                    -1
                  )
                )
              | 8 -> (
                  if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'f' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'd' then (
                    3
                  )
                  else (
                    -1
                  )
                )
              | 10 -> (
                  if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'f' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'a' && String.unsafe_get s (pos+8) = 'm' && String.unsafe_get s (pos+9) = 'e' then (
                    4
                  )
                  else (
                    -1
                  )
                )
              | 13 -> (
                  if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'c' && String.unsafe_get s (pos+11) = 's' && String.unsafe_get s (pos+12) = 'i' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 15 -> (
                  if String.unsafe_get s pos = 'b' && String.unsafe_get s (pos+1) = 'l' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'k' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'g' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 't' && String.unsafe_get s (pos+11) = 'a' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 'u' && String.unsafe_get s (pos+14) = 's' then (
                    7
                  )
                  else (
                    -1
                  )
                )
              | 16 -> (
                  if String.unsafe_get s pos = 'r' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'e' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'c' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'n' && String.unsafe_get s (pos+11) = 'u' && String.unsafe_get s (pos+12) = 'm' && String.unsafe_get s (pos+13) = 'b' && String.unsafe_get s (pos+14) = 'e' && String.unsafe_get s (pos+15) = 'r' then (
                    9
                  )
                  else (
                    -1
                  )
                )
              | 20 -> (
                  if String.unsafe_get s pos = 'm' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'x' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'm' && String.unsafe_get s (pos+5) = 'u' && String.unsafe_get s (pos+6) = 'm' && String.unsafe_get s (pos+7) = '_' && String.unsafe_get s (pos+8) = 'u' && String.unsafe_get s (pos+9) = 'p' && String.unsafe_get s (pos+10) = 'l' && String.unsafe_get s (pos+11) = 'o' && String.unsafe_get s (pos+12) = 'a' && String.unsafe_get s (pos+13) = 'd' && String.unsafe_get s (pos+14) = '_' && String.unsafe_get s (pos+15) = 's' && String.unsafe_get s (pos+16) = 'p' && String.unsafe_get s (pos+17) = 'e' && String.unsafe_get s (pos+18) = 'e' && String.unsafe_get s (pos+19) = 'd' then (
                    11
                  )
                  else (
                    -1
                  )
                )
              | 21 -> (
                  if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 'm' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'n' && String.unsafe_get s (pos+9) = 't' && String.unsafe_get s (pos+10) = '_' && String.unsafe_get s (pos+11) = 's' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 'a' && String.unsafe_get s (pos+14) = 'r' && String.unsafe_get s (pos+15) = 't' && String.unsafe_get s (pos+16) = '_' && String.unsafe_get s (pos+17) = 'd' && String.unsafe_get s (pos+18) = 'a' && String.unsafe_get s (pos+19) = 't' && String.unsafe_get s (pos+20) = 'e' then (
                    5
                  )
                  else (
                    -1
                  )
                )
              | 22 -> (
                  if String.unsafe_get s pos = 'm' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'x' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'm' && String.unsafe_get s (pos+5) = 'u' && String.unsafe_get s (pos+6) = 'm' && String.unsafe_get s (pos+7) = '_' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = 'o' && String.unsafe_get s (pos+10) = 'w' && String.unsafe_get s (pos+11) = 'n' && String.unsafe_get s (pos+12) = 'l' && String.unsafe_get s (pos+13) = 'o' && String.unsafe_get s (pos+14) = 'a' && String.unsafe_get s (pos+15) = 'd' && String.unsafe_get s (pos+16) = '_' && String.unsafe_get s (pos+17) = 's' && String.unsafe_get s (pos+18) = 'p' && String.unsafe_get s (pos+19) = 'e' && String.unsafe_get s (pos+20) = 'e' && String.unsafe_get s (pos+21) = 'd' then (
                    10
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_csi := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 1 ->
              field_formatted_csi := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 2 ->
              field_name := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 3 ->
              field_offer_id := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 4 ->
              field_offer_name := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 5 ->
              field_commitment_start_date := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 6 ->
              field_status := (
                Some (
                  (
                    read_k_Status_t
                  ) p lb
                )
              );
            | 7 ->
              field_blocking_status := (
                Some (
                  (
                    read__k_Blocking_status_t_nullable
                  ) p lb
                )
              );
            | 8 ->
              field_options := (
                Some (
                  (
                    read__k_Options_t_list
                  ) p lb
                )
              );
            | 9 ->
              field_reference_number := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 10 ->
              field_maximum_download_speed := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 11 ->
              field_maximum_upload_speed := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            csi = (match !field_csi with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "csi");
            formatted_csi = (match !field_formatted_csi with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "formatted_csi");
            name = (match !field_name with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "name");
            offer_id = (match !field_offer_id with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "offer_id");
            offer_name = (match !field_offer_name with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "offer_name");
            commitment_start_date = (match !field_commitment_start_date with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "commitment_start_date");
            status = (match !field_status with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "status");
            blocking_status = (match !field_blocking_status with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "blocking_status");
            options = (match !field_options with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "options");
            reference_number = (match !field_reference_number with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "reference_number");
            maximum_download_speed = (match !field_maximum_download_speed with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "maximum_download_speed");
            maximum_upload_speed = (match !field_maximum_upload_speed with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "maximum_upload_speed");
          }
         : k_DSLAccess_t)
      )
)
let k_DSLAccess_t_of_string s =
  read_k_DSLAccess_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_CallDetailRecord_t : _ -> k_CallDetailRecord_t -> _ = (
  fun ob (x : k_CallDetailRecord_t) ->
    Buffer.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"call_id\":";
    (
      Yojson.Safe.write_string
    )
      ob x.call_id;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"start_time\":";
    (
      Yojson.Safe.write_string
    )
      ob x.start_time;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"callee\":";
    (
      Yojson.Safe.write_string
    )
      ob x.callee;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"callee_raw\":";
    (
      Yojson.Safe.write_string
    )
      ob x.callee_raw;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"caller\":";
    (
      Yojson.Safe.write_string
    )
      ob x.caller;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"caller_raw\":";
    (
      Yojson.Safe.write_string
    )
      ob x.caller_raw;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"caller_presentation\":";
    (
      Yojson.Safe.write_string
    )
      ob x.caller_presentation;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"caller_presentation_raw\":";
    (
      Yojson.Safe.write_string
    )
      ob x.caller_presentation_raw;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"quantity\":";
    (
      Yojson.Safe.write_string
    )
      ob x.quantity;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"quantity_billed\":";
    (
      Yojson.Safe.write_string
    )
      ob x.quantity_billed;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"destination_name\":";
    (
      Yojson.Safe.write_string
    )
      ob x.destination_name;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"cost\":";
    (
      Yojson.Safe.write_string
    )
      ob x.cost;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"repayment\":";
    (
      Yojson.Safe.write_string
    )
      ob x.repayment;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"unit\":";
    (
      write_k_Unit_t
    )
      ob x.unit;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"roaming\":";
    (
      Yojson.Safe.write_string
    )
      ob x.roaming;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"translation_number\":";
    (
      Yojson.Safe.write_string
    )
      ob x.translation_number;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"translation_number_raw\":";
    (
      Yojson.Safe.write_string
    )
      ob x.translation_number_raw;
    Buffer.add_char ob '}';
)
let string_of_k_CallDetailRecord_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_CallDetailRecord_t ob x;
  Buffer.contents ob
let read_k_CallDetailRecord_t = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_call_id = ref (None) in
    let field_start_time = ref (None) in
    let field_callee = ref (None) in
    let field_callee_raw = ref (None) in
    let field_caller = ref (None) in
    let field_caller_raw = ref (None) in
    let field_caller_presentation = ref (None) in
    let field_caller_presentation_raw = ref (None) in
    let field_quantity = ref (None) in
    let field_quantity_billed = ref (None) in
    let field_destination_name = ref (None) in
    let field_cost = ref (None) in
    let field_repayment = ref (None) in
    let field_unit = ref (None) in
    let field_roaming = ref (None) in
    let field_translation_number = ref (None) in
    let field_translation_number_raw = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
          match len with
            | 4 -> (
                match String.unsafe_get s pos with
                  | 'c' -> (
                      if String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 't' then (
                        11
                      )
                      else (
                        -1
                      )
                    )
                  | 'u' -> (
                      if String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 'i' && String.unsafe_get s (pos+3) = 't' then (
                        13
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 6 -> (
                if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'l' && String.unsafe_get s (pos+4) = 'e' then (
                  match String.unsafe_get s (pos+5) with
                    | 'e' -> (
                        2
                      )
                    | 'r' -> (
                        4
                      )
                    | _ -> (
                        -1
                      )
                )
                else (
                  -1
                )
              )
            | 7 -> (
                match String.unsafe_get s pos with
                  | 'c' -> (
                      if String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'l' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'd' then (
                        0
                      )
                      else (
                        -1
                      )
                    )
                  | 'r' -> (
                      if String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 'g' then (
                        14
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 8 -> (
                if String.unsafe_get s pos = 'q' && String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'n' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'y' then (
                  8
                )
                else (
                  -1
                )
              )
            | 9 -> (
                if String.unsafe_get s pos = 'r' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'p' && String.unsafe_get s (pos+3) = 'a' && String.unsafe_get s (pos+4) = 'y' && String.unsafe_get s (pos+5) = 'm' && String.unsafe_get s (pos+6) = 'e' && String.unsafe_get s (pos+7) = 'n' && String.unsafe_get s (pos+8) = 't' then (
                  12
                )
                else (
                  -1
                )
              )
            | 10 -> (
                match String.unsafe_get s pos with
                  | 'c' -> (
                      if String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'l' && String.unsafe_get s (pos+4) = 'e' then (
                        match String.unsafe_get s (pos+5) with
                          | 'e' -> (
                              if String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'r' && String.unsafe_get s (pos+8) = 'a' && String.unsafe_get s (pos+9) = 'w' then (
                                3
                              )
                              else (
                                -1
                              )
                            )
                          | 'r' -> (
                              if String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'r' && String.unsafe_get s (pos+8) = 'a' && String.unsafe_get s (pos+9) = 'w' then (
                                5
                              )
                              else (
                                -1
                              )
                            )
                          | _ -> (
                              -1
                            )
                      )
                      else (
                        -1
                      )
                    )
                  | 's' -> (
                      if String.unsafe_get s (pos+1) = 't' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'r' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'i' && String.unsafe_get s (pos+8) = 'm' && String.unsafe_get s (pos+9) = 'e' then (
                        1
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 15 -> (
                if String.unsafe_get s pos = 'q' && String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'n' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'y' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 'b' && String.unsafe_get s (pos+10) = 'i' && String.unsafe_get s (pos+11) = 'l' && String.unsafe_get s (pos+12) = 'l' && String.unsafe_get s (pos+13) = 'e' && String.unsafe_get s (pos+14) = 'd' then (
                  9
                )
                else (
                  -1
                )
              )
            | 16 -> (
                if String.unsafe_get s pos = 'd' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 'a' && String.unsafe_get s (pos+7) = 't' && String.unsafe_get s (pos+8) = 'i' && String.unsafe_get s (pos+9) = 'o' && String.unsafe_get s (pos+10) = 'n' && String.unsafe_get s (pos+11) = '_' && String.unsafe_get s (pos+12) = 'n' && String.unsafe_get s (pos+13) = 'a' && String.unsafe_get s (pos+14) = 'm' && String.unsafe_get s (pos+15) = 'e' then (
                  10
                )
                else (
                  -1
                )
              )
            | 18 -> (
                if String.unsafe_get s pos = 't' && String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'n' && String.unsafe_get s (pos+4) = 's' && String.unsafe_get s (pos+5) = 'l' && String.unsafe_get s (pos+6) = 'a' && String.unsafe_get s (pos+7) = 't' && String.unsafe_get s (pos+8) = 'i' && String.unsafe_get s (pos+9) = 'o' && String.unsafe_get s (pos+10) = 'n' && String.unsafe_get s (pos+11) = '_' && String.unsafe_get s (pos+12) = 'n' && String.unsafe_get s (pos+13) = 'u' && String.unsafe_get s (pos+14) = 'm' && String.unsafe_get s (pos+15) = 'b' && String.unsafe_get s (pos+16) = 'e' && String.unsafe_get s (pos+17) = 'r' then (
                  15
                )
                else (
                  -1
                )
              )
            | 19 -> (
                if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'l' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'p' && String.unsafe_get s (pos+8) = 'r' && String.unsafe_get s (pos+9) = 'e' && String.unsafe_get s (pos+10) = 's' && String.unsafe_get s (pos+11) = 'e' && String.unsafe_get s (pos+12) = 'n' && String.unsafe_get s (pos+13) = 't' && String.unsafe_get s (pos+14) = 'a' && String.unsafe_get s (pos+15) = 't' && String.unsafe_get s (pos+16) = 'i' && String.unsafe_get s (pos+17) = 'o' && String.unsafe_get s (pos+18) = 'n' then (
                  6
                )
                else (
                  -1
                )
              )
            | 22 -> (
                if String.unsafe_get s pos = 't' && String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'n' && String.unsafe_get s (pos+4) = 's' && String.unsafe_get s (pos+5) = 'l' && String.unsafe_get s (pos+6) = 'a' && String.unsafe_get s (pos+7) = 't' && String.unsafe_get s (pos+8) = 'i' && String.unsafe_get s (pos+9) = 'o' && String.unsafe_get s (pos+10) = 'n' && String.unsafe_get s (pos+11) = '_' && String.unsafe_get s (pos+12) = 'n' && String.unsafe_get s (pos+13) = 'u' && String.unsafe_get s (pos+14) = 'm' && String.unsafe_get s (pos+15) = 'b' && String.unsafe_get s (pos+16) = 'e' && String.unsafe_get s (pos+17) = 'r' && String.unsafe_get s (pos+18) = '_' && String.unsafe_get s (pos+19) = 'r' && String.unsafe_get s (pos+20) = 'a' && String.unsafe_get s (pos+21) = 'w' then (
                  16
                )
                else (
                  -1
                )
              )
            | 23 -> (
                if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'l' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'p' && String.unsafe_get s (pos+8) = 'r' && String.unsafe_get s (pos+9) = 'e' && String.unsafe_get s (pos+10) = 's' && String.unsafe_get s (pos+11) = 'e' && String.unsafe_get s (pos+12) = 'n' && String.unsafe_get s (pos+13) = 't' && String.unsafe_get s (pos+14) = 'a' && String.unsafe_get s (pos+15) = 't' && String.unsafe_get s (pos+16) = 'i' && String.unsafe_get s (pos+17) = 'o' && String.unsafe_get s (pos+18) = 'n' && String.unsafe_get s (pos+19) = '_' && String.unsafe_get s (pos+20) = 'r' && String.unsafe_get s (pos+21) = 'a' && String.unsafe_get s (pos+22) = 'w' then (
                  7
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_call_id := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 1 ->
            field_start_time := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 2 ->
            field_callee := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 3 ->
            field_callee_raw := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 4 ->
            field_caller := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 5 ->
            field_caller_raw := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 6 ->
            field_caller_presentation := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 7 ->
            field_caller_presentation_raw := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 8 ->
            field_quantity := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 9 ->
            field_quantity_billed := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 10 ->
            field_destination_name := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 11 ->
            field_cost := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 12 ->
            field_repayment := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 13 ->
            field_unit := (
              Some (
                (
                  read_k_Unit_t
                ) p lb
              )
            );
          | 14 ->
            field_roaming := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 15 ->
            field_translation_number := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 16 ->
            field_translation_number_raw := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
            match len with
              | 4 -> (
                  match String.unsafe_get s pos with
                    | 'c' -> (
                        if String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 't' then (
                          11
                        )
                        else (
                          -1
                        )
                      )
                    | 'u' -> (
                        if String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 'i' && String.unsafe_get s (pos+3) = 't' then (
                          13
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 6 -> (
                  if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'l' && String.unsafe_get s (pos+4) = 'e' then (
                    match String.unsafe_get s (pos+5) with
                      | 'e' -> (
                          2
                        )
                      | 'r' -> (
                          4
                        )
                      | _ -> (
                          -1
                        )
                  )
                  else (
                    -1
                  )
                )
              | 7 -> (
                  match String.unsafe_get s pos with
                    | 'c' -> (
                        if String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'l' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'd' then (
                          0
                        )
                        else (
                          -1
                        )
                      )
                    | 'r' -> (
                        if String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 'g' then (
                          14
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 8 -> (
                  if String.unsafe_get s pos = 'q' && String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'n' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'y' then (
                    8
                  )
                  else (
                    -1
                  )
                )
              | 9 -> (
                  if String.unsafe_get s pos = 'r' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'p' && String.unsafe_get s (pos+3) = 'a' && String.unsafe_get s (pos+4) = 'y' && String.unsafe_get s (pos+5) = 'm' && String.unsafe_get s (pos+6) = 'e' && String.unsafe_get s (pos+7) = 'n' && String.unsafe_get s (pos+8) = 't' then (
                    12
                  )
                  else (
                    -1
                  )
                )
              | 10 -> (
                  match String.unsafe_get s pos with
                    | 'c' -> (
                        if String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'l' && String.unsafe_get s (pos+4) = 'e' then (
                          match String.unsafe_get s (pos+5) with
                            | 'e' -> (
                                if String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'r' && String.unsafe_get s (pos+8) = 'a' && String.unsafe_get s (pos+9) = 'w' then (
                                  3
                                )
                                else (
                                  -1
                                )
                              )
                            | 'r' -> (
                                if String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'r' && String.unsafe_get s (pos+8) = 'a' && String.unsafe_get s (pos+9) = 'w' then (
                                  5
                                )
                                else (
                                  -1
                                )
                              )
                            | _ -> (
                                -1
                              )
                        )
                        else (
                          -1
                        )
                      )
                    | 's' -> (
                        if String.unsafe_get s (pos+1) = 't' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'r' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'i' && String.unsafe_get s (pos+8) = 'm' && String.unsafe_get s (pos+9) = 'e' then (
                          1
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 15 -> (
                  if String.unsafe_get s pos = 'q' && String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'n' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'y' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 'b' && String.unsafe_get s (pos+10) = 'i' && String.unsafe_get s (pos+11) = 'l' && String.unsafe_get s (pos+12) = 'l' && String.unsafe_get s (pos+13) = 'e' && String.unsafe_get s (pos+14) = 'd' then (
                    9
                  )
                  else (
                    -1
                  )
                )
              | 16 -> (
                  if String.unsafe_get s pos = 'd' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 'a' && String.unsafe_get s (pos+7) = 't' && String.unsafe_get s (pos+8) = 'i' && String.unsafe_get s (pos+9) = 'o' && String.unsafe_get s (pos+10) = 'n' && String.unsafe_get s (pos+11) = '_' && String.unsafe_get s (pos+12) = 'n' && String.unsafe_get s (pos+13) = 'a' && String.unsafe_get s (pos+14) = 'm' && String.unsafe_get s (pos+15) = 'e' then (
                    10
                  )
                  else (
                    -1
                  )
                )
              | 18 -> (
                  if String.unsafe_get s pos = 't' && String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'n' && String.unsafe_get s (pos+4) = 's' && String.unsafe_get s (pos+5) = 'l' && String.unsafe_get s (pos+6) = 'a' && String.unsafe_get s (pos+7) = 't' && String.unsafe_get s (pos+8) = 'i' && String.unsafe_get s (pos+9) = 'o' && String.unsafe_get s (pos+10) = 'n' && String.unsafe_get s (pos+11) = '_' && String.unsafe_get s (pos+12) = 'n' && String.unsafe_get s (pos+13) = 'u' && String.unsafe_get s (pos+14) = 'm' && String.unsafe_get s (pos+15) = 'b' && String.unsafe_get s (pos+16) = 'e' && String.unsafe_get s (pos+17) = 'r' then (
                    15
                  )
                  else (
                    -1
                  )
                )
              | 19 -> (
                  if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'l' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'p' && String.unsafe_get s (pos+8) = 'r' && String.unsafe_get s (pos+9) = 'e' && String.unsafe_get s (pos+10) = 's' && String.unsafe_get s (pos+11) = 'e' && String.unsafe_get s (pos+12) = 'n' && String.unsafe_get s (pos+13) = 't' && String.unsafe_get s (pos+14) = 'a' && String.unsafe_get s (pos+15) = 't' && String.unsafe_get s (pos+16) = 'i' && String.unsafe_get s (pos+17) = 'o' && String.unsafe_get s (pos+18) = 'n' then (
                    6
                  )
                  else (
                    -1
                  )
                )
              | 22 -> (
                  if String.unsafe_get s pos = 't' && String.unsafe_get s (pos+1) = 'r' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'n' && String.unsafe_get s (pos+4) = 's' && String.unsafe_get s (pos+5) = 'l' && String.unsafe_get s (pos+6) = 'a' && String.unsafe_get s (pos+7) = 't' && String.unsafe_get s (pos+8) = 'i' && String.unsafe_get s (pos+9) = 'o' && String.unsafe_get s (pos+10) = 'n' && String.unsafe_get s (pos+11) = '_' && String.unsafe_get s (pos+12) = 'n' && String.unsafe_get s (pos+13) = 'u' && String.unsafe_get s (pos+14) = 'm' && String.unsafe_get s (pos+15) = 'b' && String.unsafe_get s (pos+16) = 'e' && String.unsafe_get s (pos+17) = 'r' && String.unsafe_get s (pos+18) = '_' && String.unsafe_get s (pos+19) = 'r' && String.unsafe_get s (pos+20) = 'a' && String.unsafe_get s (pos+21) = 'w' then (
                    16
                  )
                  else (
                    -1
                  )
                )
              | 23 -> (
                  if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'l' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'p' && String.unsafe_get s (pos+8) = 'r' && String.unsafe_get s (pos+9) = 'e' && String.unsafe_get s (pos+10) = 's' && String.unsafe_get s (pos+11) = 'e' && String.unsafe_get s (pos+12) = 'n' && String.unsafe_get s (pos+13) = 't' && String.unsafe_get s (pos+14) = 'a' && String.unsafe_get s (pos+15) = 't' && String.unsafe_get s (pos+16) = 'i' && String.unsafe_get s (pos+17) = 'o' && String.unsafe_get s (pos+18) = 'n' && String.unsafe_get s (pos+19) = '_' && String.unsafe_get s (pos+20) = 'r' && String.unsafe_get s (pos+21) = 'a' && String.unsafe_get s (pos+22) = 'w' then (
                    7
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_call_id := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 1 ->
              field_start_time := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 2 ->
              field_callee := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 3 ->
              field_callee_raw := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 4 ->
              field_caller := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 5 ->
              field_caller_raw := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 6 ->
              field_caller_presentation := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 7 ->
              field_caller_presentation_raw := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 8 ->
              field_quantity := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 9 ->
              field_quantity_billed := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 10 ->
              field_destination_name := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 11 ->
              field_cost := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 12 ->
              field_repayment := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 13 ->
              field_unit := (
                Some (
                  (
                    read_k_Unit_t
                  ) p lb
                )
              );
            | 14 ->
              field_roaming := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 15 ->
              field_translation_number := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 16 ->
              field_translation_number_raw := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            call_id = (match !field_call_id with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "call_id");
            start_time = (match !field_start_time with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "start_time");
            callee = (match !field_callee with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "callee");
            callee_raw = (match !field_callee_raw with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "callee_raw");
            caller = (match !field_caller with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "caller");
            caller_raw = (match !field_caller_raw with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "caller_raw");
            caller_presentation = (match !field_caller_presentation with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "caller_presentation");
            caller_presentation_raw = (match !field_caller_presentation_raw with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "caller_presentation_raw");
            quantity = (match !field_quantity with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "quantity");
            quantity_billed = (match !field_quantity_billed with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "quantity_billed");
            destination_name = (match !field_destination_name with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "destination_name");
            cost = (match !field_cost with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "cost");
            repayment = (match !field_repayment with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "repayment");
            unit = (match !field_unit with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "unit");
            roaming = (match !field_roaming with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "roaming");
            translation_number = (match !field_translation_number with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "translation_number");
            translation_number_raw = (match !field_translation_number_raw with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "translation_number_raw");
          }
         : k_CallDetailRecord_t)
      )
)
let k_CallDetailRecord_t_of_string s =
  read_k_CallDetailRecord_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_CallBarringGroup_t : _ -> k_CallBarringGroup_t -> _ = (
  fun ob (x : k_CallBarringGroup_t) ->
    Buffer.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"name\":";
    (
      Yojson.Safe.write_string
    )
      ob x.name;
    Buffer.add_char ob '}';
)
let string_of_k_CallBarringGroup_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_CallBarringGroup_t ob x;
  Buffer.contents ob
let read_k_CallBarringGroup_t = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_name = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
          if len = 4 && String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
            0
          )
          else (
            -1
          )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_name := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
            if len = 4 && String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
              0
            )
            else (
              -1
            )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_name := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            name = (match !field_name with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "name");
          }
         : k_CallBarringGroup_t)
      )
)
let k_CallBarringGroup_t_of_string s =
  read_k_CallBarringGroup_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_CTIPlugin_t : _ -> k_CTIPlugin_t -> _ = (
  fun ob (x : k_CTIPlugin_t) ->
    Buffer.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"name\":";
    (
      Yojson.Safe.write_string
    )
      ob x.name;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"enabled\":";
    (
      Yojson.Safe.write_bool
    )
      ob x.enabled;
    Buffer.add_char ob '}';
)
let string_of_k_CTIPlugin_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_CTIPlugin_t ob x;
  Buffer.contents ob
let read_k_CTIPlugin_t = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_name = ref (None) in
    let field_enabled = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
          match len with
            | 4 -> (
                if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                  0
                )
                else (
                  -1
                )
              )
            | 7 -> (
                if String.unsafe_get s pos = 'e' && String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'b' && String.unsafe_get s (pos+4) = 'l' && String.unsafe_get s (pos+5) = 'e' && String.unsafe_get s (pos+6) = 'd' then (
                  1
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_name := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 1 ->
            field_enabled := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_bool
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
            match len with
              | 4 -> (
                  if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 7 -> (
                  if String.unsafe_get s pos = 'e' && String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'b' && String.unsafe_get s (pos+4) = 'l' && String.unsafe_get s (pos+5) = 'e' && String.unsafe_get s (pos+6) = 'd' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_name := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 1 ->
              field_enabled := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_bool
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            name = (match !field_name with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "name");
            enabled = (match !field_enabled with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "enabled");
          }
         : k_CTIPlugin_t)
      )
)
let k_CTIPlugin_t_of_string s =
  read_k_CTIPlugin_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_CTIPluginParameter_t : _ -> k_CTIPluginParameter_t -> _ = (
  fun ob (x : k_CTIPluginParameter_t) ->
    Buffer.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"name\":";
    (
      Yojson.Safe.write_string
    )
      ob x.name;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"information\":";
    (
      Yojson.Safe.write_string
    )
      ob x.information;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"value\":";
    (
      Yojson.Safe.write_string
    )
      ob x.value;
    Buffer.add_char ob '}';
)
let string_of_k_CTIPluginParameter_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_CTIPluginParameter_t ob x;
  Buffer.contents ob
let read_k_CTIPluginParameter_t = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_name = ref (None) in
    let field_information = ref (None) in
    let field_value = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
          match len with
            | 4 -> (
                if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                  0
                )
                else (
                  -1
                )
              )
            | 5 -> (
                if String.unsafe_get s pos = 'v' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'u' && String.unsafe_get s (pos+4) = 'e' then (
                  2
                )
                else (
                  -1
                )
              )
            | 11 -> (
                if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'o' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'm' && String.unsafe_get s (pos+6) = 'a' && String.unsafe_get s (pos+7) = 't' && String.unsafe_get s (pos+8) = 'i' && String.unsafe_get s (pos+9) = 'o' && String.unsafe_get s (pos+10) = 'n' then (
                  1
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_name := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 1 ->
            field_information := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 2 ->
            field_value := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
            match len with
              | 4 -> (
                  if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 5 -> (
                  if String.unsafe_get s pos = 'v' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'u' && String.unsafe_get s (pos+4) = 'e' then (
                    2
                  )
                  else (
                    -1
                  )
                )
              | 11 -> (
                  if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 'n' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'o' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = 'm' && String.unsafe_get s (pos+6) = 'a' && String.unsafe_get s (pos+7) = 't' && String.unsafe_get s (pos+8) = 'i' && String.unsafe_get s (pos+9) = 'o' && String.unsafe_get s (pos+10) = 'n' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_name := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 1 ->
              field_information := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 2 ->
              field_value := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            name = (match !field_name with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "name");
            information = (match !field_information with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "information");
            value = (match !field_value with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "value");
          }
         : k_CTIPluginParameter_t)
      )
)
let k_CTIPluginParameter_t_of_string s =
  read_k_CTIPluginParameter_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_CSIToken_result_t = (
  fun ob x ->
    match x with
      | `Success -> Buffer.add_string ob "\"success\""
      | `CantGenereate x ->
        Buffer.add_string ob "[\"CantGenereate\",";
        (
          Yojson.Safe.write_string
        ) ob x;
        Buffer.add_char ob ']'
)
let string_of_k_CSIToken_result_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_CSIToken_result_t ob x;
  Buffer.contents ob
let read_k_CSIToken_result_t = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "success" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `Success
            | "CantGenereate" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              `CantGenereate x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "success" ->
              `Success
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "CantGenereate" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              `CantGenereate x
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let k_CSIToken_result_t_of_string s =
  read_k_CSIToken_result_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__string_list = (
  Atdgen_runtime.Oj_run.write_list (
    Yojson.Safe.write_string
  )
)
let string_of__string_list ?(len = 1024) x =
  let ob = Buffer.create len in
  write__string_list ob x;
  Buffer.contents ob
let read__string_list = (
  Atdgen_runtime.Oj_run.read_list (
    Atdgen_runtime.Oj_run.read_string
  )
)
let _string_list_of_string s =
  read__string_list (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_CSIToken_t : _ -> k_CSIToken_t -> _ = (
  fun ob (x : k_CSIToken_t) ->
    Buffer.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"result\":";
    (
      write_k_CSIToken_result_t
    )
      ob x.result;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"token\":";
    (
      Yojson.Safe.write_string
    )
      ob x.token;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"domain_masks\":";
    (
      write__string_list
    )
      ob x.domain_masks;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"timestamp\":";
    (
      Yojson.Safe.write_int
    )
      ob x.timestamp;
    Buffer.add_char ob '}';
)
let string_of_k_CSIToken_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_CSIToken_t ob x;
  Buffer.contents ob
let read_k_CSIToken_t = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_result = ref (None) in
    let field_token = ref (None) in
    let field_domain_masks = ref (None) in
    let field_timestamp = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
          match len with
            | 5 -> (
                if String.unsafe_get s pos = 't' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'k' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'n' then (
                  1
                )
                else (
                  -1
                )
              )
            | 6 -> (
                if String.unsafe_get s pos = 'r' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'u' && String.unsafe_get s (pos+4) = 'l' && String.unsafe_get s (pos+5) = 't' then (
                  0
                )
                else (
                  -1
                )
              )
            | 9 -> (
                if String.unsafe_get s pos = 't' && String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 's' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 'a' && String.unsafe_get s (pos+7) = 'm' && String.unsafe_get s (pos+8) = 'p' then (
                  3
                )
                else (
                  -1
                )
              )
            | 12 -> (
                if String.unsafe_get s pos = 'd' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'a' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'm' && String.unsafe_get s (pos+8) = 'a' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 'k' && String.unsafe_get s (pos+11) = 's' then (
                  2
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_result := (
              Some (
                (
                  read_k_CSIToken_result_t
                ) p lb
              )
            );
          | 1 ->
            field_token := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 2 ->
            field_domain_masks := (
              Some (
                (
                  read__string_list
                ) p lb
              )
            );
          | 3 ->
            field_timestamp := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
            match len with
              | 5 -> (
                  if String.unsafe_get s pos = 't' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'k' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'n' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 6 -> (
                  if String.unsafe_get s pos = 'r' && String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'u' && String.unsafe_get s (pos+4) = 'l' && String.unsafe_get s (pos+5) = 't' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 9 -> (
                  if String.unsafe_get s pos = 't' && String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 's' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 'a' && String.unsafe_get s (pos+7) = 'm' && String.unsafe_get s (pos+8) = 'p' then (
                    3
                  )
                  else (
                    -1
                  )
                )
              | 12 -> (
                  if String.unsafe_get s pos = 'd' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'a' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'm' && String.unsafe_get s (pos+8) = 'a' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 'k' && String.unsafe_get s (pos+11) = 's' then (
                    2
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_result := (
                Some (
                  (
                    read_k_CSIToken_result_t
                  ) p lb
                )
              );
            | 1 ->
              field_token := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 2 ->
              field_domain_masks := (
                Some (
                  (
                    read__string_list
                  ) p lb
                )
              );
            | 3 ->
              field_timestamp := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            result = (match !field_result with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "result");
            token = (match !field_token with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "token");
            domain_masks = (match !field_domain_masks with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "domain_masks");
            timestamp = (match !field_timestamp with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "timestamp");
          }
         : k_CSIToken_t)
      )
)
let k_CSIToken_t_of_string s =
  read_k_CSIToken_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_AudioFile_t : _ -> k_AudioFile_t -> _ = (
  fun ob (x : k_AudioFile_t) ->
    Buffer.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"id\":";
    (
      Yojson.Safe.write_int
    )
      ob x.id;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"name\":";
    (
      Yojson.Safe.write_string
    )
      ob x.name;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"type\":";
    (
      Yojson.Safe.write_string
    )
      ob x.atype;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"is_personal\":";
    (
      Yojson.Safe.write_bool
    )
      ob x.is_personal;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"base46_contents\":";
    (
      Yojson.Safe.write_string
    )
      ob x.base46_contents;
    Buffer.add_char ob '}';
)
let string_of_k_AudioFile_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_AudioFile_t ob x;
  Buffer.contents ob
let read_k_AudioFile_t = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_id = ref (None) in
    let field_name = ref (None) in
    let field_atype = ref (None) in
    let field_is_personal = ref (None) in
    let field_base46_contents = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
          match len with
            | 2 -> (
                if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 'd' then (
                  0
                )
                else (
                  -1
                )
              )
            | 4 -> (
                match String.unsafe_get s pos with
                  | 'n' -> (
                      if String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                        1
                      )
                      else (
                        -1
                      )
                    )
                  | 't' -> (
                      if String.unsafe_get s (pos+1) = 'y' && String.unsafe_get s (pos+2) = 'p' && String.unsafe_get s (pos+3) = 'e' then (
                        2
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 11 -> (
                if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 's' && String.unsafe_get s (pos+2) = '_' && String.unsafe_get s (pos+3) = 'p' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = 's' && String.unsafe_get s (pos+7) = 'o' && String.unsafe_get s (pos+8) = 'n' && String.unsafe_get s (pos+9) = 'a' && String.unsafe_get s (pos+10) = 'l' then (
                  3
                )
                else (
                  -1
                )
              )
            | 15 -> (
                if String.unsafe_get s pos = 'b' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = '4' && String.unsafe_get s (pos+5) = '6' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'c' && String.unsafe_get s (pos+8) = 'o' && String.unsafe_get s (pos+9) = 'n' && String.unsafe_get s (pos+10) = 't' && String.unsafe_get s (pos+11) = 'e' && String.unsafe_get s (pos+12) = 'n' && String.unsafe_get s (pos+13) = 't' && String.unsafe_get s (pos+14) = 's' then (
                  4
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_id := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 1 ->
            field_name := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 2 ->
            field_atype := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 3 ->
            field_is_personal := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_bool
                ) p lb
              )
            );
          | 4 ->
            field_base46_contents := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
            match len with
              | 2 -> (
                  if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 'd' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 4 -> (
                  match String.unsafe_get s pos with
                    | 'n' -> (
                        if String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                          1
                        )
                        else (
                          -1
                        )
                      )
                    | 't' -> (
                        if String.unsafe_get s (pos+1) = 'y' && String.unsafe_get s (pos+2) = 'p' && String.unsafe_get s (pos+3) = 'e' then (
                          2
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 11 -> (
                  if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 's' && String.unsafe_get s (pos+2) = '_' && String.unsafe_get s (pos+3) = 'p' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'r' && String.unsafe_get s (pos+6) = 's' && String.unsafe_get s (pos+7) = 'o' && String.unsafe_get s (pos+8) = 'n' && String.unsafe_get s (pos+9) = 'a' && String.unsafe_get s (pos+10) = 'l' then (
                    3
                  )
                  else (
                    -1
                  )
                )
              | 15 -> (
                  if String.unsafe_get s pos = 'b' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 's' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = '4' && String.unsafe_get s (pos+5) = '6' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 'c' && String.unsafe_get s (pos+8) = 'o' && String.unsafe_get s (pos+9) = 'n' && String.unsafe_get s (pos+10) = 't' && String.unsafe_get s (pos+11) = 'e' && String.unsafe_get s (pos+12) = 'n' && String.unsafe_get s (pos+13) = 't' && String.unsafe_get s (pos+14) = 's' then (
                    4
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_id := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 1 ->
              field_name := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 2 ->
              field_atype := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 3 ->
              field_is_personal := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_bool
                  ) p lb
                )
              );
            | 4 ->
              field_base46_contents := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            id = (match !field_id with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "id");
            name = (match !field_name with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "name");
            atype = (match !field_atype with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "atype");
            is_personal = (match !field_is_personal with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "is_personal");
            base46_contents = (match !field_base46_contents with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "base46_contents");
          }
         : k_AudioFile_t)
      )
)
let k_AudioFile_t_of_string s =
  read_k_AudioFile_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_ACDService_t : _ -> k_ACDService_t -> _ = (
  fun ob (x : k_ACDService_t) ->
    Buffer.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"csi\":";
    (
      Yojson.Safe.write_string
    )
      ob x.csi;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"formatted_csi\":";
    (
      Yojson.Safe.write_string
    )
      ob x.formatted_csi;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"name\":";
    (
      Yojson.Safe.write_string
    )
      ob x.name;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"offer_id\":";
    (
      Yojson.Safe.write_int
    )
      ob x.offer_id;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"offer_name\":";
    (
      Yojson.Safe.write_string
    )
      ob x.offer_name;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"commitment_start_date\":";
    (
      Yojson.Safe.write_string
    )
      ob x.commitment_start_date;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"status\":";
    (
      write_k_Status_t
    )
      ob x.status;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"blocking_status\":";
    (
      write__k_Blocking_status_t_nullable
    )
      ob x.blocking_status;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"options\":";
    (
      write__k_Options_t_list
    )
      ob x.options;
    Buffer.add_char ob '}';
)
let string_of_k_ACDService_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_ACDService_t ob x;
  Buffer.contents ob
let read_k_ACDService_t = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_csi = ref (None) in
    let field_formatted_csi = ref (None) in
    let field_name = ref (None) in
    let field_offer_id = ref (None) in
    let field_offer_name = ref (None) in
    let field_commitment_start_date = ref (None) in
    let field_status = ref (None) in
    let field_blocking_status = ref (None) in
    let field_options = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
          match len with
            | 3 -> (
                if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 's' && String.unsafe_get s (pos+2) = 'i' then (
                  0
                )
                else (
                  -1
                )
              )
            | 4 -> (
                if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                  2
                )
                else (
                  -1
                )
              )
            | 6 -> (
                if String.unsafe_get s pos = 's' && String.unsafe_get s (pos+1) = 't' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'u' && String.unsafe_get s (pos+5) = 's' then (
                  6
                )
                else (
                  -1
                )
              )
            | 7 -> (
                if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'p' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'o' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 's' then (
                  8
                )
                else (
                  -1
                )
              )
            | 8 -> (
                if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'f' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'd' then (
                  3
                )
                else (
                  -1
                )
              )
            | 10 -> (
                if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'f' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'a' && String.unsafe_get s (pos+8) = 'm' && String.unsafe_get s (pos+9) = 'e' then (
                  4
                )
                else (
                  -1
                )
              )
            | 13 -> (
                if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'c' && String.unsafe_get s (pos+11) = 's' && String.unsafe_get s (pos+12) = 'i' then (
                  1
                )
                else (
                  -1
                )
              )
            | 15 -> (
                if String.unsafe_get s pos = 'b' && String.unsafe_get s (pos+1) = 'l' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'k' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'g' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 't' && String.unsafe_get s (pos+11) = 'a' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 'u' && String.unsafe_get s (pos+14) = 's' then (
                  7
                )
                else (
                  -1
                )
              )
            | 21 -> (
                if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 'm' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'n' && String.unsafe_get s (pos+9) = 't' && String.unsafe_get s (pos+10) = '_' && String.unsafe_get s (pos+11) = 's' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 'a' && String.unsafe_get s (pos+14) = 'r' && String.unsafe_get s (pos+15) = 't' && String.unsafe_get s (pos+16) = '_' && String.unsafe_get s (pos+17) = 'd' && String.unsafe_get s (pos+18) = 'a' && String.unsafe_get s (pos+19) = 't' && String.unsafe_get s (pos+20) = 'e' then (
                  5
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_csi := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 1 ->
            field_formatted_csi := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 2 ->
            field_name := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 3 ->
            field_offer_id := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 4 ->
            field_offer_name := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 5 ->
            field_commitment_start_date := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 6 ->
            field_status := (
              Some (
                (
                  read_k_Status_t
                ) p lb
              )
            );
          | 7 ->
            field_blocking_status := (
              Some (
                (
                  read__k_Blocking_status_t_nullable
                ) p lb
              )
            );
          | 8 ->
            field_options := (
              Some (
                (
                  read__k_Options_t_list
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
            match len with
              | 3 -> (
                  if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 's' && String.unsafe_get s (pos+2) = 'i' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 4 -> (
                  if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                    2
                  )
                  else (
                    -1
                  )
                )
              | 6 -> (
                  if String.unsafe_get s pos = 's' && String.unsafe_get s (pos+1) = 't' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'u' && String.unsafe_get s (pos+5) = 's' then (
                    6
                  )
                  else (
                    -1
                  )
                )
              | 7 -> (
                  if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'p' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'i' && String.unsafe_get s (pos+4) = 'o' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 's' then (
                    8
                  )
                  else (
                    -1
                  )
                )
              | 8 -> (
                  if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'f' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'd' then (
                    3
                  )
                  else (
                    -1
                  )
                )
              | 10 -> (
                  if String.unsafe_get s pos = 'o' && String.unsafe_get s (pos+1) = 'f' && String.unsafe_get s (pos+2) = 'f' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'r' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'a' && String.unsafe_get s (pos+8) = 'm' && String.unsafe_get s (pos+9) = 'e' then (
                    4
                  )
                  else (
                    -1
                  )
                )
              | 13 -> (
                  if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'a' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 't' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'd' && String.unsafe_get s (pos+9) = '_' && String.unsafe_get s (pos+10) = 'c' && String.unsafe_get s (pos+11) = 's' && String.unsafe_get s (pos+12) = 'i' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 15 -> (
                  if String.unsafe_get s pos = 'b' && String.unsafe_get s (pos+1) = 'l' && String.unsafe_get s (pos+2) = 'o' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'k' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 'g' && String.unsafe_get s (pos+8) = '_' && String.unsafe_get s (pos+9) = 's' && String.unsafe_get s (pos+10) = 't' && String.unsafe_get s (pos+11) = 'a' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 'u' && String.unsafe_get s (pos+14) = 's' then (
                    7
                  )
                  else (
                    -1
                  )
                )
              | 21 -> (
                  if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'm' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 'm' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'n' && String.unsafe_get s (pos+9) = 't' && String.unsafe_get s (pos+10) = '_' && String.unsafe_get s (pos+11) = 's' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 'a' && String.unsafe_get s (pos+14) = 'r' && String.unsafe_get s (pos+15) = 't' && String.unsafe_get s (pos+16) = '_' && String.unsafe_get s (pos+17) = 'd' && String.unsafe_get s (pos+18) = 'a' && String.unsafe_get s (pos+19) = 't' && String.unsafe_get s (pos+20) = 'e' then (
                    5
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_csi := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 1 ->
              field_formatted_csi := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 2 ->
              field_name := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 3 ->
              field_offer_id := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 4 ->
              field_offer_name := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 5 ->
              field_commitment_start_date := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 6 ->
              field_status := (
                Some (
                  (
                    read_k_Status_t
                  ) p lb
                )
              );
            | 7 ->
              field_blocking_status := (
                Some (
                  (
                    read__k_Blocking_status_t_nullable
                  ) p lb
                )
              );
            | 8 ->
              field_options := (
                Some (
                  (
                    read__k_Options_t_list
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            csi = (match !field_csi with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "csi");
            formatted_csi = (match !field_formatted_csi with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "formatted_csi");
            name = (match !field_name with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "name");
            offer_id = (match !field_offer_id with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "offer_id");
            offer_name = (match !field_offer_name with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "offer_name");
            commitment_start_date = (match !field_commitment_start_date with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "commitment_start_date");
            status = (match !field_status with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "status");
            blocking_status = (match !field_blocking_status with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "blocking_status");
            options = (match !field_options with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "options");
          }
         : k_ACDService_t)
      )
)
let k_ACDService_t_of_string s =
  read_k_ACDService_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_ACDProfile_t : _ -> k_ACDProfile_t -> _ = (
  fun ob (x : k_ACDProfile_t) ->
    Buffer.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"identifier\":";
    (
      Yojson.Safe.write_int
    )
      ob x.identifier;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"name\":";
    (
      Yojson.Safe.write_string
    )
      ob x.name;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"forced\":";
    (
      Yojson.Safe.write_bool
    )
      ob x.forced;
    Buffer.add_char ob '}';
)
let string_of_k_ACDProfile_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_ACDProfile_t ob x;
  Buffer.contents ob
let read_k_ACDProfile_t = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_identifier = ref (None) in
    let field_name = ref (None) in
    let field_forced = ref (None) in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
          match len with
            | 4 -> (
                if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                  1
                )
                else (
                  -1
                )
              )
            | 6 -> (
                if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'd' then (
                  2
                )
                else (
                  -1
                )
              )
            | 10 -> (
                if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 'd' && String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = 'n' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'f' && String.unsafe_get s (pos+7) = 'i' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = 'r' then (
                  0
                )
                else (
                  -1
                )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_identifier := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              )
            );
          | 1 ->
            field_name := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              )
            );
          | 2 ->
            field_forced := (
              Some (
                (
                  Atdgen_runtime.Oj_run.read_bool
                ) p lb
              )
            );
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg (Printf.sprintf "out-of-bounds substring position or length: string = %S, requested position = %i, requested length = %i" s pos len);
            match len with
              | 4 -> (
                  if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'a' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' then (
                    1
                  )
                  else (
                    -1
                  )
                )
              | 6 -> (
                  if String.unsafe_get s pos = 'f' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'r' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'd' then (
                    2
                  )
                  else (
                    -1
                  )
                )
              | 10 -> (
                  if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 'd' && String.unsafe_get s (pos+2) = 'e' && String.unsafe_get s (pos+3) = 'n' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'f' && String.unsafe_get s (pos+7) = 'i' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = 'r' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_identifier := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_int
                  ) p lb
                )
              );
            | 1 ->
              field_name := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            | 2 ->
              field_forced := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_bool
                  ) p lb
                )
              );
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        (
          {
            identifier = (match !field_identifier with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "identifier");
            name = (match !field_name with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "name");
            forced = (match !field_forced with Some x -> x | None -> Atdgen_runtime.Oj_run.missing_field p "forced");
          }
         : k_ACDProfile_t)
      )
)
let k_ACDProfile_t_of_string s =
  read_k_ACDProfile_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
