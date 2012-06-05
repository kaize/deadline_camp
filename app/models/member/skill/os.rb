class Member::Skill::Os < Member::Skill
  # attr_accessible :title, :body
  belongs_to :dict, :polymorphic => true, :class_name => "Os"
end
