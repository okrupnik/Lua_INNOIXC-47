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

function Clm5Accounts:get_acc_owner_cus_id()
    return self.acc_owner_cus_id
end

function Clm5Accounts:get_acc_audit_md()
    return self.acc_audit_md
end

function Clm5Accounts:get_acc_audit_mu()
    return self.acc_audit_mu
end

function Clm5Accounts:get_acc_hh_creation_date()
    return self.acc_hh_creation_date
end

function Clm5Accounts:get_acc_status()
    return self.acc_status
end

function Clm5Accounts:get_acc_id()
    return self.acc_id
end

function Clm5Accounts:get_merged_accounts()
    return self.merged_accounts
end

module("Clm5Accounts")

--return Clm5Accounts