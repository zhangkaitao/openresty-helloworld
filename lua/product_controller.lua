--加载Lua模块库
local template = require("resty.template")  
local productData = require("jd.product_data");


--1、获取请求参数中的商品ID
local skuId = ngx.var.skuId;
--2、调用相应的服务获取数据
local data = productData.getData(skuId) 

--3、渲染模板
local func = template.compile("product.html")  
local content = func(data)  
--4、通过ngx API输出内容  
ngx.say(content) 
