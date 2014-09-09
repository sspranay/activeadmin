class ContractsController < InheritedResources::Base
	def new
		@contract = Contract.new
	end

	def index
		@contracts = Contract.all
	end

	def create
		@contract = Contract.create(accepted_params)
		#render plain: (accepted_params).inspect
		if @contract.save
			redirect_to :action => :index
		else
			render :action => :new
		end		
	end

	def show
		@contract = Contract.find(params[:id])
	end

private
  def accepted_params
    params.require(:contract).permit(:account, :customer, :title, :contract_no, :status, :start_date, :current_end_date, :end_date_w_options,
     :revenue_to_date, :funded_amount, :company, :div_pool, :operating_div, :basis, :vehicle, :contract_type, :ecs_role, :signed_contract_amount,
     :account_ex, :director, :project_manager, :cont_admin)
  end
end
