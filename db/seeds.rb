
# Page parts não podem ser criadas ou deletadas no CMS

user = User.create email: 'admin@cjr.org.br', password: 'admincjr123'

page = Page.create name: 'home'
			 Page.create name: 'client'
			 Page.create name: 'student'
			 Page.create name: 'legal'
			 Page.create name: 'engineering'
			 Page.create name: 'management'

# Partes da Home Page
home = Page.find_by(name: 'home')
home.page_parts.create name:'Box Clientes', allow_creatable: false, 
											 allow_photo: true, allow_title: false, allow_text: true
home.page_parts.create name:'Box Alunos', allow_creatable: false, 
											 allow_photo: true, allow_title: false, allow_text: true
home.page_parts.create name:'Banner PCI', allow_creatable: false,
											 allow_photo: true, allow_title: false, allow_text: false
home.page_parts.create name:'Sobre a Projetos', allow_creatable: true,
											 allow_photo: false, allow_title: false, allow_text: true
home.page_parts.create name:'Missão', allow_creatable: true, 
											 allow_photo: false, allow_title: false, allow_text: true
home.page_parts.create name:'Visão', allow_creatable: true,
											 allow_photo: false, allow_title: false, allow_text: true
home.page_parts.create name:'Valores esquerda', allow_creatable: true,
											 allow_photo: false, allow_title: false, allow_text: true
home.page_parts.create name:'Valores direita', allow_creatable: true,
											 allow_photo: false, allow_title: false, allow_text: true
home.page_parts.create name:'Banner MEJ', allow_creatable: false, 
											 allow_photo: true, allow_title: false, allow_text: false
home.page_parts.create name:'O que é o Movimento Empresa Júnior?', allow_creatable: true,
											 allow_photo: false, allow_title: false, allow_text: true
home.page_parts.create name:'Como funciona uma Empresa Júnior?', allow_creatable: true,
											 allow_photo: false, allow_title: false, allow_text: true

home.page_parts.create name:'Contato', allow_creatable: true,
											 allow_photo: false, allow_title: false, allow_text: true

# Partes da Página de Clientes
client = Page.find_by(name: 'client')
client.page_parts.create name: 'Membros', allow_creatable: false,
												 allow_photo: true, allow_title: true, allow_text: true 
client.page_parts.create name: 'Serviços', allow_creatable: false,
												 allow_photo: true, allow_title: true, allow_text: true
client.page_parts.create name: 'Texto de diagnóstico', allow_creatable: true,
												 allow_photo: false, allow_title: false, allow_text: true
client.page_parts.create name: 'Quem confia na gente', allow_creatable: true,
												 allow_photo: true, allow_title: false, allow_text: true
client.page_parts.create name: 'Parceiros', allow_creatable: true,
												 allow_photo: true, allow_title: false, allow_text: false

# Partes da Página de Estudantes
student = Page.find_by(name: 'student')
student.page_parts.create name: 'Áreas de atuação', allow_creatable: true,
												 	allow_photo: true, allow_title: true, allow_text: true
student.page_parts.create name: 'Projetos anteriores', allow_creatable: true,
												 	allow_photo: true, allow_title: true, allow_text: true
student.page_parts.create name: 'Quem passou por aqui', allow_creatable: true,
												 	allow_photo: true, allow_title: false, allow_text: true
student.page_parts.create name: 'Citação', allow_creatable: true,
												 	allow_photo: false, allow_title: false, allow_text: true
student.page_parts.create name: 'Banner processo seletivo', allow_creatable: false,
												 	allow_photo: true, allow_title: true, allow_text: true

# Partes da Página de Engenharia de Arquitetura
engineering = Page.find_by(name: 'engineering')
engineering.page_parts.create name: 'Banner', allow_creatable: false,
												 			allow_photo: true, allow_title: true, allow_text: false
engineering.page_parts.create name: 'Arquitetura', allow_creatable: true,
												 			allow_photo: false, allow_title: true, allow_text: true
engineering.page_parts.create name: 'Engenharia', allow_creatable: true,
												 			allow_photo: false, allow_title: true, allow_text: true
engineering.page_parts.create name: 'Projetos anteriores', allow_creatable: true,
												 			allow_photo: true, allow_title: true, allow_text: true

# Partes da Página de Gestão Empresarial
management = Page.find_by(name: 'management')
management.page_parts.create name: 'Banner', allow_creatable: false,
												 		 allow_photo: true, allow_title: true, allow_text: false
management.page_parts.create name: 'Org e Proc', allow_creatable: true,
												 		 allow_photo: false, allow_title: true, allow_text: true
management.page_parts.create name: 'Marketing', allow_creatable: true,
												 		 allow_photo: false, allow_title: true, allow_text: true
management.page_parts.create name: 'AdmFin', allow_creatable: true,
												 		 allow_photo: false, allow_title: true, allow_text: true
management.page_parts.create name: 'GP', allow_creatable: true,
												 		 allow_photo: false, allow_title: true, allow_text: true
management.page_parts.create name: 'Projetos anteriores', allow_creatable: true,
												 		 allow_photo: true, allow_title: true, allow_text: true