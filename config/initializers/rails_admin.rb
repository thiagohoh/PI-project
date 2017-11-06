RailsAdmin.config do |config|

  require Rails.root.join('lib', 'rails_admin', 'rails_admin_pdf.rb')
  RailsAdmin::Config::Actions.register(RailsAdmin::Config::Actions::Pdf)
  config.main_app_name = %w(UTFPR DOOR)
  ### Popular gems integration
 
  ## == Devise ==
   config.authenticate_with do
     warden.authenticate! scope: :user
   end
   config.current_user_method(&:current_user)
 
  ## == Cancan ==
   config.authorize_with :cancan
 
  ## == Pundit ==
  # config.authorize_with :pundit
 
  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0
 
  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration
 
  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true
 
  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new do
    except ['Action']
    end
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
    pdf do
      only ['User'] && ['Aluno']
    end
    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
 
 
  config.model Aluno do
    navigation_icon 'fa fa-id-card-o'
    create do
      field :photo
      field :name
      field :email
      field :notes
      field :status
      field :salas
      field :user_id, :hidden do
        default_value do
          bindings[:view]._current_user.id
        end
      end
 
    end
 
 
    edit do
      field :photo
      field :name
      field :email
      field :notes
      field :status
      field :salas
      field :user_id, :hidden do
        default_value do
          bindings[:view]._current_user.id
        end
      end
 
    end

    list do
      field :photo
      field :name
      field :salas
      field :email
    end
    show do
      field :photo
      field :name
      field :salas
      field :email
      field :status

    end
 
  end

  config.model User do
    navigation_icon 'fa fa-user-o'

    create do
      field :photo
      field :name
      field :kind
      field :status
      field :notes
      field :email
      field :password

    end

    edit do
      field :name
      field :kind
      field :status
      field :notes
      field :email
      field :password
      field :photo
    end

    list do

      field :photo
      field :name
      field :kind
      field :notes
      field :email
      field :status


    end

    show do
      field :photo
      field :name
      field :kind
      field :notes
      field :email
      field :status
      field :alunos
      field :salas
    end

  end

  config.model Sala do

    create do

      field :name
      field :description
      field :status
      field :photo
      field :user_id, :hidden do
        default_value do
          bindings[:view]._current_user.id
        end

      end

    end

    list do
      field :photo
      field :name
      field :description
      field :status
    end

  end

 
end
