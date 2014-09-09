require 'test_helper'

class ContractsControllerTest < ActionController::TestCase
  setup do
    @contract = contracts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contracts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contract" do
    assert_difference('Contract.count') do
      post :create, contract: { account: @contract.account, account_ex: @contract.account_ex, basis: @contract.basis, company: @contract.company, cont_admin: @contract.cont_admin, contract_no: @contract.contract_no, contract_type: @contract.contract_type, current_end_date: @contract.current_end_date, customer: @contract.customer, director: @contract.director, div_pool: @contract.div_pool, ecs_role: @contract.ecs_role, end_date_w_options: @contract.end_date_w_options, funded_amount: @contract.funded_amount, operating_div: @contract.operating_div, project_manager: @contract.project_manager, revenue_to_date: @contract.revenue_to_date, signed_contract_amount: @contract.signed_contract_amount, start_date: @contract.start_date, status: @contract.status, title: @contract.title, vehicle: @contract.vehicle }
    end

    assert_redirected_to contract_path(assigns(:contract))
  end

  test "should show contract" do
    get :show, id: @contract
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contract
    assert_response :success
  end

  test "should update contract" do
    patch :update, id: @contract, contract: { account: @contract.account, account_ex: @contract.account_ex, basis: @contract.basis, company: @contract.company, cont_admin: @contract.cont_admin, contract_no: @contract.contract_no, contract_type: @contract.contract_type, current_end_date: @contract.current_end_date, customer: @contract.customer, director: @contract.director, div_pool: @contract.div_pool, ecs_role: @contract.ecs_role, end_date_w_options: @contract.end_date_w_options, funded_amount: @contract.funded_amount, operating_div: @contract.operating_div, project_manager: @contract.project_manager, revenue_to_date: @contract.revenue_to_date, signed_contract_amount: @contract.signed_contract_amount, start_date: @contract.start_date, status: @contract.status, title: @contract.title, vehicle: @contract.vehicle }
    assert_redirected_to contract_path(assigns(:contract))
  end

  test "should destroy contract" do
    assert_difference('Contract.count', -1) do
      delete :destroy, id: @contract
    end

    assert_redirected_to contracts_path
  end
end
