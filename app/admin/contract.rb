ActiveAdmin.register Contract do

  filter :account
  filter :customer
  filter :title
  filter :status

scope :all, :default => true
  scope :Active do |contracts|
    contracts.where(:status => "A")
  end
  scope :Complete do |contracts|
    contracts.where(:status => "C")
  end


  index do
    selectable_column
    column("account", :sortable => :account) {|contract| link_to "#{contract.account} ", admin_contract_path(contract) }
    column :customer
    column :title
    column :current_end_date
    column("Funded Amount", :sortable => :funded_amount) {|contract| number_to_currency contract.funded_amount }
    column("Revenue to Date", :sortable => :revenue_to_date) {|contract| number_to_currency contract.revenue_to_date }
    column("Funds Remaining") {|contract| number_to_currency contract.funded_amount - contract.revenue_to_date }
    actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  permit_params :account, :customer, :title, :contract_no, :status, :start_date, :current_end_date, :end_date_w_options,
     :revenue_to_date, :funded_amount, :company, :div_pool, :operating_div, :basis, :vehicle, :contract_type, :ecs_role, :signed_contract_amount,
     :account_ex, :director, :project_manager, :cont_admin
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
