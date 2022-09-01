class TransactionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_transactions, only: %i[index]
  before_action :set_owners, only: %i[list_by_store]

  def index; end

  def list_by_store
    render 'import_list'
  end

  def import_new
    @transaction = Transaction.new
  end

  def import
    parser = ImportService.new
    parser.import(params[:transaction][:import_file])

    flash[:success] = 'INFORMATIONS IMPORTED WITH SUCCESS!'

    redirect_to root_path, notice: "#{flash[:success]}"
  rescue StandardError => e
    flash[:error] = 'THE IMPORTED FILE IS INVALID!'

    redirect_to import_new_transactions_path, notice: "#{flash[:error]}"
  end

  private

  def set_transactions
    @transactions = Transaction.all
  end

  def set_owners
    @owners = Owner.all
  end
end
