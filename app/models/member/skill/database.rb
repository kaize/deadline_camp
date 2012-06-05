class Member::Skill::Database < Member::Skill
  # attr_accessible :title, :body
  belongs_to :dict, :polymorphic => true, :class_name => "Database"
end
