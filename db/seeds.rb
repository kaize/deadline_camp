# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u = User.new
u.email = "admin@deadline-camp.ru"
u.password = "123456"
u.save

Dict::Language.create([
  {:name => "Английский"},
  {:name => "Французский"},
  {:name => "Немецкий"}
])
Dict::ProgramLang.create([
  {:name => "Ruby"},
  {:name => "C"},
  {:name => "C++"},
  {:name => "C#"},
  {:name => "Java"},
  {:name => "PHP"},
  {:name => "HTML"},
  {:name => "JavaScript"},
  {:name => "SQL"},
  {:name => "Objectiv-C"}
])
Dict::Database.create([
  {:name => "PostgreSQL"},
  {:name => "MySQL"},
  {:name => "MS SQL"},
  {:name => "Interbase"}
])
Dict::Os.create([
  {:name => "Windows"},
  {:name => "Unix/Linix/FreeBSD/etc"},
  {:name => "iOS/MacOS"}
])
Dict::Ide.create([
  {:name => "Visual Studio"},
  {:name => "Eclipse"},
  {:name => "C++ Builder"},
  {:name => "NetBeans"},
  {:name => "Qt Creator"},
  {:name => "X Code"}
])
Dict::Other.create([
  {:name => "Системы отслеживания ошибок "},
  {:name => "Системы управления версиями"}
])
