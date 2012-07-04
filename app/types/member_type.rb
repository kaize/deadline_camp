class MemberType < Member
  include BaseType

  attr_accessible :additional_educations_attributes, :achievements_attributes, :langs_attributes,
    :skill_program_langs_attributes, :skill_ides_attributes, :jobs_attributes, :skill_databases_attributes,
    :skill_operation_systems_attributes, :skill_others_attributes, :others_attributes, :preferences_attributes,
    :password_confirmation

  [:jobs, :additional_educations, :achievements, :langs, :skill_databases, :skill_ides, :skill_operation_systems,
    :skill_others, :skill_program_langs, :others, :preferences].each do |assoc|
    accepts_nested_attributes_for assoc, :reject_if => :all_blank, :allow_destroy => true
  end

end
