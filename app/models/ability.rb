class Ability
  include CanCan::Ability

# ....::::::: el segundo que probe :::::.......
    def initialize(user)
      user ||= AdminUser.new

      if user.role == 'admin'
        can :manage, :all
      else
        can :read, :all
      end
    end

# ::::::aqui esta el codigo que estuvo funcionando normal antes del 13 de mayo
  #
  # def initialize(user)
  #   can :read, Home, public: true
  #
  #   if user.present?  # additional permissions for logged in users (they can read their own posts)
  #     can :read, Home, user_id: user.id
  #
  #     if user.admin?  # additional permissions for administrators
  #       can :read, Home
  #     end
  #   end
  # end
end
