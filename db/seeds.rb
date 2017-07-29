# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

page = Page.create(name: 'Home Page')
page_part = page.page_parts.create([{name:'Seção 01', allow_creatable: false},
																		{name:'Seção 02', allow_creatable: false},
																		{name:'Seção 03', allow_creatable: false},
																		{name:'Seção 04', allow_creatable: true},
																		{name:'Seção 05', allow_creatable: true},
																		{name:'Seção 06', allow_creatable: true},
																		{name:'Seção 07', allow_creatable: true},
																		{name:'Seção 08', allow_creatable: true},
																		{name:'Seção 09', allow_creatable: false},
																		{name:'Seção 10', allow_creatable: true},
																		{name:'Seção 11', allow_creatable: true},]) 