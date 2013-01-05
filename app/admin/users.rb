ActiveAdmin.register User do
  scope :not_approved

  index do
    column :id
    column :email
    column :last_sign_in_at
    column :approved
    default_actions
  end

  form do |f|
    f.inputs "User Details" do
      f.input :email
      f.input :approved
    end
    f.buttons
  end

end
