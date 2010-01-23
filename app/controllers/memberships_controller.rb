class MembershipsController < ApplicationController
  
  def new
    @membership = Membership.new
  end
    
  def create
    user = User.find(params[:user_id])
    group = Group.find(params[:group_id])
    
    @membership = Membership.new(:user => user, :group => group)
    @membership.save!
    
    respond_to do |format|
      if @membership.save
        flash[:notice] = 'Membership was successfully created.'
        format.html { redirect_to(user) }
        format.xml  { render :xml => @membership, :status => :created, :location => @membership }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @membership.errors, :status => :unprocessable_entity }
      end
    end
    
  end
  
  def destroy
    @membership = Membership.find(params[:id])
    @membership.destroy

    respond_to do |format|
      format.html { redirect_to(memberships_url) }
      format.xml  { head :ok }
    end
  end
  
end
