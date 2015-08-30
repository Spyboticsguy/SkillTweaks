if RequiredScript == "lib/tweak_data/skilltreetweakdata" then

  local init_original = SkillTreeTweakData.init
  
  function SkillTreeTweakData:init()
    init_original(self)
	-- Add moving target skills to Cat Burglar
    table.insert(self.skills.cat_burglar[1].upgrades, "player_can_strafe_run")
	table.insert(self.skills.cat_burglar[2].upgrades, "player_can_free_run")
	end
end