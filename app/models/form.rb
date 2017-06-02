class Form < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  accepts_nested_attributes_for :user, allow_destroy: true
    validates :user_description, :hobbies, :bad_habits, :type_of_home, :purpose_of_acquaintance, presence: true
    validates :user_description, :hobbies, :bad_habits, :type_of_home, :purpose_of_acquaintance, length:{in: 0..64}
    validates :bad_habits, inclusion: {in: ['Курение', 'Алкоголь']}
    validates :type_of_home, inclusion: {in: ['Своя квартира', 'Живу с родителями', 'Съемная квартира']}
    validates :purpose_of_acquaintance, inclusion: {in: ['Дружба', 'Серьезные отношения', 'Свободные отношения']}
    validates :user, presence: true
    def self.search(params)
        result = Form.includes(:user => :servises).references(:user => :servises)
        if params['user_description'].present?
           result = result.where(user_description: params['user_description'])
        end
        if params['hobbies'].present?
           result = result.where(hobbies: params['hobbies'])
        end
        if params['bad_habits'].present?
           result = result.where(bad_habits: params['bad_habits'])
        end
        if params['type_of_home'].present?
           result = result.where(type_of_home: params['type_of_home'])
        end
        if params['purpose_of_acquaintance'].present?
           result = result.where(purpose_of_acquaintance: params['purpose_of_acquaintance'])
        end
        if params['sex'].present?
           result = result.where(users: {name: params['sex']})
        end
        if params['birthday'].present?
           result = result.where(users: {birthday: params['birthday']})
        end    
        if params['country'].present?
           result = result.where(users: {country: params['country']})
        end    
        if params['city'].present?
           result = result.where(users: {city: params['city']})
        end    
        if params['name'].present?
           result = result.where(users: {name: params['name']})
        end
        if params['active_serv'].present?
           result = result.where(servises: {active_serv: params['active_serv']})
        end
        if params['type_serv'].present?
           result = result.where(servises: {type_serv: params['type_serv']})
        end
        if params['price_serv'].present?
           result = result.where(servises: {price_serv: params['price_serv']})
        end   
        if params['time_of_payment'].present?
           result = result.where(servises: {time_of_payment: params['time_of_payment']})
        end   
        if params['login'].present?
           result = result.where(users: {time_of_payment: params['login']})
        end   
    result.all
    end
end
