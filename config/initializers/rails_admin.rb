RailsAdmin.config do |config|
 
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
 
    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
 
 
  config.model Aluno do
    create do
      field :name
      field :email
      field :notes
      field :status
      field :user_id, :hidden do
        default_value do
          bindings[:view]._current_user.id
        end
      end
 
    end
 
 
    edit do
      field :name
      field :email
      field :notes
      field :status
      field :user_id, :hidden do
        default_value do
          bindings[:view]._current_user.id
        end
      end
 
    end
 
  end
 
end
RAW Paste Data

RailsAdmin.config do |config|

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

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end


  config.model Aluno do
    create do
      field :name
      field :email
      field :notes
      field :status
      field :user_id, :hidden do
        default_value do
          bindings[:view]._current_user.id
        end
      end

    end


    edit do
      field :name
      field :email
      field :notes
      field :status
      field :user_id, :hidden do
        default_value do
          bindings[:view]._current_user.id
        end
      end

    end

  end

end
