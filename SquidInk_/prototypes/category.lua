-- adding a new category grouping

data:extend({

  { --Item groups are tabs in the recipe menu, subgroups are rows within the tab.
    type = "item-group",
    name = "squid-ink",
    order = "c-d",
    inventory_order = "d",
    icon = "__SquidInk__/graphics/squid-ink.png",
    icon_size = 219,
	},

  {
    type = "item-subgroup",
    name = "squid-items",
    group = "squid-ink",
    order = "2",
  },

	{
    type = "item-subgroup",
    name = "squid-machines",
    group = "squid-ink",
    order = "4",
  }

})

if data.raw["item-group"]["squid-ink"] then
  data.raw["item-subgroup"]["squid-machines"].group = "squid-ink"
  data.raw["item-subgroup"]["squid-items"].group = "squid-ink"
end