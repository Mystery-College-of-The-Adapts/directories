minetest.register_tool("directories:stats", {
    desription = "Read stats",
    inventory_image = "directories_stats.png",
    wield_image = "directories_stats.png",
    tool_capabilities = {punch_attack_uses = 0, damage_groups = {stats = 1}}

})

minetest.register_tool("directories:enter", {
    desription = "Enter key",
    inventory_image = "directories_enter.png",
    wield_image = "directories_enter.png",
    tool_capabilities = {punch_attack_uses = 0, damage_groups = {enter = 1}}
})

minetest.register_tool("directories:read", {
    desription = "Read file",
    inventory_image = "directories_read.png",
    wield_image = "directories_read.png",
    tool_capabilities = {punch_attack_uses = 0, damage_groups = {read = 1}}
})

minetest.register_tool("directories:write", {
    desription = "Write to file",
    inventory_image = "directories_write.png",
    wield_image = "directories_write.png",
    tool_capabilities = {punch_attack_uses = 0, damage_groups = {write = 1}}
})

minetest.register_tool("directories:create_file", {
    desription = "Create file",
    inventory_image = "directories_create_file.png",
    wield_image = "directories_create_file.png",
    tool_capabilities = {
        punch_attack_uses = 0,
        damage_groups = {create_file = 1}
    },
    on_use = function(itemstack, player, pointed_thing)
        local player_name = player:get_player_name()

        local formspec = {
            "formspec_version[3]", "size[10,10.5,false]",
            "field[0.5,0.5;9,1;file_name;Enter File Name;]",
            "textarea[0.5,2.0;9,7;file_content;Enter File Content;]",
            "button_exit[7,9.3;2.5,0.9;create_file;create]"
        }
        local form = table.concat(formspec, "")
        minetest.show_formspec(player_name, "directories:create_file", form)
    end
})

minetest.register_tool("directories:spawn_rootdir", {
    desription = "Spawn root dir",
    inventory_image = "directories_spawn_rootdir.png",
    wield_image = "directories_spawn_rootdir.png",
    tool_capabilities = {punch_attack_uses = 0, damage_groups = {connect = 1}},

    on_use = function(itemstack, player, pointed_thing)
        local player_name = player:get_player_name()

        local formspec = {
            "formspec_version[3]", "size[10,3,false]",
            "field[0.5,0.5;9,1;remote_address;Enter remote address;]",
            "button_exit[7,1.8;2.5,0.9;spawn_rootdir;spawn]"
        }
        local form = table.concat(formspec, "")
        minetest.show_formspec(player_name, "directories:spawn_rootdir", form)
    end
})

