class MemberCollectionConvertor
  def initialize(collection)
    @collection = collection
  end

  def to_xls(options = {})
    default_options = {
      :columns => [
        :id,
        :state,
        :email,
        :first_name,
        :last_name,
        :patronymic,
        :phone,
        :skype,
        :jabber,
        :icq,
        :institute,
        :start_year,
        :start_month,
        :finish_year,
        :finish_month,
        :department,
        :profession,
        :degree,
        :gpa,
        :web,
        :camp_time,
        :camp_life,
        :camp_fee,
        :camp_notebook,
        :camp_training,
        :hobby,
        :sport,
        :group,
        :how_hear_about_as,
        :twitter,
        :facebook,
        :vkontakte,
        :city,
        :birthday,
        :schoolyear_count,
        :s_jobs,
        :s_additional_educations,
        :s_achievements,
        :s_langs,
        :s_skill_databases,
        :s_skill_ides,
        :s_skill_operation_systems,
        :s_skill_others,
        :s_skill_program_langs,
        :s_others,
        :s_preferences
      ]
      #:headers => ['iname', 'lname']
    }

    @collection.to_xls options.merge(default_options)
  end

  def to_json(options = {})
    @collection.to_json(options)
  end
end
