---
--- Generated by MLN Team (https://www.immomo.com)
--- Created by MLN Team.
--- DateTime: 31-07-2019 18:47
---

---
---  用来描述视图控件的坐标和宽高
---
---@class Rect @parent class
---@public field name string 
---@type Rect
local _class = {
	_priveta_class_name = "Rect"}

---
---  创建Rect对象
---
---@param number_a number  横坐标
---@param number_b number  纵坐标
---@param number_c number  宽
---@param number_d number  高
---@return Rect 
function Rect(number_a, number_b, number_c, number_d)
	return _class
end

---
---  设置坐标位置，即x轴y轴坐标
---
---@param a Point  包含横竖坐标，详情见[Point](Point.html)
---@return Rect 
function _class:point(a)
	return self
end

---
---  获取横竖坐标，即x轴y轴坐标
---
---@return Point 包含横竖坐标，详情见[Point](Point.html)
function _class:point()
	return Point()
end

---
---  设置宽高
---
---@param a Size  包含宽和高，详情见[Size](Size.html)
---@return Rect 
function _class:size(a)
	return self
end

---
---  获取宽高，详情见[Size](Size.html)
---
---@return Size 宽高，详情见[Size](Size.html)
function _class:size()
	return Size()
end

---
---  设置横坐标
---
---@param number_a number  横坐标
---@return Rect 
function _class:x(number_a)
	return self
end

---
---  获取横坐标
---
---@return number 横坐标
function _class:x()
	return 0
end

---
---  设置纵坐标
---
---@param number_a number  纵坐标
---@return Rect 
function _class:y(number_a)
	return self
end

---
---  获取纵坐标
---
---@return number 纵坐标
function _class:y()
	return 0
end

---
---  设置宽
---
---@param number_a number  宽
---@return Rect 
function _class:width(number_a)
	return self
end

---
---  获取宽
---
---@return number 宽
function _class:width()
	return 0
end

---
---  设置高度
---
---@param number_a number  高度
---@return Rect 
function _class:height(number_a)
	return self
end

---
---  获取高度
---
---@return number 高度
---@version  
function _class:height()
	return 0
end

return _class