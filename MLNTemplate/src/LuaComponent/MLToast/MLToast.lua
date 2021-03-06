---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by momo.
--- DateTime: 2019/5/23 下午6:11
---
--- MLToast(消息,时间,承载视图,居中偏移量)
--- 消息必传，其他参数依赖前置参数，不能不传中间的

local _class = {}
_class._version = '0.0.1'
_class._classname = 'MLToast'

local meta = {}
meta.__call = function(toast,msg,time,contentView,offset)
    toast:showMessageOn(msg,time,contentView,offset)
end

setmetatable(_class,meta)

function _class:showMessageOn(msg,time,contentView,offset)
    time = time ~= nil and time or 1.5
    time = time >= 0 and time or 1.5

    if contentView == nil then
        contentView = window
    end
    local label = Label()
                  :cornerRadius(4.0)
                  :setGravity(Gravity.CENTER)
                  :textAlign(TextAlign.CENTER)
                  :setTextFontStyle(FontStyle.BOLD)
                  :fontSize(14)
                  :bgColor(Color(70,70,70,0.85))
                  :textColor(Color(255,255,255,1.0))
                  :padding(6,6,6,6)
                  :marginTop(offset)
                  :alpha(0)
                  :lines(0)
                  :setMaxWidth(contentView:width() * 0.7)

    label:text(msg)

    contentView:addView(label)
    local anim = FrameAnimation():setAlpha(0,1):setDuration(0.3)
    anim:start(label)
    System:setTimeOut(function()
        local anim = FrameAnimation():setAlpha(1,0):setDuration(0.3)
        anim:setEndCallback(function()
            label:removeFromSuper()
        end)
        anim:start(label)
    end,time)

end

return _class
