class Ability
  include CanCan::Ability

  def initialize(user)

    user ||= User.new
    alias_action :create, :read, :update, :destroy, :to => :crud

    if user

      if user.kind == 'professor'
        can :access, :rails_admin
        can :dashboard
        #can :manage,:all
        can :crud, Aluno if user.kind == 'professor'
        can :crud, Aluno
        can :read, Action
        can :crud, Sala, status: :active
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
