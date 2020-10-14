class AccountsController < ApplicationController
  layout 'authentication'

  def new
    @account = Account.new
    @account.users.build
  end

  def create
    @account = Account.new(account_params)

    respond_to do |format|
      if @account.save
        sign_in_user
        format.html { redirect_to bugs_path, notice: 'Welcome to BugTracker!' }
        format.json { render 'bugs/index' }
      else
        format.html { render :new }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def account_params
    params.require(:account).permit(:name,
                                    users_attributes:
                                    %i[name email password password_confirmation])
  end

  def sign_in_user
    user = User.find_by_email(account_params[:users_attributes]['0'][:email])
    sign_in user
  end
end
