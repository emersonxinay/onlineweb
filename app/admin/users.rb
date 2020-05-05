ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :provider, :uid, :name, :image
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :provider, :uid, :name, :image]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  permit_params :email, :password

  index do
     column :id
     column :email

     column :email_provider do |user|
         user.email.split('@').last.capitalize
       end
     column :member_since do |user|
       time_ago_in_words(user.created_at)
       end
       actions
   end
   form do |f|
      #arreglando vista
      inputs 'agregando un nuevo usuario' do
        input :email
        input:password
      end

      actions #activa los botones existentes
    end

    controller do
    def update
        if(params[:user][:password].blank? && params[:user][:password_confirmation].blank?)
            params[:user].delete("password")
            params[:user].delete("password_confirmation")
        end
      super #es para que siga su flujo normal
    end
  end
  filter :email, as: :select # filtrar solo correo y con dropdown (seleccione con detalle en un boton para que elijas )
     #filtro para fecha de creacion de la cuenta


end
