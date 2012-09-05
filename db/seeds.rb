# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u = User.find_or_initialize_by_email "admin@deadline-camp.ru"
u.password = "123456"
u.save

configus.dicts.language.each do |dict|
  d = Language.find_or_initialize_by_id dict[:id]
  d.id = dict[:id]
  d.name = dict[:name]
  d.save
end
configus.dicts.program_lang.each do |dict|
  d = ProgramLang.find_or_initialize_by_id dict[:id]
  d.id = dict[:id]
  d.name = dict[:name]
  d.save
end
configus.dicts.database.each do |dict|
  d = Database.find_or_initialize_by_id dict[:id]
  d.id = dict[:id]
  d.name = dict[:name]
  d.save
end
configus.dicts.os.each do |dict|
  d = Os.find_or_initialize_by_id dict[:id]
  d.id = dict[:id]
  d.name = dict[:name]
  d.save
end
configus.dicts.ide.each do |dict|
  d = Ide.find_or_initialize_by_id dict[:id]
  d.id = dict[:id]
  d.name = dict[:name]
  d.save
end
configus.dicts.other.each do |dict|
  d = Other.find_or_initialize_by_id dict[:id]
  d.id = dict[:id]
  d.name = dict[:name]
  d.save
end

configus.pages.each_pair do |k,v|
  p = Page.find_or_initialize_by_id v.id
  p.id = v.id
  p.uri = v.uri
  p.name = v.name
  p.save
end

ActiveRecord::Base.connection.execute("SELECT setval('pages_id_seq', max(id)) FROM pages;")
ActiveRecord::Base.connection.execute("SELECT setval('languages_id_seq', max(id)) FROM languages;")
ActiveRecord::Base.connection.execute("SELECT setval('program_langs_id_seq', max(id)) FROM program_langs;")
ActiveRecord::Base.connection.execute("SELECT setval('databases_id_seq', max(id)) FROM databases;")
ActiveRecord::Base.connection.execute("SELECT setval('os_id_seq', max(id)) FROM os;")
ActiveRecord::Base.connection.execute("SELECT setval('ides_id_seq', max(id)) FROM ides;")
ActiveRecord::Base.connection.execute("SELECT setval('others_id_seq', max(id)) FROM others;")
