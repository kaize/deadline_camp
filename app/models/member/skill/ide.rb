class Member::Skill::Ide < Member::Skill
  # attr_accessible :title, :body
  belongs_to :dict, :polymorphic => true, :class_name => "Ide"
end
