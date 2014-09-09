json.array!(@contracts) do |contract|
  json.extract! contract, :id, :account, :customer, :title, :contract_no, :status, :start_date, :current_end_date, :end_date_w_options, :revenue_to_date, :funded_amount, :company, :div_pool, :operating_div, :basis, :vehicle, :contract_type, :ecs_role, :signed_contract_amount, :account_ex, :director, :project_manager, :cont_admin
  json.url contract_url(contract, format: :json)
end
