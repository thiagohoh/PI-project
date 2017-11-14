class Ability
  include CanCan::Ability

  def initialize(user) #define current user

    user ||= User.new
    alias_action :create, :read, :update, :destroy, :to => :crud #define create read destroy  to hash crud

    if user

      if user.kind == 'professor' # if user kind is
        can :access, :rails_admin #can access rails admin
        can :dashboard # can access dashboard
        #can :manage,:all
        can :crud, Aluno # crud model Aluno

        can :read, Action # can only read model Action
        can :update, Sala, status: :active # can update model sala if sala is active
      end
      if user.kind == 'limpeza'
        #can :read,:all
        can :access, :rails_admin
        can :dashboard
        can :access, :rails_admin
        can :read,:dashboard
        can :read ,Sala
      end
     if user.kind == 'adm'
        can :manage, :all

      end
    end
  end
end
