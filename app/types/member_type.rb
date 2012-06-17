class MemberType < Member
  include BaseType

  attr_accessible :additional_educations_attributes, :achievements_attributes, :langs_attributes,
    :skill_program_langs_attributes, :skill_ides_attributes, :jobs_attributes, :skill_databases_attributes,
    :skill_operation_systems_attributes, :skill_others_attributes, :others_attributes, :preferences_attributes,
    :password_confirmation

end
