-- 左 Shift 单击上屏当前编码，保持中文模式不变。
-- 单击判定沿用 ascii_composer 的规则：Shift 按下后若又按下了其他键，本次不再上屏。
-- 需配合 default.custom.yaml 中 ascii_composer/switch_key/Shift_L: noop 使用。

local M = {}

local XK_Shift_L = 0xffe1
local kNoop = 2

function M.init(env)
  env.shift_armed = false
end

function M.func(key, env)
  if key.keycode == XK_Shift_L then
    if key:release() then
      if env.shift_armed then
        env.shift_armed = false
        local ctx = env.engine.context
        if ctx:is_composing() then
          ctx:clear_non_confirmed_composition()
          ctx:commit()
        end
      end
    else
      env.shift_armed = true
    end
    return kNoop
  end

  if not key:release() then
    env.shift_armed = false
  end
  return kNoop
end

return M
