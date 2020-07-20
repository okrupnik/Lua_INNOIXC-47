local Clm5Addresses = {}
local Clm5Addresses_mt = {__metatable = {}, __index = Clm5Addresses}

-----------------------------------------------------------------------------
-- Create a new Clm5Addresses.
--
-- @param addresses_parametrs    the table is got from the json request.
-- @return                       a table with addresses parameters.
-----------------------------------------------------------------------------
function Clm5Addresses:new(addresses_parametrs)
    local obj = setmetatable({}, Clm5Addresses_mt)
    obj.adr_city =  addresses_parametrs.adr_city
    obj.adr_corpus = addresses_parametrs.adr_corpus
    obj.adr_country = addresses_parametrs.adr_country
    obj.adr_email = addresses_parametrs.adr_email
    obj.adr_fax = addresses_parametrs.adr_fax
    obj.adr_flat_no = addresses_parametrs.adr_flat_no
    obj.adr_house_frac = addresses_parametrs.adr_house_frac
    obj.adr_house_no = addresses_parametrs.adr_house_no
    obj.adr_mobile = addresses_parametrs.adr_mobile
    obj.adr_phone = addresses_parametrs.adr_phone
    obj.adr_regione_code = addresses_parametrs.adr_regione_code
    obj.adr_street = addresses_parametrs.adr_street
    obj.adr_street_prefix = addresses_parametrs.adr_street_prefix
    obj.adr_subregion = addresses_parametrs.adr_subregion
    obj.adr_zip_code = addresses_parametrs.adr_zip_code

    return obj
end

function Clm5Addresses:get_ind_acc_id()
    return self.ind_acc_id
end

function Clm5Addresses:get_ind_audit_md()
    return self.ind_audit_md
end

function Clm5Addresses:get_ind_audit_mu()
    return self.ind_audit_mu
end

function Clm5Addresses:get_ind_blocked_by()
    return self.ind_blocked_by
end

function Clm5Addresses:get_ind_blocked_reason()
    return self.ind_blocked_reason
end

function Clm5Addresses:get_ind_cus_id()
    return self.ind_cus_id
end

function Clm5Addresses:get_ind_id()
    return self.ind_id
end

function Clm5Addresses:get_ind_idt_id()
    return self.ind_idt_id
end

function Clm5Addresses:get_ind_no()
    return self.ind_no
end

function Clm5Addresses:get_ind_pan()
    return self.ind_pan
end

function Clm5Addresses:get_ind_status()
    return self.ind_status
end

return Clm5Addresses