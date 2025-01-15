
let () = 

  let service = Keyyo.Types.ACDService.create 
    ~csi:"hello"
    ~formatted_csi:"hello"
    ~name:"hello"
    ~offer_id:1
    ~offer_name:"hello"
    ~commitment_start_date:"hello"
    ~status:`Cancelled
    ~blocking_status:(Some `Blocked)
    ~options:[`Sms] 
    () in
  let _str = Keyyo.Types.ACDService.to_pretty_json service in 
  print_endline "data: ACDService create/to_string ok";

  let scope = Keyyo.Types.AudioFile.create
    ~id:0
    ~name:"name"
    ~atype:"type"
    ~is_personal:true
    ~base46_contents:"lkj"
    () in
  let _ = Keyyo.Types.AudioFile.to_pretty_json scope in 
  print_endline "data: AdioFile create/to_string ok";

  let profile = Keyyo.Types.ACDProfile.create
    ~identifier:0
    ~name:"hel"
    ~forced:true
    () in
  let _ = Keyyo.Types.ACDProfile.to_pretty_json profile in 
  print_endline "data: ACDProfile create/to_string ok";

  let call_baring_group = Keyyo.Types.CallBaringGroup.create ~name:"hl" () in
  let _ = Keyyo.Types.CallBaringGroup.to_pretty_json call_baring_group in
  print_endline "data: CallBaringGroup create/to_string ok";

  let csi_token = Keyyo.Types.CSIToken.create 
    ~result:`Success
    ~token:"lkh"
    ~domain_masks:[]
    ~timestamp:0
    ()  in
  let _ = Keyyo.Types.CSIToken.to_pretty_json csi_token in
  print_endline "data: CSIToken create/to_string ok"




