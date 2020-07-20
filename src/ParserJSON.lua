local json_request = [[{
	"accounts": {
		"acc_owner_cus_id": "11",
		"acc_audit_md": "acc_audit",
		"acc_audit_mu": "22",
		"acc_hh_creation_date ": "44",
		"acc_status": "acc_status",
		"acc_id": "55",
		"customers": [
			{
				"cus_acc_id": "11",
				"cus_advertising_permission": "cus_advertising_permission",
				"cus_audit_cu": "22",
				"cus_audit_md": "cus_audit_md",
				"cus_audit_mu": "33",
				"cus_birthday_change_date": "Date",
				"cus_birth_date": "Date",
				"cus_blocked_reason": "cus_blocked_reason",
				"cus_data_process_consent_type": "cus_data_process_consent_type",
				"cus_enrolment_channel": "cus_enrolment_channel",
				"cus_enrolment_date": "Date",
				"cus_family_status": "cus_family_status",
				"cus_first_name": "cus_first_name",
				"cus_gender": "cus_gender",
				"cus_golden": "cus_golden",
				"cus_hh_contribution": "44",
				"cus_hh_exit_accepted_date": "Date",
				"cus_hh_issued_points": "55",
				"cus_hh_join_accepted_date": "Date",
				"cus_hh_join_date": "Date",
				"cus_hh_lock_date": "Date",
				"cus_hh_relationship_type": "cus_hh_relationship_type",
				"cus_id": "66",
				"cus_last_name": "cus_last_name",
				"cus_lpo_id": "77",
				"cus_main_identifier_id": "88",
				"cus_middle_name": "cus_middle_name",
				"cus_permission_adverts": "cus_permission_adverts",
				"cus_permission_email": "cus_permission_email",
				"cus_permission_email_adverts": "cus_permission_email_adverts",
				"cus_permission_facebook": "cus_permission_facebook",
				"cus_permission_household": "cus_permission_household",
				"cus_permission_info": "cus_permission_info",
				"cus_permission_offers": "cus_permission_offers",
				"cus_permission_phone": "cus_permission_phone",
				"cus_permission_phone_adverts": "cus_permission_phone_adverts",
				"cus_permission_post": "cus_permission_post",
				"cus_permission_push": "cus_permission_push",
				"cus_permission_push_adverts": "cus_permission_push_adverts",
				"cus_permission_remove_avatar ": "cus_permission_remove_avatar",
				"cus_permission_segmentation": "cus_permission_segmentation",
				"cus_permission_sms": "cus_permission_sms",
				"cus_permission_sms_adverts": "cus_permission_sms_adverts",
				"cus_status": "cus_status",
				"cus_status_md": "Date",
				"cus_times_birthday_changed": "99",
				"cus_t_c_accepted_date": "Date",
				"identifiers": [
					{
						"ind_acc_id": "11",
						"ind_audit_md": "ind_audit_md",
						"ind_audit_mu": "22",
						"ind_blocked_by": "33",
						"ind_blocked_reason": "ind_blocked_reason",
						"ind_cus_id": "44",
						"ind_id": "55",
						"ind_idt_id ": "66",
						"ind_no": "ind_no",
						"ind_pan": "ind_pan",
						"ind_status": "ind_status"
					}
				],
				"addresses": [
					{
						"adr_city": "adr_city_Minsk",
						"adr_corpus": "adr_corpus_25",
						"adr_country": "adr_country_Belarus",
						"adr_email": "adr_email_@_com",
						"adr_fax": "adr_fax_+375-17-1112233",
						"adr_flat_no": "adr_flat_no_13",
						"adr_house_frac": "adr_house_frac_25",
						"adr_house_no": "adr_house_no_15",
						"adr_mobile": "adr_mobile_+375-29-4445566",
						"adr_phone": "adr_phone_+375-17-9998877",
						"adr_regione_code": "adr_regione_code_BY",
						"adr_street": "adr_street_Lenina",
						"adr_street_prefix": "",
						"adr_subregion": "adr_subregion_BL",
						"adr_zip_code ": "adr_zip_code_220070"
					}
				],
				"children": [
				    {
				        "chd_pregnancy": "chd_pregnancy",
				        "chd_audit_cd": "Date",
				        "chd_audit_md": "Date",
				        "chd_audit_ru": "11",
				        "chd_sex": "chd_sex_male",
				        "chd_audit_rd": "Date",
				        "chd_audit_cu": "22",
				        "chd_audit_mu": "33",
				        "chd_birth_date": "Date",
				        "chd_id": "44",
				        "chd_name": "chd_name_Child"
				    }
				]
			}
		],
		"merged_accounts": ["66", "77", "88"]
	}
}]]

--[[local Clm5Accounts = {}
local Clm5Accounts_mt = {__metatable = {}, __index = Clm5Accounts}

function Clm5Accounts:new(account_parametrs)
    local obj = setmetatable({}, Clm5Accounts_mt)
    obj.acc_owner_cus_id =  account_parametrs.acc_owner_cus_id
    obj.acc_audit_md = account_parametrs.acc_audit_md
    obj.acc_audit_mu = account_parametrs.acc_audit_mu
    obj.acc_hh_creation_date = account_parametrs.acc_hh_creation_date
    obj.acc_status = account_parametrs.acc_status
    obj.acc_id = account_parametrs.acc_id
    obj.merged_accounts = account_parametrs.merged_accounts

    return obj
end]]

local json = require('json')

local table_from_json = json.decode(json_request)

-----------------------------------------------------------------------------
-- Get accounts parameters from json.
--
-- @param  json_table    the table is got from the json request.
-- @return               a table with accounts parameters.
-----------------------------------------------------------------------------
function create_parameters_for_accounts(json_table)
    local accounts_parameters = {}

    if json_table ~= nil then
        accounts_parameters.acc_owner_cus_id =  json_table.accounts.acc_owner_cus_id
        accounts_parameters.acc_audit_md = json_table.accounts.acc_audit_md
        accounts_parameters.acc_audit_mu = json_table.accounts.acc_audit_mu
        accounts_parameters.acc_hh_creation_date = json_table.accounts.acc_hh_creation_date
        accounts_parameters.acc_status = json_table.accounts.acc_status
        accounts_parameters.acc_id = json_table.accounts.acc_id
        accounts_parameters.merged_accounts = json_table.accounts.merged_accounts
    else
       error('Can not get json data correctly')
    end

    return accounts_parameters
end

--package.path = package.path..";D:/Work/Projects/Lua/Lua_X5_CIP/src/?.lua"
--package.path = package.path.."./?.lua"
--local clm5_accounts = require('Clm5Accounts')

-----------------------------------------------------------------------------
-- Create clm5_accounts from the parameters which is got from json.
--
-- @return   a new created accounts table.
-----------------------------------------------------------------------------
function create_clm5_accounts()
    local accounts = {}
    --if not clm5_accounts then
        accounts = create_parameters_for_accounts(table_from_json)
    --else
        --print('not import')
    --end

    return accounts
end

-----------------------------------------------------------------------------
-- Get identifiers parameters from json.
--
-- @param  json_table    the table is got from the json request.
-- @return               a table with identifiers parameters.
----------------------------------------------------------------------------
function create_parameters_for_identifiers(json_table)
    local identifiers_parameters = {}

    if json_table ~= nil then
        identifiers_parameters.ind_acc_id =  json_table.accounts.customers[1].identifiers[1].ind_acc_id
        identifiers_parameters.ind_audit_md = json_table.accounts.customers[1].identifiers[1].ind_audit_md
        identifiers_parameters.ind_audit_mu = json_table.accounts.customers[1].identifiers[1].ind_audit_mu
        identifiers_parameters.ind_blocked_by = json_table.accounts.customers[1].identifiers[1].ind_blocked_by
        identifiers_parameters.ind_blocked_reason = json_table.accounts.customers[1].identifiers[1].ind_blocked_reason
        identifiers_parameters.ind_cus_id = json_table.accounts.customers[1].identifiers[1].ind_cus_id
        identifiers_parameters.ind_id = json_table.accounts.customers[1].identifiers[1].ind_id
        identifiers_parameters.ind_idt_id = json_table.accounts.customers[1].identifiers[1].ind_idt_id
        identifiers_parameters.ind_no = json_table.accounts.customers[1].identifiers[1].ind_no
        identifiers_parameters.ind_pan = json_table.accounts.customers[1].identifiers[1].ind_pan
        identifiers_parameters.ind_status = json_table.accounts.customers[1].identifiers[1].ind_status
    else
        error('Can not get json data correctly')
    end

    return identifiers_parameters
end

-----------------------------------------------------------------------------
-- Create clm5_identifiers from the parameters which is got from json.
--
-- @return   a new created identifiers table.
-----------------------------------------------------------------------------
function create_clm5_identifiers()
    local identifiers = {}
    --if not clm5_accounts then
    identifiers = create_parameters_for_identifiers(table_from_json)
    --else
    --print('not import')
    --end

    return identifiers
end

-----------------------------------------------------------------------------
-- Get addresses parameters from json.
--
-- @param  json_table    the table is got from the json request.
-- @return               a table with addresses parameters.
----------------------------------------------------------------------------
function create_parameters_for_addresses(json_table)
    local addresses_parameters = {}

    if json_table ~= nil then
        addresses_parameters.adr_city =  json_table.accounts.customers[1].addresses[1].adr_city
        addresses_parameters.adr_corpus = json_table.accounts.customers[1].addresses[1].adr_corpus
        addresses_parameters.adr_country = json_table.accounts.customers[1].addresses[1].adr_country
        addresses_parameters.adr_email = json_table.accounts.customers[1].addresses[1].adr_email
        addresses_parameters.adr_fax = json_table.accounts.customers[1].addresses[1].adr_fax
        addresses_parameters.adr_flat_no = json_table.accounts.customers[1].addresses[1].adr_flat_no
        addresses_parameters.adr_house_frac = json_table.accounts.customers[1].addresses[1].adr_house_frac
        addresses_parameters.adr_house_no = json_table.accounts.customers[1].addresses[1].adr_house_no
        addresses_parameters.adr_mobile = json_table.accounts.customers[1].addresses[1].adr_mobile
        addresses_parameters.adr_phone = json_table.accounts.customers[1].addresses[1].adr_phone
        addresses_parameters.adr_regione_code = json_table.accounts.customers[1].addresses[1].adr_regione_code
        addresses_parameters.adr_street = json_table.accounts.customers[1].addresses[1].adr_street
        addresses_parameters.adr_street_prefix = json_table.accounts.customers[1].addresses[1].adr_street_prefix
        addresses_parameters.adr_subregion = json_table.accounts.customers[1].addresses[1].adr_subregion
        addresses_parameters.adr_zip_code = json_table.accounts.customers[1].addresses[1].adr_zip_code
    else
        error('Can not get json data correctly')
    end

    return addresses_parameters
end

-----------------------------------------------------------------------------
-- Create clm5_addresses from the parameters which is got from json.
--
-- @return   a new created addresses table.
-----------------------------------------------------------------------------
function create_clm5_addresses()
    local addresses = {}
    --if not clm5_accounts then
    addresses = create_parameters_for_addresses(table_from_json)
    --else
    --print('not import')
    --end

    return addresses
end

-----------------------------------------------------------------------------
-- Get children parameters from json.
--
-- @param  json_table    the table is got from the json request.
-- @return               a table with children parameters.
----------------------------------------------------------------------------
function create_parameters_for_children(json_table)
    local children_parameters = {}

    if json_table ~= nil then
        children_parameters.chd_pregnancy =  json_table.accounts.customers[1].children[1].chd_pregnancy
        children_parameters.chd_audit_cd = json_table.accounts.customers[1].children[1].chd_audit_cd
        children_parameters.chd_audit_md = json_table.accounts.customers[1].children[1].chd_audit_md
        children_parameters.chd_audit_ru = json_table.accounts.customers[1].children[1].chd_audit_ru
        children_parameters.chd_sex = json_table.accounts.customers[1].children[1].chd_sex
        children_parameters.chd_audit_rd = json_table.accounts.customers[1].children[1].chd_audit_rd
        children_parameters.chd_audit_cu = json_table.accounts.customers[1].children[1].chd_audit_cu
        children_parameters.chd_audit_mu = json_table.accounts.customers[1].children[1].chd_audit_mu
        children_parameters.chd_birth_date = json_table.accounts.customers[1].children[1].chd_birth_date
        children_parameters.chd_id = json_table.accounts.customers[1].children[1].chd_id
        children_parameters.chd_name = json_table.accounts.customers[1].children[1].chd_name
    else
        error('Can not get json data correctly')
    end

    return children_parameters
end

-----------------------------------------------------------------------------
-- Create clm5_children from the parameters which is got from json.
--
-- @return   a new created children table.
-----------------------------------------------------------------------------
function create_clm5_children()
    local children = {}
    --if not clm5_accounts then
    children = create_parameters_for_children(table_from_json)
    --else
    --print('not import')
    --end

    return children
end

-----------------------------------------------------------------------------
-- Get customers parameters from json.
--
-- @param  json_table    the table is got from the json request.
-- @return               a table with customers parameters.
----------------------------------------------------------------------------
function create_parameters_for_customers(json_table)
    local customers_parameters = {}

    if json_table ~= nil then
        customers_parameters.cus_acc_id =  json_table.accounts.customers[1].cus_acc_id
        customers_parameters.cus_advertising_permission = json_table.accounts.customers[1].cus_advertising_permission
        customers_parameters.cus_audit_cu = json_table.accounts.customers[1].cus_audit_cu
        customers_parameters.cus_audit_md = json_table.accounts.customers[1].cus_audit_md
        customers_parameters.cus_audit_mu = json_table.accounts.customers[1].cus_audit_mu
        customers_parameters.cus_birthday_change_date = json_table.accounts.customers[1].cus_birthday_change_date
        customers_parameters.cus_birth_date = json_table.accounts.customers[1].cus_birth_date
        customers_parameters.cus_blocked_reason = json_table.accounts.customers[1].cus_blocked_reason
        customers_parameters.cus_data_process_consent_type = json_table.accounts.customers[1].cus_data_process_consent_type
        customers_parameters.cus_enrolment_channel = json_table.accounts.customers[1].cus_enrolment_channel
        customers_parameters.cus_enrolment_date = json_table.accounts.customers[1].cus_enrolment_date
        customers_parameters.cus_family_status =  json_table.accounts.customers[1].cus_family_status
        customers_parameters.cus_first_name = json_table.accounts.customers[1].cus_first_name
        customers_parameters.cus_gender = json_table.accounts.customers[1].cus_gender
        customers_parameters.cus_golden = json_table.accounts.customers[1].cus_golden
        customers_parameters.cus_hh_contribution = json_table.accounts.customers[1].cus_hh_contribution
        customers_parameters.cus_hh_exit_accepted_date = json_table.accounts.customers[1].cus_hh_exit_accepted_date
        customers_parameters.cus_hh_issued_points = json_table.accounts.customers[1].cus_hh_issued_points
        customers_parameters.cus_hh_join_accepted_date = json_table.accounts.customers[1].cus_hh_join_accepted_date
        customers_parameters.cus_hh_join_date = json_table.accounts.customers[1].cus_hh_join_date
        customers_parameters.cus_hh_lock_date = json_table.accounts.customers[1].cus_hh_lock_date
        customers_parameters.cus_hh_relationship_type = json_table.accounts.customers[1].cus_hh_relationship_type
        customers_parameters.cus_id = json_table.accounts.customers[1].cus_id
        customers_parameters.cus_last_name = json_table.accounts.customers[1].cus_last_name
        customers_parameters.cus_lpo_id = json_table.accounts.customers[1].cus_lpo_id
        customers_parameters.cus_main_identifier_id = json_table.accounts.customers[1].cus_main_identifier_id
        customers_parameters.cus_middle_name = json_table.accounts.customers[1].cus_middle_name
        customers_parameters.cus_permission_adverts =  json_table.accounts.customers[1].cus_permission_adverts
        customers_parameters.cus_permission_email = json_table.accounts.customers[1].cus_permission_email
        customers_parameters.cus_permission_email_adverts = json_table.accounts.customers[1].cus_permission_email_adverts
        customers_parameters.cus_permission_facebook = json_table.accounts.customers[1].cus_permission_facebook
        customers_parameters.cus_permission_household = json_table.accounts.customers[1].cus_permission_household
        customers_parameters.cus_permission_info = json_table.accounts.customers[1].cus_permission_info
        customers_parameters.cus_permission_offers = json_table.accounts.customers[1].cus_permission_offers
        customers_parameters.cus_permission_phone = json_table.accounts.customers[1].cus_permission_phone
        customers_parameters.cus_permission_phone_adverts = json_table.accounts.customers[1].cus_permission_phone_adverts
        customers_parameters.cus_permission_post = json_table.accounts.customers[1].cus_permission_post
        customers_parameters.cus_permission_push = json_table.accounts.customers[1].cus_permission_push
        customers_parameters.cus_permission_push_adverts = json_table.accounts.customers[1].cus_permission_push_adverts
        customers_parameters.cus_permission_remove_avatar = json_table.accounts.customers[1].cus_permission_remove_avatar
        customers_parameters.cus_permission_segmentation = json_table.accounts.customers[1].cus_permission_segmentation
        customers_parameters.cus_permission_sms = json_table.accounts.customers[1].cus_permission_sms
        customers_parameters.cus_permission_sms_adverts = json_table.accounts.customers[1].cus_permission_sms_adverts
        customers_parameters.cus_status = json_table.accounts.customers[1].cus_status
        customers_parameters.cus_status_md = json_table.accounts.customers[1].cus_status_md
        customers_parameters.cus_times_birthday_changed = json_table.accounts.customers[1].cus_times_birthday_changed
        customers_parameters.cus_t_c_accepted_date = json_table.accounts.customers[1].cus_t_c_accepted_date
        customers_parameters.identifiers = json_table.accounts.customers[1].identifiers[1]
        customers_parameters.children = json_table.accounts.customers[1].children[1]
        customers_parameters.addresses = json_table.accounts.customers[1].addresses[1]
    else
        error('Can not get json data correctly')
    end

    return customers_parameters
end

-----------------------------------------------------------------------------
-- Create clm5_customers from the parameters which is got from json.
--
-- @return   a new created customers table.
-----------------------------------------------------------------------------
function create_clm5_customers()
    local customers = {}
    --if not clm5_accounts then
    customers = create_parameters_for_customers(table_from_json)
    --else
    --print('not import')
    --end

    return customers
end



print('--------------------------------')
print('---------clm5_accounts----------')
local clm5_accounts = create_clm5_accounts()
for key, val in pairs(clm5_accounts) do
    print(key, val)
end

print('-----------------------------------')
print('---------clm5_identifiers----------')
local clm5_identifiers = create_clm5_identifiers()
for key, val in pairs(clm5_identifiers) do
    print(key, val)
end

print('---------------------------------')
print('---------clm5_addresses----------')
local clm5_addresses = create_clm5_addresses()
for key, val in pairs(clm5_addresses) do
    print(key, val)
end

print('--------------------------------')
print('---------clm5_children----------')
local clm5_children = create_clm5_children()
for key, val in pairs(clm5_children) do
    print(key, val)
end

print('--------------------------------')
print('---------clm5_customers----------')
local clm5_customers = create_clm5_customers()
for key, val in pairs(clm5_customers) do
    print(key, val)
end

--print(package.path)


