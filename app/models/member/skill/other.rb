class Member::Skill::Other < Member::Skill
  # attr_accessible :title, :body
  belongs_to :dict, :polymorphic => true, :class_name => "Dict::Other"
end
