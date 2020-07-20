local Clm5Children = {}
local Clm5Children_mt = {__metatable = {}, __index = Clm5Children}

-----------------------------------------------------------------------------
-- Create a new Clm5Addresses.
--
-- @param children_parametrs    the table is got from the json request.
-- @return                      a table with children parameters.
-----------------------------------------------------------------------------
function Clm5Addresses:new(children_parametrs)
    local obj = setmetatable({}, Clm5Children_mt)
    obj.chd_pregnancy =  children_parametrs.chd_pregnancy
    obj.chd_audit_cd = children_parametrs.chd_audit_cd
    obj.chd_audit_md = children_parametrs.chd_audit_md
    obj.chd_audit_ru = children_parametrs.chd_audit_ru
    obj.chd_sex = children_parametrs.chd_sex
    obj.chd_audit_rd = children_parametrs.chd_audit_rd
    obj.chd_audit_cu = children_parametrs.chd_audit_cu
    obj.chd_audit_mu = children_parametrs.chd_audit_mu
    obj.chd_birth_date = children_parametrs.chd_birth_date
    obj.chd_id = children_parametrs.chd_id
    obj.chd_name = children_parametrs.chd_name

    return obj
end

function Clm5Children:get_chd_pregnancy()
    return self.chd_pregnancy
end

function Clm5Children:get_chd_audit_cd()
    return self.chd_audit_cd
end

function Clm5Children:get_chd_audit_md()
    return self.chd_audit_md
end

function Clm5Children:get_chd_audit_ru()
    return self.chd_audit_ru
end

function Clm5Children:get_chd_sex()
    return self.chd_sex
end

function Clm5Children:get_chd_audit_rd()
    return self.chd_audit_rd
end

function Clm5Children:get_chd_audit_cu()
    return self.chd_audit_cu
end

function Clm5Children:get_chd_audit_mu()
    return self.chd_audit_mu
end

function Clm5Children:get_chd_birth_date()
    return self.chd_birth_date
end

function Clm5Children:get_chd_id()
    return self.chd_id
end

function Clm5Children:get_chd_name()
    return self.chd_name
end

return Clm5Children