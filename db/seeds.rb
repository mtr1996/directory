if (u1 = User.find_by_email('admin@localhost')).nil?
  u1 = User.create!(password: 'qwerty', password_confirmation: 'qwerty',
    email: 'admin@localhost', login: 'admin', name: 'admin', sex: 'Мужской', birthday: '11.08.1996', country: 'admin', city: 'admin', rating: '99999999')
  u1.activate!
end
if (u2 = User.find_by_email('user@localhost')).nil?
  u2 = User.create!(password: 'qwerty', password_confirmation: 'qwerty',
    email: 'user@localhost', login: 'user1', name: 'user1', sex: 'Мужской', birthday: '11.09.1996', country: 'user1', city: 'user1', rating: '0')
  u2.activate!
end
r1, r2 = Role.create_main_roles
ru1 = RoleUser.create(role: r1, user: u1)
ru2 = RoleUser.create(role: r2, user: u2)


#------------------------------------------------------------------------------#
#Пользователи

  u3 = User.create!(password: '123456', password_confirmation: '123456',
    email: '123@localhost', login: 'mtr', name: 'mtr', sex: 'Мужской', birthday: '11.08.1996', country: 'Россия', city: 'Домодедово', rating: '2')
  u4 = User.create!(password: '654321', password_confirmation: '654321',
    email: '321@localhost', login: 'kvo', name: 'kvo', sex: 'Женский', birthday: '22.02.1996', country: 'Россия', city: 'Москва', rating: '3')
  u5 = User.create!(password: 'qwertyuiop', password_confirmation: 'qwertyuiop',
    email: '431@localhost', login: 'mld', name: 'mld', sex: 'Мужской', birthday: '25.07.1997', country: 'Россия', city: 'Москва', rating: '1')
  u6 = User.create!(password: '1234567890', password_confirmation: '1234567890',
    email: 'gtre@localhost', login: 'sdo', name: 'sdo', sex: 'Мужской', birthday: '2.05.1997', country: 'Россия', city: 'Домодедово', rating: '0')

#------------------------------------------------------------------------------#
#Анкеты
  f1 = Form.create!(user_description: 'Манеров Тимур, студент', hobbies: 'Спорт, учеба',
   bad_habits: 'Курение', type_of_home: 'Живу с родителями', purpose_of_acquaintance: 'Серьезные отношения', user: u1)
  f2 = Form.create!(user_description: 'Леонид, студент', hobbies: 'Спорт, учеба',
   bad_habits: 'Алкоголь', type_of_home: 'Своя квартира', purpose_of_acquaintance: 'Свободные отношения', user: u2)
  f3 = Form.create!(user_description: 'Манеров Тимур, студент', hobbies: 'Спорт, учеба',
   bad_habits: 'Курение', type_of_home: 'Живу с родителями', purpose_of_acquaintance: 'Серьезные отношения', user: u3)
  f4 = Form.create!(user_description: 'Леонид, студент', hobbies: 'Спорт, учеба',
   bad_habits: 'Алкоголь', type_of_home: 'Своя квартира', purpose_of_acquaintance: 'Свободные отношения', user: u4)
  f5 = Form.create!(user_description: 'Владимир, студент', hobbies: 'Спорт',
   bad_habits: 'Курение', type_of_home: 'Живу с родителями', purpose_of_acquaintance: 'Дружба', user: u5)
  f6 = Form.create!(user_description: 'Данил, студент', hobbies: 'Учеба',
   bad_habits: 'Алкоголь', type_of_home: 'Съемная квартира', purpose_of_acquaintance: 'Серьезные отношения', user: u6)
#------------------------------------------------------------------------------#
#Услуги
  f1 = Servise.create!(active_serv: '6', type_serv: '3',
   price_serv: '25', user: u1)
  f2 = Servise.create!(active_serv: '5', type_serv: '2',
   price_serv: '2', user: u2)
  f3 = Servise.create!(active_serv: '3', type_serv: '1',
   price_serv: '1', user: u3)
  f4 = Servise.create!(active_serv: '2', type_serv: '6',
   price_serv: '5', user: u4)
