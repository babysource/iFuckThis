# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Login.create(:name => '张三', :user => 'user3', :pass => '111111')
Login.create(:name => '李四', :user => 'user4', :pass => '111111')
Login.create(:name => '赵五', :user => 'user5', :pass => '111111')