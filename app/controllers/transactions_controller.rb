class TransactionsController < ApplicationController
  before_action :set_transaction, only: [:show, :edit, :update, :destroy]
  before_action :login_required

  # GET /transactions
  def index
    @transactions = Transaction.where("account_from = ? OR account_to = ?", current_user.account.id, current_user.account.id )
  end

  # GET /transactions/1
  def show
  end

  # GET /transactions/new
  def new
    @transaction = Transaction.new
  end

  # POST /transactions
  def create
    @transaction = Transaction.new(transaction_params)
    account_from = current_user.account
    @transaction.account_from = account_from.id
    user_to = User.where(username: params[:transaction]['user_to']).first
    if user_to.nil?
      flash[:error] = 'Invalid user. Please give a valid username.'
      redirect_to :action => 'new'
      return
    end
    account_to = Account.where(user_id: user_to.id).first
    if account_to == nil
      # create account for receiver
      account_to = Account.create(user_id: user_to.id, currency_id: 1, balance: 0, credit_limit: APP_CONFIG['default_credit_limit'])
      @transaction.account_to = account_to.id
    else
      @transaction.account_to = account_to.id
    end

    if @transaction.save
      #change balances
      account_from.balance =- @transaction.amount
      account_from.save
      account_to.balance =+ @transaction.amount
      account_to.save
      redirect_to @transaction, notice: 'Transaction was successfully created.'
    else
      render action: 'new'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transaction
      @transaction = Transaction.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def transaction_params
      params.require(:transaction).permit(:account_from, :user_to, :amount, :notes)
    end
end
