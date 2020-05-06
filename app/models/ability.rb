class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Home, public: true

    if user.present?  # additional permissions for logged in users (they can read their own posts)
      can :read, Home, user_id: user.id

      if user.admin?  # additional permissions for administrators
        can :read, Home
      end
    end
  end
end
