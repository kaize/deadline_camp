class Member::Skill::ProgramLang < Member::Skill
  # attr_accessible :title, :body
  belongs_to :dict, :polymorphic => true, :class_name => "ProgramLang"
end
