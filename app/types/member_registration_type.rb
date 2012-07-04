class MemberRegistrationType < Member
  include BaseType

  attr_accessor :other_how_hear_about_as

  attr_accessible :additional_educations_attributes, :achievements_attributes, :langs_attributes,
    :skill_program_langs_attributes, :skill_ides_attributes, :jobs_attributes, :skill_databases_attributes,
    :skill_operation_systems_attributes, :skill_others_attributes, :others_attributes, :preferences_attributes,
    :password_confirmation, :terms_of_service, :other_how_hear_about_as

  [:jobs, :additional_educations, :achievements, :langs, :skill_databases, :skill_ides, :skill_operation_systems,
    :skill_others, :skill_program_langs, :others, :preferences].each do |assoc|
    accepts_nested_attributes_for assoc, :reject_if => :all_blank, :allow_destroy => true
  end

  validates :terms_of_service, :acceptance => true

  def other_how_hear_about_as=(value)
    if value.present?
      write_attribute :how_hear_about_as, value.strip
    end
  end

end
