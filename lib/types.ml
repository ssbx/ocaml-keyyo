module Defs_t = Data.Definitions_t
module Defs_j = Data.Definitions_j
module Defs_v = Data.Definitions_v

module Status = struct
  type t = Defs_t.k_Status_t
  let of_string = Defs_j.k_Status_t_of_string
  let to_string = Defs_j.string_of_k_Status_t
end

module BlockingStatus = struct
  type t = Defs_t.k_Blocking_status_t
  let of_string = Defs_j.k_Blocking_status_t_of_string
  let to_string = Defs_j.string_of_k_Blocking_status_t
end

module Options = struct
  type t = Defs_t.k_Options_t
  let of_string = Defs_j.k_Options_t_of_string
  let to_string = Defs_j.string_of_k_Options_t
end


module Scope = struct
  (** 
   * Scopes are strings that enable access to specific resources. Please 
   * refer to the OAuth Documentation for additional information.
   *
   * `Full_access 	Full access in read/write mode to the entire Manager API
   * `Full_access_read_only 	Full read-only access to the entire Manager API
   * `Voip_profiles_admin 	VoIP Profiles administration (Allows you to 
   *    create, edit and/or delete your VoIP accounts' profiles)
   * `Cti_admin 	Computer-Telephony Integration (CTI) administration (Allows 
   *    you to generate CSI tokens and manage CTI plugins on your 
   *    SIP accounts) *)

  type t = Defs_t.k_Scope_t

  let of_string = Defs_j.k_Scope_t_of_string
  let to_string = Defs_j.string_of_k_Scope_t
end

module ACDProfile = struct

  (** An ACDProfile is a set of settings you can change to use your ACD 
   * service *)

  type t = Defs_t.k_ACDProfile_t
  (**
   * identifier 	The unique identifier of this profile
   * name 	The name of this profile
   * forced 	Whether this profile is currently being forced *)

  let create = Defs_v.create_k_ACDProfile_t
  let of_string = Defs_j.k_ACDProfile_t_of_string
  let to_string = Defs_j.string_of_k_ACDProfile_t
  let to_pretty_json v = to_string v |> Yojson.Safe.prettify
end

module ACDService = struct

  (** A call group service *)

  type t = Defs_t.k_ACDService_t
  (**
   * csi 	The Common Service Identifier (CSI) of the service
   * formatted_csi 	The formatted (human-redable) Common Service Identifier 
   *   (CSI) of the service
   * name 	The name associated with the service
   * offer_id 	The unique identifier of the offer this service is associated to
   * offer_name 	The name of the offer this service is associated to
   * commitment_start_date 	date when the commitment to the offer begins
   * status 	The status of this service. Can be one of: 
   *   `In_service, `Setup_pending, `Suspended, 
   *   `Cancelled, `Cancellation_pending
   * blocking_status 	The blocking status of this service. Can be one of:
   *   Some `Pending, Some `Blocked, or None (non-blocked)
   * options 	Return the list of commercial options enabled on this service. 
   *   Can contain one or several of: 
   *     `Sms, `Crypt, `Supervision, `Iphone *)

  let of_string = Defs_j.k_ACDService_t_of_string
  let to_string = Defs_j.string_of_k_ACDService_t
  let create = Defs_v.create_k_ACDService_t
  let to_pretty_json v = to_string v |> Yojson.Safe.prettify

  end

module AudioFile = struct

  (** An audio file available on a service's voicemail *)

  type t = Defs_t.k_AudioFile_t
  (**
   * id 	The unique identifier of this audio file
   * name 	The name of this audio file
   * type 	The type of this audio file
   * is_personal 	Whether this audio file is private
   * base64_contents 	The base64-encoded contents of this audio file ) *)

  let create = Defs_v.create_k_AudioFile_t
  let of_string = Defs_j.k_AudioFile_t_of_string
  let to_string = Defs_j.string_of_k_AudioFile_t
  let to_pretty_json v = to_string v |> Yojson.Safe.prettify
end

module CallBaringGroup = struct

  (** A call baring group is used to block certain incoming or 
      outgoing calls *)

  type t = Defs_t.k_CallBarringGroup_t
  (**
   * name 	Call barring group name (refer to your contract for more details 
   * about groups) *)

  let create = Defs_v.create_k_CallBarringGroup_t
  let of_string = Defs_j.k_CallBarringGroup_t_of_string
  let to_string = Defs_j.string_of_k_CallBarringGroup_t
  let to_pretty_json v = to_string v |> Yojson.Safe.prettify
end

module CallDetailRecord = struct

  (** A call detail record stores data about a call coming from or received 
      by one of this account's telephony services *)

  type t = Defs_t.k_CallDetailRecord_t
  (**
   * call_id 	The unique identifier of the call
   * start_time 	The Unix timestamp corresponding to the start of the call
   * callee 	The formatted callee number for the call (e.g. +33123456789)
   * callee_raw 	The raw callee number for the call (e.g. 33123456789)
   * caller 	The formatted caller number for the call (e.g. +33123456789)
   * caller_raw 	The raw caller number for the call (e.g. 33123456789)
   * caller_presentation 	The formatted caller presented number for 
   *   the call (e.g. +33123456789)
   * caller_presentation_raw 	The raw caller presented number for the 
   *   call (e.g. 33123456789)
   * quantity 	The total quantity for the call (related to the unit)
   * quantity_billed 	The billed quantity for the call (related to the unit)
   * destination_name 	The destination type that applies to the callee 
   *   for an outgoing call
   * cost 	The cost for the call
   * repayment 	The repayment for the call (applies to VAS numbers)
   * unit 	The unit defining the kind of records (e.g. second, sms, ko, 
   *   textmms or mms)
   * roaming 	1 if roaming applied else 0
   * translation_number 	The formatted translation number used for 
   *   the call if applicable (e.g. +33123456789)
   * translation_number_raw 	The raw translation number used for 
   *   the call if applicable (e.g. 33123456789) *)

  let create = Defs_v.create_k_CallDetailRecord_t
  let of_string = Defs_j.k_CallDetailRecord_t_of_string
  let to_string = Defs_j.string_of_k_CallDetailRecord_t
  let to_pretty_json v = to_string v |> Yojson.Safe.prettify
end

module CSIToken = struct

  (** A CSI token associated with a VoIP account. *)

  type t = Defs_t.k_CSIToken_t
  (**
   * result If not equal to "success", means the token value could 
   *  not be generated
   * token 	The actual value of the token (string)
   * domain_masks 	An array of domain masks, of the form domain.ext, 
   *  subdomain.domain.ext or *.domain.ext
   * timestamp 	The UNIX timestamp after which the token will expire *)

  let create = Defs_v.create_k_CSIToken_t
  let of_string = Defs_j.k_CSIToken_t_of_string
  let to_string = Defs_j.string_of_k_CSIToken_t
  let to_pretty_json v = to_string v |> Yojson.Safe.prettify

end

module CTIPlugin = struct

  (** 
   * A CTI plugin allows you to enable/disable and parameter 
   * Computer-Telephony Integration functionality on your VoIP account 
   * (UCaaSVoIPAccount service type) *)

  type t = Defs_t.k_CTIPlugin_t
  (**
   * name 	CTI plugin's name enabled 	Whether or not this plugin 
   * is enabled *)

  let create = Defs_v.create_k_CTIPlugin_t
  let of_string = Defs_j.k_CTIPlugin_t_of_string
  let to_string = Defs_j.string_of_k_CTIPlugin_t
  let to_pretty_json v = to_string v |> Yojson.Safe.prettify

end

module CTIPluginParameter = struct

  type t = Defs_t.k_CTIPluginParameter_t

  let create = Defs_v.create_k_CTIPluginParameter_t
  let of_string = Defs_j.k_CTIPluginParameter_t_of_string
  let to_string = Defs_j.string_of_k_CTIPluginParameter_t
  let to_pretty_json v = to_string v |> Yojson.Safe.prettify

end

module DataUsageStatistic = struct

  type t = Defs_t.k_DataUsageStatistic_t

  let create = Defs_v.create_k_DataUsageStatistic_t
  let of_string = Defs_j.k_DataUsageStatistic_t_of_string
  let to_string = Defs_j.string_of_k_DataUsageStatistic_t
  let to_pretty_json v = to_string v |> Yojson.Safe.prettify

end

module DirectoryContact = struct

  type t = Defs_t.k_DirectoryContact_t

  let create = Defs_v.create_k_DirectoryContact_t
  let of_string = Defs_j.k_DirectoryContact_t_of_string
  let to_string = Defs_j.string_of_k_DirectoryContact_t
  let to_pretty_json v = to_string v |> Yojson.Safe.prettify

end

module DirectoryBranch = struct

  type t = Defs_t.k_DirectoryBranch_t

  let create = Defs_v.create_k_DirectoryBranch_t
  let of_string = Defs_j.k_DirectoryBranch_t_of_string
  let to_string = Defs_j.string_of_k_DirectoryBranch_t
  let to_pretty_json v = to_string v |> Yojson.Safe.prettify

end


module DSLAccess = struct

  type t = Defs_t.k_DSLAccess_t

  let create = Defs_v.create_k_DSLAccess_t
  let of_string = Defs_j.k_DSLAccess_t_of_string
  let to_string = Defs_j.string_of_k_DSLAccess_t
  let to_pretty_json v = to_string v |> Yojson.Safe.prettify

end


module EmailAccount = struct

  type t = Defs_t.k_EmailAccount_t

  let create = Defs_v.create_k_EmailAccount_t
  let of_string = Defs_j.k_EmailAccount_t_of_string
  let to_string = Defs_j.string_of_k_EmailAccount_t
  let to_pretty_json v = to_string v |> Yojson.Safe.prettify

end


module FaxTransfer = struct

  type t = Defs_t.k_FaxTransfer_t

  let create = Defs_v.create_k_FaxTransfer_t
  let of_string = Defs_j.k_FaxTransfer_t_of_string
  let to_string = Defs_j.string_of_k_FaxTransfer_t
  let to_pretty_json v = to_string v |> Yojson.Safe.prettify

end


module MinutePlanStatistic = struct

  type t = Defs_t.k_MinutePlanStatistic_t

  let create = Defs_v.create_k_MinutePlanStatistic_t
  let of_string = Defs_j.k_MinutePlanStatistic_t_of_string
  let to_string = Defs_j.string_of_k_MinutePlanStatistic_t
  let to_pretty_json v = to_string v |> Yojson.Safe.prettify

end


module MobileAccount = struct

  type t = Defs_t.k_MobileAccount_t

  let create = Defs_v.create_k_MobileAccount_t
  let of_string = Defs_j.k_MobileAccount_t_of_string
  let to_string = Defs_j.string_of_k_MobileAccount_t
  let to_pretty_json v = to_string v |> Yojson.Safe.prettify

end


module Number = struct

  type t = Defs_t.k_Number_t

  let create = Defs_v.create_k_Number_t
  let of_string = Defs_j.k_Number_t_of_string
  let to_string = Defs_j.string_of_k_Number_t
  let to_pretty_json v = to_string v |> Yojson.Safe.prettify

end


module NumberTranslation = struct

  type t = Defs_t.k_NumberTranslation_t

  let create = Defs_v.create_k_NumberTranslation_t
  let of_string = Defs_j.k_NumberTranslation_t_of_string
  let to_string = Defs_j.string_of_k_NumberTranslation_t
  let to_pretty_json v = to_string v |> Yojson.Safe.prettify

end


module Offer = struct

  type t = Defs_t.k_Offer_t

  let create = Defs_v.create_k_Offer_t
  let of_string = Defs_j.k_Offer_t_of_string
  let to_string = Defs_j.string_of_k_Offer_t
  let to_pretty_json v = to_string v |> Yojson.Safe.prettify

end


module Profile = struct

  type t = Defs_t.k_Profile_t

  let create = Defs_v.create_k_Profile_t
  let of_string = Defs_j.k_Profile_t_of_string
  let to_string = Defs_j.string_of_k_Profile_t
  let to_pretty_json v = to_string v |> Yojson.Safe.prettify

end


module ProvisioningTask = struct

  type t = Defs_t.k_ProvisioningTask_t

  let create = Defs_v.create_k_ProvisioningTask_t
  let of_string = Defs_j.k_ProvisioningTask_t_of_string
  let to_string = Defs_j.string_of_k_ProvisioningTask_t
  let to_pretty_json v = to_string v |> Yojson.Safe.prettify

end


module ServiceUpgrade = struct

  type t = Defs_t.k_ServiceUpgrade_t

  let create = Defs_v.create_k_ServiceUpgrade_t
  let of_string = Defs_j.k_ServiceUpgrade_t_of_string
  let to_string = Defs_j.string_of_k_ServiceUpgrade_t
  let to_pretty_json v = to_string v |> Yojson.Safe.prettify

end


module SIPRecord = struct

  type t = Defs_t.k_SIPRecord_t

  let create = Defs_v.create_k_SIPRecord_t
  let of_string = Defs_j.k_SIPRecord_t_of_string
  let to_string = Defs_j.string_of_k_SIPRecord_t
  let to_pretty_json v = to_string v |> Yojson.Safe.prettify

end

module UCaaSVoIPAccount = struct

  type t = Defs_t.k_UCaaSVoIPAccount_t

  let create = Defs_v.create_k_UCaaSVoIPAccount_t
  let of_string = Defs_j.k_UCaaSVoIPAccount_t_of_string
  let to_string = Defs_j.string_of_k_UCaaSVoIPAccount_t
  let to_pretty_json v = to_string v |> Yojson.Safe.prettify

end

module VirtualFaxAccount = struct

  type t = Defs_t.k_VirtualFaxAccount_t

  let create = Defs_v.create_k_VirtualFaxAccount_t
  let of_string = Defs_j.k_VirtualFaxAccount_t_of_string
  let to_string = Defs_j.string_of_k_VirtualFaxAccount_t
  let to_pretty_json v = to_string v |> Yojson.Safe.prettify

end

module Voicemail = struct

  type t = Defs_t.k_Voicemail_t

  let create = Defs_v.create_k_Voicemail_t
  let of_string = Defs_j.k_Voicemail_t_of_string
  let to_string = Defs_j.string_of_k_Voicemail_t
  let to_pretty_json v = to_string v |> Yojson.Safe.prettify

end

module VoIPAccountProfile = struct

  type t = Defs_t.k_VoIPAccountProfile_t

  let create = Defs_v.create_k_VoIPAccountProfile_t
  let of_string = Defs_j.k_VoIPAccountProfile_t_of_string
  let to_string = Defs_j.string_of_k_VoIPAccountProfile_t
  let to_pretty_json v = to_string v |> Yojson.Safe.prettify

end

module VoicemailMessage = struct

  type t = Defs_t.k_VoicemailMessage_t

  let create = Defs_v.create_k_VoicemailMessage_t
  let of_string = Defs_j.k_VoicemailMessage_t_of_string
  let to_string = Defs_j.string_of_k_VoicemailMessage_t
  let to_pretty_json v = to_string v |> Yojson.Safe.prettify

end

