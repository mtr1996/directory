module SideBarHelper
  def side_bar_items(ru)
    result = []
    result << {
      :name => 'Главная',
      :icon => 'list',
      :controller => :welcome, 
      :action => :index
    }
    result << {
      :name => 'Мой профиль',
      :icon => 'user',
      :controller => :forms, 
      :action => :profile
    }
    result << {
      :name => 'Услуги',
      :icon => 'credit-card',
      :controller => :servises, 
      :action => :index
    }
    result << {
       :name => 'Анкеты',
       :controller => :forms, :action => :index,
       :icon => 'users'
    }
    result << {
      :name => 'Поиск',
      :icon => 'search',
      :controller => :forms, 
      :action => :search
    }
    result << {
      :name => 'Администрирование',
      :icon => 'users',
      :children => [
      {:name => 'Пользователи',
       :controller => :users, :action => :index,
       :icon => 'users',
       :class => 'long'},
      {:name => 'Добавление',
       :controller => :forms, :action => :new,
       :icon => 'user-plus'},
      {:name => 'Роли',
       :controller => :roles, :action => :index,
       :icon => 'align-center',
       :class => 'long'},
    ]} 
    result
  end
  
  def is_open?(ctr, act)
    case ctr.to_s
    when 'users', 'roles'
      ctr.to_s == controller_name.to_s  
    else
      false
    end
  end
end
