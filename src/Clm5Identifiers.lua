local Clm5Identifiers = {}
local Clm5Identifiers_mt = {__metatable = {}, __index = Clm5Identifiers}

-----------------------------------------------------------------------------
-- Create a new Clm5Identifiers.
--
-- @param identifiers_parametrs    the table is got from the json request.
-- @return                         a table with identifiers parameters.
-----------------------------------------------------------------------------
function Clm5Identifiers:new(identifiers_parametrs)
    local obj = setmetatable({}, Clm5Identifiers_mt)
    obj.ind_acc_id =  identifiers_parametrs.ind_acc_id
    obj.ind_audit_md = identifiers_parametrs.ind_audit_md
    obj.ind_audit_mu = identifiers_parametrs.ind_audit_mu
    obj.ind_blocked_by = identifiers_parametrs.ind_blocked_by
    obj.ind_blocked_reason = identifiers_parametrs.ind_blocked_reason
    obj.ind_cus_id = identifiers_parametrs.ind_cus_id
    obj.ind_id = identifiers_parametrs.ind_id
    obj.ind_idt_id = identifiers_parametrs.ind_idt_id
    obj.ind_no = identifiers_parametrs.ind_no
    obj.ind_pan = identifiers_parametrs.ind_pan
    obj.ind_status = identifiers_parametrs.ind_status

    return obj
end

function Clm5Identifiers:get_ind_acc_id()
    return self.ind_acc_id
end

function Clm5Identifiers:get_ind_audit_md()
    return self.ind_audit_md
end

function Clm5Identifiers:get_ind_audit_mu()
    return self.ind_audit_mu
end

function Clm5Identifiers:get_ind_blocked_by()
    return self.ind_blocked_by
end

function Clm5Identifiers:get_ind_blocked_reason()
    return self.ind_blocked_reason
end

function Clm5Identifiers:get_ind_cus_id()
    return self.ind_cus_id
end

function Clm5Identifiers:get_ind_id()
    return self.ind_id
end

function Clm5Identifiers:get_ind_idt_id()
    return self.ind_idt_id
end

function Clm5Identifiers:get_ind_no()
    return self.ind_no
end

function Clm5Identifiers:get_ind_pan()
    return self.ind_pan
end

function Clm5Identifiers:get_ind_status()
    return self.ind_status
end

return Clm5Identifiers