class MembersController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource
  # before_filter :set_members, only: [:index]

  def index
    respond_with @members
  end

  def show
    respond_with @member
  end

  # GET /members/new
  def new
    @member = Member.new
  end

  def edit
  end

  def create
    @member = Member.new(member_params)
    @member.save
    respond_with @member
  end

  def update
    @member.update(member_params)
    respond_with @member
  end

  def destroy
    @member.destroy
    respond_with @member
  end

  private
  #
  def set_members
    @members = Member.all
  end
  #
  # # Use callbacks to share common setup or constraints between actions.
  # def set_member
  #   @member = Member.find(params[:id])
  # end

  # Never trust parameters from the scary internet, only allow the white list through.
  def member_params
    params.require(:member).permit(:first_name, :last_name, :birthday, :address,
     :city, :state, :zip, :phone, :email, :business_name, :business_url,
     :mentor, :leadership,
     children_attributes: [:name, :age])
  end
end
