local assets =
{
	Asset( "ANIM", "anim/waxbert.zip" ),
	Asset( "ANIM", "anim/ghost_waxbert_build.zip" ),
}

local skins =
{
	normal_skin = "waxbert",
	ghost_skin = "ghost_waxbert_build",
}

return CreatePrefabSkin("waxbert_none",
{
	base_prefab = "waxbert",
	type = "base",
	assets = assets,
	skins = skins, 
	skin_tags = {"WAXBERT", "CHARACTER", "BASE"},
	build_name_override = "waxbert",
	rarity = "Character",
})