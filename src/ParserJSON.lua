local json_request = [[{
	"accounts": {
		"acc_owner_cus_id": "11",
		"acc_audit_md": "22",
		"acc_audit_mu": "33",
		"acc_hh_creation_date ": "44",
		"acc_status": "55",
		"acc_id": "66",
		"customers": [
			{
				"cus_acc_id": "",
				"cus_advertising_permission": "",
				"cus_audit_cu": "",
				"cus_audit_md": "",
				"cus_audit_mu": "",
				"cus_birthday_change_date": "",
				"cus_birth_date": "",
				"cus_blocked_reason": "",
				"cus_data_process_consent_type": "",
				"cus_enrolment_channel": "",
				"cus_enrolment_date": "",
				"cus_family_status": "",
				"cus_first_name": "",
				"cus_gender": "",
				"cus_golden": "",
				"cus_hh_contribution": "",
				"cus_hh_exit_accepted_date": "",
				"cus_hh_issued_points": "",
				"cus_hh_join_accepted_date": "",
				"cus_hh_join_date": "",
				"cus_hh_lock_date": "",
				"cus_hh_relationship_type": "",
				"cus_id": "",
				"cus_last_name": "",
				"cus_lpo_id": "",
				"cus_main_identifier_id": "",
				"cus_middle_name": "",
				"cus_permission_adverts": "",
				"cus_permission_email": "",
				"cus_permission_email_adverts": "",
				"cus_permission_facebook": "",
				"cus_permission_household": "",
				"cus_permission_info": "",
				"cus_permission_offers": "",
				"cus_permission_phone": "",
				"cus_permission_phone_adverts": "",
				"cus_permission_post": "",
				"cus_permission_push": "",
				"cus_permission_push_adverts": "",
				"cus_permission_remove_avatar ": "",
				"cus_permission_segmentation": "",
				"cus_permission_sms": "",
				"cus_permission_sms_adverts": "",
				"cus_status": "",
				"cus_status_md": "",
				"cus_times_birthday_changed": "",
				"cus_t_c_accepted_date": "",
				"identifiers": [
					{
						"ind_acc_id": "",
						"ind_audit_md": "",
						"ind_audit_mu": "",
						"ind_blocked_by": "",
						"ind_blocked_reason": "",
						"ind_cus_id": "",
						"ind_id": "",
						"ind_idt_id ": "",
						"ind_no": "",
						"ind_pan": "",
						"ind_status": ""
					}
				],
				"addresses": [
					{
						"adr_city": "",
						"adr_corpus": "",
						"adr_country": "",
						"adr_email": "",
						"adr_fax": "",
						"adr_flat_no": "",
						"adr_house_frac": "",
						"adr_house_no": "",
						"adr_mobile": "",
						"adr_phone": "",
						"adr_regione_code": "",
						"adr_street": "",
						"adr_street_prefix": "",
						"adr_subregion": "",
						"adr_zip_code ": ""
					}
				],
				"children": [
				    {
				        "chd_pregnancy": "2",
				        "chd_audit_cd": "",
				        "chd_audit_md": "",
				        "chd_audit_ru": "",
				        "chd_sex": "",
				        "chd_audit_rd": "",
				        "chd_audit_cu": "",
				        "chd_audit_mu": "",
				        "chd_birth_date": "",
				        "chd_id": "",
				        "chd_name": ""
				    }
				]
			}
		],
		"merged_accounts": ["77", "88", "99"]
	}
}]]

local Clm5Accounts = {}
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
end

local json = require('json')

local table_from_json = json.decode(json_request)

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

package.path = package.path..";D:/Work/Projects/Lua/Lua_X5_CIP/src/?.lua"
local clm5_accounts = require('Clm5Accounts')

function create_clm5_accounts()
    local accounts = {}
    --if not clm5_accounts then
        accounts = Clm5Accounts:new(create_parameters_for_accounts(table_from_json))
    --else
      --  print('not import')
    --end

    return accounts
end

local params = create_parameters_for_accounts(table_from_json)
for key, val in pairs(params) do
    print(key, val)
end

print('-------------------')
print('-------------------')
local tt = create_clm5_accounts()
for key, val in pairs(tt) do
    print(key, val)
end

print(package.path)


