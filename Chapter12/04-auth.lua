/*
##########################################################################
#  NGINX Cookbook                                                        #
#  --------------------------------------------------------------------  #
#  Author: Tim Butler                                                    #
#  Publisher: Packt Publishing                                           #
#  Chapter 12 - OpenResty                                                #
#  --------------------------------------------------------------------  #
#  Book: https://www.packtpub.com/networking-and-servers/nginx-cookbook  #
#  Source: https://github.com/timbutler/nginxcookbook                    #
##########################################################################
*/

local cjson = require "cjson.safe"
local allowedkeys = {"abc123", "def456", "hij789"}
local function badAuth()
    ngx.status = 401
    ngx.say(cjson.encode({status="error",errmessage="Authentication Failed"}))
    ngx.exit(401)
end

local function isAuthorised (key)
    for index, value in ipairs(allowedkeys) do
        if value == key then
            return true
        end
    end
    return false
end

local authKey = ngx.req.get_headers()["X-API-KEY"]
if authKey == nil then
    badAuth()
elseif not isAuthorised(authKey) then
    badAuth()
end
