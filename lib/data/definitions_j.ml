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
let write_k_FaxTransfer_status_t = (
  fun ob x ->
    match x with
      | `In_service -> Buffer.add_string ob "\"in_service\""
      | `Setup_pending -> Buffer.add_string ob "\"setup_pending\""
      | `Suspended -> Buffer.add_string ob "\"suspended\""
      | `Cancelled -> Buffer.add_string ob "\"cancelled\""
      | `Cancellation_pending -> Buffer.add_string ob "\"cancellation_pending\""
)
let string_of_k_FaxTransfer_status_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_FaxTransfer_status_t ob x;
  Buffer.contents ob
let read_k_FaxTransfer_status_t = (
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
let k_FaxTransfer_status_t_of_string s =
  read_k_FaxTransfer_status_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_FaxTransfer_options_t = (
  fun ob x ->
    match x with
      | `Sms -> Buffer.add_string ob "\"sms\""
      | `Crypt -> Buffer.add_string ob "\"crypt\""
      | `Supervision -> Buffer.add_string ob "\"supervision\""
      | `Iphone -> Buffer.add_string ob "\"iphone\""
)
let string_of_k_FaxTransfer_options_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_FaxTransfer_options_t ob x;
  Buffer.contents ob
let read_k_FaxTransfer_options_t = (
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
let k_FaxTransfer_options_t_of_string s =
  read_k_FaxTransfer_options_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_FaxTransfer_blocking_status_t = (
  fun ob x ->
    match x with
      | `Pending -> Buffer.add_string ob "\"pending\""
      | `Blocked -> Buffer.add_string ob "\"blocked\""
)
let string_of_k_FaxTransfer_blocking_status_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_FaxTransfer_blocking_status_t ob x;
  Buffer.contents ob
let read_k_FaxTransfer_blocking_status_t = (
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
let k_FaxTransfer_blocking_status_t_of_string s =
  read_k_FaxTransfer_blocking_status_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__nullable_2989c45 = (
  Atdgen_runtime.Oj_run.write_nullable (
    write_k_FaxTransfer_blocking_status_t
  )
)
let string_of__nullable_2989c45 ?(len = 1024) x =
  let ob = Buffer.create len in
  write__nullable_2989c45 ob x;
  Buffer.contents ob
let read__nullable_2989c45 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    (if Yojson.Safe.read_null_if_possible p lb then None
    else Some ((
      read_k_FaxTransfer_blocking_status_t
    ) p lb) : _ option)
)
let _nullable_2989c45_of_string s =
  read__nullable_2989c45 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__k_FaxTransfer_options_t_list = (
  Atdgen_runtime.Oj_run.write_list (
    write_k_FaxTransfer_options_t
  )
)
let string_of__k_FaxTransfer_options_t_list ?(len = 1024) x =
  let ob = Buffer.create len in
  write__k_FaxTransfer_options_t_list ob x;
  Buffer.contents ob
let read__k_FaxTransfer_options_t_list = (
  Atdgen_runtime.Oj_run.read_list (
    read_k_FaxTransfer_options_t
  )
)
let _k_FaxTransfer_options_t_list_of_string s =
  read__k_FaxTransfer_options_t_list (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
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
      write_k_FaxTransfer_status_t
    )
      ob x.status;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"blocking_status\":";
    (
      write__nullable_2989c45
    )
      ob x.blocking_status;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"options\":";
    (
      write__k_FaxTransfer_options_t_list
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
                  read_k_FaxTransfer_status_t
                ) p lb
              )
            );
          | 7 ->
            field_blocking_status := (
              Some (
                (
                  read__nullable_2989c45
                ) p lb
              )
            );
          | 8 ->
            field_options := (
              Some (
                (
                  read__k_FaxTransfer_options_t_list
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
                    read_k_FaxTransfer_status_t
                  ) p lb
                )
              );
            | 7 ->
              field_blocking_status := (
                Some (
                  (
                    read__nullable_2989c45
                  ) p lb
                )
              );
            | 8 ->
              field_options := (
                Some (
                  (
                    read__k_FaxTransfer_options_t_list
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
let write_k_EmailAccount_status_t = (
  fun ob x ->
    match x with
      | `In_service -> Buffer.add_string ob "\"in_service\""
      | `Setup_pending -> Buffer.add_string ob "\"setup_pending\""
      | `Suspended -> Buffer.add_string ob "\"suspended\""
      | `Cancelled -> Buffer.add_string ob "\"cancelled\""
      | `Cancellation_pending -> Buffer.add_string ob "\"cancellation_pending\""
)
let string_of_k_EmailAccount_status_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_EmailAccount_status_t ob x;
  Buffer.contents ob
let read_k_EmailAccount_status_t = (
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
let k_EmailAccount_status_t_of_string s =
  read_k_EmailAccount_status_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_EmailAccount_options_t = (
  fun ob x ->
    match x with
      | `Sms -> Buffer.add_string ob "\"sms\""
      | `Crypt -> Buffer.add_string ob "\"crypt\""
      | `Supervision -> Buffer.add_string ob "\"supervision\""
      | `Iphone -> Buffer.add_string ob "\"iphone\""
)
let string_of_k_EmailAccount_options_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_EmailAccount_options_t ob x;
  Buffer.contents ob
let read_k_EmailAccount_options_t = (
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
let k_EmailAccount_options_t_of_string s =
  read_k_EmailAccount_options_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_EmailAccount_blocking_status_t = (
  fun ob x ->
    match x with
      | `Pending -> Buffer.add_string ob "\"pending\""
      | `Blocked -> Buffer.add_string ob "\"blocked\""
)
let string_of_k_EmailAccount_blocking_status_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_EmailAccount_blocking_status_t ob x;
  Buffer.contents ob
let read_k_EmailAccount_blocking_status_t = (
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
let k_EmailAccount_blocking_status_t_of_string s =
  read_k_EmailAccount_blocking_status_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__nullable_2146145 = (
  Atdgen_runtime.Oj_run.write_nullable (
    write_k_EmailAccount_blocking_status_t
  )
)
let string_of__nullable_2146145 ?(len = 1024) x =
  let ob = Buffer.create len in
  write__nullable_2146145 ob x;
  Buffer.contents ob
let read__nullable_2146145 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    (if Yojson.Safe.read_null_if_possible p lb then None
    else Some ((
      read_k_EmailAccount_blocking_status_t
    ) p lb) : _ option)
)
let _nullable_2146145_of_string s =
  read__nullable_2146145 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__k_EmailAccount_options_t_list = (
  Atdgen_runtime.Oj_run.write_list (
    write_k_EmailAccount_options_t
  )
)
let string_of__k_EmailAccount_options_t_list ?(len = 1024) x =
  let ob = Buffer.create len in
  write__k_EmailAccount_options_t_list ob x;
  Buffer.contents ob
let read__k_EmailAccount_options_t_list = (
  Atdgen_runtime.Oj_run.read_list (
    read_k_EmailAccount_options_t
  )
)
let _k_EmailAccount_options_t_list_of_string s =
  read__k_EmailAccount_options_t_list (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
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
      write_k_EmailAccount_status_t
    )
      ob x.status;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"blocking_status\":";
    (
      write__nullable_2146145
    )
      ob x.blocking_status;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"options\":";
    (
      write__k_EmailAccount_options_t_list
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
                  read_k_EmailAccount_status_t
                ) p lb
              )
            );
          | 7 ->
            field_blocking_status := (
              Some (
                (
                  read__nullable_2146145
                ) p lb
              )
            );
          | 8 ->
            field_options := (
              Some (
                (
                  read__k_EmailAccount_options_t_list
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
                    read_k_EmailAccount_status_t
                  ) p lb
                )
              );
            | 7 ->
              field_blocking_status := (
                Some (
                  (
                    read__nullable_2146145
                  ) p lb
                )
              );
            | 8 ->
              field_options := (
                Some (
                  (
                    read__k_EmailAccount_options_t_list
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
let write_k_DSLAccess_status_t = (
  fun ob x ->
    match x with
      | `In_service -> Buffer.add_string ob "\"in_service\""
      | `Setup_pending -> Buffer.add_string ob "\"setup_pending\""
      | `Suspended -> Buffer.add_string ob "\"suspended\""
      | `Cancelled -> Buffer.add_string ob "\"Cancelled\""
      | `Cancellation_pending -> Buffer.add_string ob "\"cancellation_pending\""
)
let string_of_k_DSLAccess_status_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_DSLAccess_status_t ob x;
  Buffer.contents ob
let read_k_DSLAccess_status_t = (
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
            | "Cancelled" ->
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
            | "Cancelled" ->
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
let k_DSLAccess_status_t_of_string s =
  read_k_DSLAccess_status_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_DSLAccess_options_t = (
  fun ob x ->
    match x with
      | `Sms -> Buffer.add_string ob "\"sms\""
      | `Crypt -> Buffer.add_string ob "\"crypt\""
      | `Supervision -> Buffer.add_string ob "\"supervision\""
      | `Iphone -> Buffer.add_string ob "\"iphone\""
)
let string_of_k_DSLAccess_options_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_DSLAccess_options_t ob x;
  Buffer.contents ob
let read_k_DSLAccess_options_t = (
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
let k_DSLAccess_options_t_of_string s =
  read_k_DSLAccess_options_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_DSLAccess_blocking_status_t = (
  fun ob x ->
    match x with
      | `Pending -> Buffer.add_string ob "\"pending\""
      | `Blocked -> Buffer.add_string ob "\"blocked\""
)
let string_of_k_DSLAccess_blocking_status_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_DSLAccess_blocking_status_t ob x;
  Buffer.contents ob
let read_k_DSLAccess_blocking_status_t = (
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
let k_DSLAccess_blocking_status_t_of_string s =
  read_k_DSLAccess_blocking_status_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__nullable_91a4b3b = (
  Atdgen_runtime.Oj_run.write_nullable (
    write_k_DSLAccess_blocking_status_t
  )
)
let string_of__nullable_91a4b3b ?(len = 1024) x =
  let ob = Buffer.create len in
  write__nullable_91a4b3b ob x;
  Buffer.contents ob
let read__nullable_91a4b3b = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    (if Yojson.Safe.read_null_if_possible p lb then None
    else Some ((
      read_k_DSLAccess_blocking_status_t
    ) p lb) : _ option)
)
let _nullable_91a4b3b_of_string s =
  read__nullable_91a4b3b (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__k_DSLAccess_options_t_list = (
  Atdgen_runtime.Oj_run.write_list (
    write_k_DSLAccess_options_t
  )
)
let string_of__k_DSLAccess_options_t_list ?(len = 1024) x =
  let ob = Buffer.create len in
  write__k_DSLAccess_options_t_list ob x;
  Buffer.contents ob
let read__k_DSLAccess_options_t_list = (
  Atdgen_runtime.Oj_run.read_list (
    read_k_DSLAccess_options_t
  )
)
let _k_DSLAccess_options_t_list_of_string s =
  read__k_DSLAccess_options_t_list (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
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
      write_k_DSLAccess_status_t
    )
      ob x.status;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"blocking_status\":";
    (
      write__nullable_91a4b3b
    )
      ob x.blocking_status;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"options\":";
    (
      write__k_DSLAccess_options_t_list
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
                  read_k_DSLAccess_status_t
                ) p lb
              )
            );
          | 7 ->
            field_blocking_status := (
              Some (
                (
                  read__nullable_91a4b3b
                ) p lb
              )
            );
          | 8 ->
            field_options := (
              Some (
                (
                  read__k_DSLAccess_options_t_list
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
                    read_k_DSLAccess_status_t
                  ) p lb
                )
              );
            | 7 ->
              field_blocking_status := (
                Some (
                  (
                    read__nullable_91a4b3b
                  ) p lb
                )
              );
            | 8 ->
              field_options := (
                Some (
                  (
                    read__k_DSLAccess_options_t_list
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
let write_k_ACDService_status_t = (
  fun ob x ->
    match x with
      | `In_service -> Buffer.add_string ob "\"in_service\""
      | `Setup_pending -> Buffer.add_string ob "\"setup_pending\""
      | `Suspended -> Buffer.add_string ob "\"suspended\""
      | `Cancelled -> Buffer.add_string ob "\"cancelled\""
      | `Cancellation_pending -> Buffer.add_string ob "\"cancellation_pending\""
)
let string_of_k_ACDService_status_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_ACDService_status_t ob x;
  Buffer.contents ob
let read_k_ACDService_status_t = (
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
let k_ACDService_status_t_of_string s =
  read_k_ACDService_status_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_ACDService_options_t = (
  fun ob x ->
    match x with
      | `Sms -> Buffer.add_string ob "\"sms\""
      | `Crypt -> Buffer.add_string ob "\"crypt\""
      | `Supervision -> Buffer.add_string ob "\"supervision\""
      | `Iphone -> Buffer.add_string ob "\"iphone\""
)
let string_of_k_ACDService_options_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_ACDService_options_t ob x;
  Buffer.contents ob
let read_k_ACDService_options_t = (
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
let k_ACDService_options_t_of_string s =
  read_k_ACDService_options_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_k_ACDService_blocking_status_t = (
  fun ob x ->
    match x with
      | `Pending -> Buffer.add_string ob "\"pending\""
      | `Blocked -> Buffer.add_string ob "\"blocked\""
)
let string_of_k_ACDService_blocking_status_t ?(len = 1024) x =
  let ob = Buffer.create len in
  write_k_ACDService_blocking_status_t ob x;
  Buffer.contents ob
let read_k_ACDService_blocking_status_t = (
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
let k_ACDService_blocking_status_t_of_string s =
  read_k_ACDService_blocking_status_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__nullable_7b64331 = (
  Atdgen_runtime.Oj_run.write_nullable (
    write_k_ACDService_blocking_status_t
  )
)
let string_of__nullable_7b64331 ?(len = 1024) x =
  let ob = Buffer.create len in
  write__nullable_7b64331 ob x;
  Buffer.contents ob
let read__nullable_7b64331 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    (if Yojson.Safe.read_null_if_possible p lb then None
    else Some ((
      read_k_ACDService_blocking_status_t
    ) p lb) : _ option)
)
let _nullable_7b64331_of_string s =
  read__nullable_7b64331 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__k_ACDService_options_t_list = (
  Atdgen_runtime.Oj_run.write_list (
    write_k_ACDService_options_t
  )
)
let string_of__k_ACDService_options_t_list ?(len = 1024) x =
  let ob = Buffer.create len in
  write__k_ACDService_options_t_list ob x;
  Buffer.contents ob
let read__k_ACDService_options_t_list = (
  Atdgen_runtime.Oj_run.read_list (
    read_k_ACDService_options_t
  )
)
let _k_ACDService_options_t_list_of_string s =
  read__k_ACDService_options_t_list (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
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
      write_k_ACDService_status_t
    )
      ob x.status;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"blocking_status\":";
    (
      write__nullable_7b64331
    )
      ob x.blocking_status;
    if !is_first then
      is_first := false
    else
      Buffer.add_char ob ',';
      Buffer.add_string ob "\"options\":";
    (
      write__k_ACDService_options_t_list
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
                  read_k_ACDService_status_t
                ) p lb
              )
            );
          | 7 ->
            field_blocking_status := (
              Some (
                (
                  read__nullable_7b64331
                ) p lb
              )
            );
          | 8 ->
            field_options := (
              Some (
                (
                  read__k_ACDService_options_t_list
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
                    read_k_ACDService_status_t
                  ) p lb
                )
              );
            | 7 ->
              field_blocking_status := (
                Some (
                  (
                    read__nullable_7b64331
                  ) p lb
                )
              );
            | 8 ->
              field_options := (
                Some (
                  (
                    read__k_ACDService_options_t_list
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
