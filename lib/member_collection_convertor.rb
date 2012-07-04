class MemberCollectionConvertor
  def initialize(*args)
    custom_options = args.extract_options!
    @new_options = default_options.merge custom_options.symbolize_keys

    @collection = args[0]
  end

  def to_xls(options = {})
    merged_options = options.merge @new_options
    if @collection.first.present?
      model = @collection.first.class
      merged_options[:headers] = merged_options[:columns].map {|column| model.human_attribute_name(column)}
    end

    @collection.to_xls merged_options
  end

  def to_json(options = {})
    @collection.to_json(options)
  end

  private

    def default_options
      {:columns => [
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
        :s_preferences,
        :how_hear_about_as
      ]}
    end
end
