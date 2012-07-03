namespace :app do

  desc "Regenerate member password with bad password hash"
  task :fix_member_password => :environment do
    Member.find_each do |m|
      begin
        BCrypt::Password.new(m.password_digest)
      rescue BCrypt::Errors::InvalidHash
        m.password = SecureApp.generate_password
        m.save!
        puts "Member ##{m.id} changes password"
      end
    end
  end

  desc "Fill member skills dict type"
  task :fix_member_skill_dict_type => :environment do
    Member::SkillOs.find_each do |skill|
      skill.dict_type = "Os"
      skill.save!
    end
    Member::SkillProgramLang.find_each do |skill|
      skill.dict_type = "ProgramLang"
      skill.save!
    end
    Member::SkillIde.find_each do |skill|
      skill.dict_type = "Ide"
      skill.save!
    end
    Member::SkillDatabase.find_each do |skill|
      skill.dict_type = "Database"
      skill.save!
    end
  end
end
