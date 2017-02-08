--This mod adds an icecream cone to minetest

--minetest.after(5,
--      function(params)
--              minetest.chat_send_all("Don't Forget To Have an icecream cone!")
--})
minetest.register_craftitem("icecream:icecream", {
        --description = S("Icecream cone"),
        inventory_image = "farming_donut.png",
        on_use = minetest.item_eat(3)
        --minetest.after(3, function(params)
        --              minetest.chat_send_all("Wasn't that delicous?!")
        --      end
        --)
})

minetest.register_craft({
        output = "icecream 3",
        recipe = {
                {'bucket:milk', 'bucket:milk', 'bucket:milk'},
                {'farming:wheat', 'default:torch', 'farming:wheat'},
                {'', 'farming:wheat', ''},
        }
})--To craft three icecreams you need three wheat, one torch and three milk buckets.
print("mod icecream Loaded!")
