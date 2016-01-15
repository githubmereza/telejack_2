do
-- Will leave the group if be added
local function run(msg, matches)
local bot_id = our_id -- your bot id
   -- like local bot_id = 1234567
    if matches[1] == 'leave' and is_admin(msg) then
       chat_del_user("chat#id"..msg.to.id, 'user#id'..bot_id, ok_cb, false)
    elseif msg.action.type == "chat_add_user" and msg.action.user.id == tonumber(bot_id) and not is_sudo(msg) then
       send_large_msg("chat#id"..msg.to.id, 'ÛŒØ¹Ù†ÛŒ Ù…Ø±Ø¯Ù… Ø§Ø² Ø®Ù†Ø¯Ù‡ Ú©ÛŒØ± Ø´Ø¯ÛŒ Ú¯ÙˆØ³Ø§Ù„Ù‡ Ú¯Ø§Ùˆ Ú©ÛŒØ±Ù… Ø¯Ù‡Ù†Øª Ú©ÙˆÙ†ÛŒ Ú¯Ø§Ùˆ Ø¨Ú¯ÛŒØ±Ù… Ø¨Ú¯Ø§Ù…ØªØŸÚ©ÙˆÙ†ÛŒ Ø³Ú¯ Ù¾Ø¯Ø± Ú©Ø³ Ù¾Ø¯Ø±', ok_cb, false)
       chat_del_user("chat#id"..msg.to.id, 'user#id'..bot_id, ok_cb, false)
    end
end
 
return {
  patterns = {
    "^[!/](leave)$",
    "^!!tgservice (.+)$",
  },
  run = run
}
end
