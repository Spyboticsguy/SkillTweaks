if RequiredScript == "lib/tweak_data/skilltreetweakdata" then

  local init_original = SkillTreeTweakData.init
  
  function SkillTreeTweakData:init()
    init_original(self)
	-- Add moving target skills to Cat Burglar
    table.insert(self.skills.cat_burglar[1].upgrades, "player_can_strafe_run")
	table.insert(self.skills.cat_burglar[2].upgrades, "player_can_free_run")
	-- Add infiltrator tier one skill to yakuza tier one
	table.insert(self.specializations[12][1].upgrades, "player_damage_dampener_close_contact_1")
	end
end