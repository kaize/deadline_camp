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

  desc "Fix Member Skills"
  task :fix_member_skills => :environment do
    Member::Skill.where(dict_type: 'ProgramLang').find_each do |skill|
      new_skill                 = Member::SkillProgramLang.new
      new_skill.program_lang_id = skill.dict_id
      new_skill.duration        = skill.duration
      new_skill.level           = skill.level
      new_skill.member_id       = skill.member_id
      new_skill.description     = skill.description
      new_skill.save!
    end
    Member::Skill.where(dict_type: 'Database').find_each do |skill|
      new_skill             = Member::SkillDatabase.new
      new_skill.database_id = skill.dict_id
      new_skill.duration    = skill.duration
      new_skill.level       = skill.level
      new_skill.member_id   = skill.member_id
      new_skill.description = skill.description
      new_skill.save!
    end
    Member::Skill.where(dict_type: 'Ide').find_each do |skill|
      new_skill             = Member::SkillIde.new
      new_skill.ide_id      = skill.dict_id
      new_skill.duration    = skill.duration
      new_skill.level       = skill.level
      new_skill.member_id   = skill.member_id
      new_skill.description = skill.description
      new_skill.save!
    end
    Member::Skill.where(dict_type: 'Os').find_each do |skill|
      new_skill             = Member::SkillOs.new
      new_skill.os_id       = skill.dict_id
      new_skill.duration    = skill.duration
      new_skill.level       = skill.level
      new_skill.member_id   = skill.member_id
      new_skill.description = skill.description
      new_skill.save!
    end
  end

  desc "Fill news state"
  task :fix_news_state => :environment do
    News.update_all :state => :published
  end
end
