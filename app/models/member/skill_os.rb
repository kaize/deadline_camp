class Member::SkillOs < Member::Skill
  LEVELS = I18n.t('skills.os.levels')
  # attr_accessible :title, :body
  belongs_to :dict, :polymorphic => true, :class_name => "Os"
end
