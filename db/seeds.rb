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

Language.create([
  {:name => "Английский"},
  {:name => "Французский"},
  {:name => "Немецкий"}
])
ProgramLang.create([
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
Database.create([
  {:name => "PostgreSQL"},
  {:name => "MySQL"},
  {:name => "MS SQL"},
  {:name => "Interbase"}
])
Os.create([
  {:name => "Windows"},
  {:name => "Unix/Linux/FreeBSD/etc"},
  {:name => "iOS/MacOS"}
])
Ide.create([
  {:name => "PhpStorm"},
  {:name => "RubyMine"},
  {:name => "Visual Studio"},
  {:name => "Eclipse"},
  {:name => "C++ Builder"},
  {:name => "NetBeans"},
  {:name => "Qt Creator"},
  {:name => "X Code"}
])
Other.create([
  {:name => "Системы отслеживания ошибок"},
  {:name => "Системы управления версиями"}
])
