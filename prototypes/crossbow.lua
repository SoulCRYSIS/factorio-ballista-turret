local item_sounds = require("__base__.prototypes.item_sounds")
local sounds = require("__base__.prototypes.entity.sounds")

data:extend({
  {
    type = "gun",
    name = "crossbow",
    icon = "__ballista-turret__/graphics/icons/crossbow.png",
    subgroup = "gun",
    order = "v",
    inventory_move_sound = item_sounds.ammo_large_inventory_move,
    pick_sound = item_sounds.ammo_large_inventory_pickup,
    drop_sound = item_sounds.ammo_large_inventory_move,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "bolt",
      movement_slow_down_factor = 0.5,
      cooldown = 90,
      projectile_creation_distance = 1.125,
      range = 40,
      sound = sounds.gun_turret_gunshot,
    },
    stack_size = 1
  },
  {
    type = "recipe",
    name = "crossbow",
    order = "v",
    category = "crafting",
    ingredients = {
      { type = "item", name = "processing-unit", amount = 1 },
      { type = "item", name = "copper-cable",     amount = 2 },
      { type = "item", name = "steel-plate",     amount = 5 },
      { type = "item", name = "wood",            amount = 5 },
    },
    results = { { type = "item", name = "crossbow", amount = 1 } },
    energy_required = 10,
    enabled = false,
  },
})