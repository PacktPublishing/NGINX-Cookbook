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
local redis = require "resty.redis"

local red = redis:new()
local ok, err = red:connect("127.0.0.1", 6379)
if not ok then
    ngx.say(cjson.encode({status="ok", errormessage="Failed to connect to the redis server, the error was: "..err}))
    ngx.exit(500)
end

local apiroute = red:get(ngx.var.uri)
if apiroute == ngx.null then
    ngx.say(cjson.encode({status="error", errormessage="no service at this path"}))
    ngx.exit(404)
end
res = ngx.location.capture("/proxy/"..apiroute)
if res then
    ngx.say(cjson.encode({status="ok", result=res.body}))
else
    ngx.say(cjson.encode({status="error", errormessage="service failed to return a result"}))
    ngx.exit(500)
end
