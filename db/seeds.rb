# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

page = Page.create([{name: 'Home Page'}, {name: 'Client'}])
home = Page.find_by(name: 'Home Page')
client = Page.find_by(name: 'Client')
page_part = home.page_parts.create([{name:'Box Clientes', allow_creatable: false},
																		{name:'Box Alunos', allow_creatable: false},
																		{name:'Banner 01', allow_creatable: false},
																		{name:'Sobre a Projetos', allow_creatable: true},
																		{name:'Missão', allow_creatable: true},
																		{name:'Visão', allow_creatable: true},
																		{name:'Valores esquerda', allow_creatable: true},
																		{name:'Valores direita', allow_creatable: true},
																		{name:'Banner 02', allow_creatable: false},
																		{name:'O que é o Movimento Empresa Júnior?', allow_creatable: true},
																		{name:'Como funciona uma Empresa Júnior?', allow_creatable: true}]) 

page_part = client.page_parts.create([{name: 'Imagem Topo', allow_creatable: false},
																			{name: 'Serviços', allow_creatable: false},
																			{name: 'Texto de diagnóstico', allow_creatable: false},
																			{name: 'Quem confia na gente', allow_creatable: true},
																			{name: 'Parceiros', allow_creatable: true},])