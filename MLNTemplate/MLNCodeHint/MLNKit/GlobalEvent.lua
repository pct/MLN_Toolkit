---
--- Generated by MLN Team (https://www.immomo.com)
--- Created by MLN Team.
--- DateTime: 31-07-2019 18:47
---

---
---  用于lua与源生数据通信，一对多形式，在源生向lua发送消息的时候，也要记得使用event_msg键值将要发送的数据进行包装
---
---
---  通知（广播）
---
---@class GlobalEvent @parent class
---@public field name string 
---@type GlobalEvent
GlobalEvent= {
	_priveta_class_name = "GlobalEvent"}

---
---  在lua中添加一个事件监听回调
---
---@param string_a string  event：事件名字
---@param callback_b function  function(map) ... end 数据回调
---@return GlobalEvent 
---@note  该方法已弃用
function GlobalEvent:addEventListener(string_a, callback_b)
	return self
end

---
---  在lua中移除对某个事件的监听
---
---@param string_a string  event：事件名字
---@return GlobalEvent 
function GlobalEvent:removeEventListener(string_a)
	return self
end

---
---  在lua中发送事件通知
---
---
---  根据事件名字和参数字典发送消息通知 
---		 event: 事件名字 
---		 param: 
---		 1.key:dst_l_evn value:[Locales](Locales.html) 目标环境，多环境可用 + 连接，不可为空，[Locales](Locales.html)。
---		 2.key:l_evnString value:String 事件源，可为空 
---		 3.key:event_msg value:String 具体消息内容
---
---@param string_a string  event：事件名字
---@param map_b Map  params：参数描述，详见详述
---@return GlobalEvent 
function GlobalEvent:postEvent(string_a, map_b)
	return self
end

---
---  在lua中添加对某个事件的监听
---
---@param string_a string  event：事件名字
---@param callback_b function  function(map) ... end 数据回调
---@return GlobalEvent 
---@note  建议使用该方法，两端数据结构一致
function GlobalEvent:addListener(string_a, callback_b)
	return self
end
