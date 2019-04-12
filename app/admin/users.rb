ActiveAdmin.register User do
    permit_params :email, :password, :password_confirmation, :name, :lastname
    index do
        selectable_column
        id_column
        column :email
        column :name
        column :lastname
        column :created_at
        actions
      end
    form do |f|
        f.inputs do
          f.input :name 
          f.input :lastname
          f.input :email
          f.input :password
          f.input :password_confirmation
        end
        f.actions
      end
end
