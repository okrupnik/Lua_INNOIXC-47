local Clm5Customers = {}
local Clm5Customers_mt = {__metatable = {}, __index = Clm5Customers}

-----------------------------------------------------------------------------
-- Create a new Clm5Customers.
--
-- @param customers_parametrs    the table is got from the json request.
-- @return                      a table with customers parameters.
-----------------------------------------------------------------------------
function Clm5Customers:new(customers_parametrs)
    local obj = setmetatable({}, Clm5Customers_mt)
    obj.cus_acc_id =  customers_parametrs.cus_acc_id
    obj.cus_advertising_permission = customers_parametrs.cus_advertising_permission
    obj.cus_audit_cu = customers_parametrs.cus_audit_cu
    obj.cus_audit_md = customers_parametrs.cus_audit_md
    obj.cus_audit_mu = customers_parametrs.cus_audit_mu
    obj.cus_birthday_change_date = customers_parametrs.cus_birthday_change_date
    obj.cus_birth_date = customers_parametrs.cus_birth_date
    obj.cus_blocked_reason = customers_parametrs.cus_blocked_reason
    obj.cus_data_process_consent_type = customers_parametrs.cus_data_process_consent_type
    obj.cus_enrolment_channel = customers_parametrs.cus_enrolment_channel
    obj.cus_enrolment_date = customers_parametrs.cus_enrolment_date
    obj.cus_family_status =  customers_parametrs.cus_family_status
    obj.cus_first_name = customers_parametrs.cus_first_name
    obj.cus_gender = customers_parametrs.cus_gender
    obj.cus_golden = customers_parametrs.cus_golden
    obj.cus_hh_contribution = customers_parametrs.cus_hh_contribution
    obj.cus_hh_exit_accepted_date = customers_parametrs.cus_hh_exit_accepted_date
    obj.cus_hh_issued_points = customers_parametrs.cus_hh_issued_points
    obj.cus_hh_join_accepted_date = customers_parametrs.cus_hh_join_accepted_date
    obj.cus_hh_join_date = customers_parametrs.cus_hh_join_date
    obj.cus_hh_lock_date = customers_parametrs.cus_hh_lock_date
    obj.cus_hh_relationship_type = customers_parametrs.cus_hh_relationship_type
    obj.cus_id =  customers_parametrs.cus_id
    obj.cus_last_name = customers_parametrs.cus_last_name
    obj.cus_lpo_id = customers_parametrs.cus_lpo_id
    obj.cus_main_identifier_id = customers_parametrs.cus_main_identifier_id
    obj.cus_middle_name = customers_parametrs.cus_middle_name
    obj.cus_permission_adverts = customers_parametrs.cus_permission_adverts
    obj.cus_permission_email = customers_parametrs.cus_permission_email
    obj.cus_permission_email_adverts = customers_parametrs.cus_permission_email_adverts
    obj.cus_permission_facebook = customers_parametrs.cus_permission_facebook
    obj.cus_permission_household = customers_parametrs.cus_permission_household
    obj.cus_permission_info = customers_parametrs.cus_permission_info
    obj.cus_permission_offers =  customers_parametrs.cus_permission_offers
    obj.cus_permission_phone = customers_parametrs.cus_permission_phone
    obj.cus_permission_phone_adverts = customers_parametrs.cus_permission_phone_adverts
    obj.cus_permission_post = customers_parametrs.cus_permission_post
    obj.cus_permission_push = customers_parametrs.cus_permission_push
    obj.cus_permission_push_adverts = customers_parametrs.cus_permission_push_adverts
    obj.cus_permission_remove_avatar = customers_parametrs.cus_permission_remove_avatar
    obj.cus_permission_segmentation = customers_parametrs.cus_permission_segmentation
    obj.cus_permission_sms = customers_parametrs.cus_permission_sms
    obj.cus_permission_sms_adverts = customers_parametrs.cus_permission_sms_adverts
    obj.cus_status = customers_parametrs.cus_status
    obj.cus_status_md = customers_parametrs.cus_status_md
    obj.cus_times_birthday_changed = customers_parametrs.cus_times_birthday_changed
    obj.cus_t_c_accepted_date = customers_parametrs.cus_t_c_accepted_date
    obj.identifiers = customers_parametrs.identifiers
    obj.children = customers_parametrs.children
    obj.addresses = customers_parametrs.addresses

    return obj
end

function Clm5Customers:get_cus_acc_id()
    return self.cus_acc_id
end

function Clm5Customers:get_cus_advertising_permission()
    return self.cus_advertising_permission
end

function Clm5Customers:get_cus_audit_cu()
    return self.cus_audit_cu
end

function Clm5Customers:get_cus_audit_md()
    return self.cus_audit_md
end

function Clm5Customers:get_cus_audit_mu()
    return self.cus_audit_mu
end

function Clm5Customers:get_cus_birthday_change_date()
    return self.cus_birthday_change_date
end

function Clm5Customers:get_cus_birth_date()
    return self.cus_birth_date
end

function Clm5Customers:get_cus_blocked_reason()
    return self.cus_blocked_reason
end

function Clm5Customers:get_cus_data_process_consent_type()
    return self.cus_data_process_consent_type
end

function Clm5Customers:get_cus_enrolment_channel()
    return self.cus_enrolment_channel
end

function Clm5Customers:get_cus_enrolment_date()
    return self.cus_enrolment_date
end

function Clm5Customers:get_cus_family_status()
    return self.cus_family_status
end

function Clm5Customers:get_cus_first_name()
    return self.cus_first_name
end

function Clm5Customers:get_cus_gender()
    return self.cus_gender
end

function Clm5Customers:get_cus_golden()
    return self.cus_golden
end

function Clm5Customers:get_cus_hh_contribution()
    return self.cus_hh_contribution
end

function Clm5Customers:get_cus_hh_exit_accepted_date()
    return self.cus_hh_exit_accepted_date
end

function Clm5Customers:get_cus_hh_issued_points()
    return self.cus_hh_issued_points
end

function Clm5Customers:get_cus_hh_join_accepted_date()
    return self.cus_hh_join_accepted_date
end

function Clm5Customers:get_cus_hh_join_date()
    return self.cus_hh_join_date
end

function Clm5Customers:get_cus_hh_lock_date()
    return self.cus_hh_lock_date
end

function Clm5Customers:get_cus_hh_relationship_type()
    return self.cus_hh_relationship_type
end

function Clm5Customers:get_cus_id()
    return self.cus_id
end

function Clm5Customers:get_cus_last_name()
    return self.cus_last_name
end

function Clm5Customers:get_cus_lpo_id()
    return self.cus_lpo_id
end

function Clm5Customers:get_cus_main_identifier_id()
    return self.cus_main_identifier_id
end

function Clm5Customers:get_cus_middle_name()
    return self.cus_middle_name
end

function Clm5Customers:get_cus_permission_adverts()
    return self.cus_permission_adverts
end

function Clm5Customers:get_cus_permission_email()
    return self.cus_permission_email
end

function Clm5Customers:get_cus_permission_email_adverts()
    return self.cus_permission_email_adverts
end

function Clm5Customers:get_cus_permission_facebook()
    return self.cus_permission_facebook
end

function Clm5Customers:get_cus_permission_household()
    return self.cus_permission_household
end

function Clm5Customers:get_cus_permission_info()
    return self.cus_permission_info
end

function Clm5Customers:get_cus_permission_offers()
    return self.cus_permission_offers
end

function Clm5Customers:get_cus_permission_phone()
    return self.cus_permission_phone
end

function Clm5Customers:get_cus_permission_phone_adverts()
    return self.cus_permission_phone_adverts
end

function Clm5Customers:get_cus_permission_post()
    return self.cus_permission_post
end

function Clm5Customers:get_cus_permission_push()
    return self.cus_permission_push
end

function Clm5Customers:get_cus_permission_push_adverts()
    return self.cus_permission_push_adverts
end

function Clm5Customers:get_cus_permission_remove_avatar()
    return self.cus_permission_remove_avatar
end

function Clm5Customers:get_cus_permission_segmentation()
    return self.cus_permission_segmentation
end

function Clm5Customers:get_cus_permission_sms()
    return self.cus_permission_sms
end

function Clm5Customers:get_cus_permission_sms_adverts()
    return self.cus_permission_sms_adverts
end

function Clm5Customers:get_cus_status()
    return self.cus_status
end

function Clm5Customers:get_cus_status_md()
    return self.cus_status_md
end

function Clm5Customers:get_cus_times_birthday_changed()
    return self.cus_times_birthday_changed
end

function Clm5Customers:get_cus_t_c_accepted_date()
    return self.cus_t_c_accepted_date
end

function Clm5Customers:get_identifiers()
    return self.identifiers
end

function Clm5Customers:get_children()
    return self.children
end

function Clm5Customers:get_addresses()
    return self.addresses
end