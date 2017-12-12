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
  config.show_gravatar = false
 
  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new do
    except ['Action']             #new in model action is out
    end
    export                        #can export to csv
    bulk_delete
    show
    edit
    delete
    show_in_app
    pdf                           #pdf all models
    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end


  config.model Action do
    navigation_icon 'fa fa-check-square-o'

    list do
      field :name
      field :salas do
        label 'Labs'
      end
      field :email
      field :created_at
    end
    show do
      field :name
      field :salas do
      label 'Labs'
    end
      field :email
      field :status
      field :created_at
    end

  end
 
  config.model Aluno do #config model aluno
    navigation_icon 'fa fa-id-card-o'
    create do #config what fields can be seen in /create
      field :photo
      field :name do
        required true
      end
      field :email
      field :notes
      field :status do
        required true
      end
      field :salas  do
        label 'Labs'
      end
      field :user_id, :hidden do
        default_value do
          bindings[:view]._current_user.id
        end
      end
 
    end

    edit do
      field :photo
      field :name do
        required true
      end
      field :email
      field :notes
      field :status do
        required true
      end
      field :salas do
        label 'Labs'
      end
      field :user_id, :hidden do
        default_value do
          bindings[:view]._current_user.id
        end
      end
 
    end

    list do
      field :photo
      field :name
      field :salas do
        label 'Labs'
      end
      field :email
    end
    show do
      field :photo
      field :name
      field :salas do
        label 'Labs'
      end
      field :email
      field :status

    end
 
  end

  config.model User do
    navigation_icon 'fa fa-user-o'

    create do
      field :photo
      field :name do
        required true
      end
      field :kind do
        required true
      end
      field :status do
        required true
      end
      field :notes
      field :email do
      required true
    end
      field :password do
        required true
      end

    end

    edit do
      field :photo
      field :name do
        required true
      end
      field :kind
      field :status
      field :notes
      field :email do
        required true
      end
      field :password do
        required true
      end
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
      field :salas do
        label 'Labs'
      end
    end

  end

  config.model Sala do
    navigation_icon 'fa fa-desktop'

    create do

      field :name do
        required true
      end
      field :description
      field :status do
        required true
      end
      field :photo
      field :user_id, :hidden do #field user_id is secretly blinded to current user
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


  config.model TheRasp do
    navigation_icon 'fa fa-sign-in'

    create do
      field :rasp_id do
        required true
      end

      field :door_id_t do
        required true
      end

    end

    show do
      field :rasp_id
      field :door_id_t
    end

    list do
      field :rasp_id
      field :door_id_t do
        label 'Door'
      end
    end

  end

end




