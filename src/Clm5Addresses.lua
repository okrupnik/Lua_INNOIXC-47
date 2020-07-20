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

function Clm5Addresses:get_adr_city()
    return self.adr_city
end

function Clm5Addresses:get_adr_corpus()
    return self.adr_corpus
end

function Clm5Addresses:get_adr_country()
    return self.adr_country
end

function Clm5Addresses:get_adr_email()
    return self.adr_email
end

function Clm5Addresses:get_adr_fax()
    return self.adr_fax
end

function Clm5Addresses:get_adr_flat_no()
    return self.adr_flat_no
end

function Clm5Addresses:get_adr_house_frac()
    return self.adr_house_frac
end

function Clm5Addresses:get_adr_house_no()
    return self.adr_house_no
end

function Clm5Addresses:get_adr_mobile()
    return self.adr_mobile
end

function Clm5Addresses:get_adr_phone()
    return self.adr_phone
end

function Clm5Addresses:get_adr_regione_code()
    return self.adr_regione_code
end

function Clm5Addresses:get_adr_street()
    return self.adr_street
end

function Clm5Addresses:get_adr_street_prefix()
    return self.adr_street_prefix
end

function Clm5Addresses:get_adr_subregion()
    return self.adr_subregion
end

function Clm5Addresses:get_adr_zip_code()
    return self.adr_zip_code
end

return Clm5Addresses