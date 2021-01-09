class PartiesController < ApplicationController

	def new
		if params[:user_id] && !User.exists?(params[:user_id])
			redirect_to '/login', alert: "User not found."
		elsif session[:user_id]
			@user = current_user
		end
		@party = Party.new

	end

	def index
		@parties = Party.all
	end

	def show
		if params[:user_id] 
			@party = current_user.parties.find(params[:id])
			@ticket = Ticket.find_by(party_id: @party.id, user_id: current_user.id)
			@num_of_attendees = @ticket.num_of_attendees
			if @party == nil
				flash[:alert] = "You have not joined this party."
				redirect_to party_path(params[:id])
			end
		else
			@party = Party.find(params[:id])
			@ticket = Ticket.new
		end
	end

	def create
		if logged_in?
			@party = Party.new(party_params)
			if @party.save
				# @party.users << current_user
				redirect_to party_path(@party)
			else
				render :new
			end
		end
	end

	def edit
		if logged_in? && current_user.id == params[:user_id]
			@party = Party.find_by(organizer: current_user.name)
		end
	end

	def update
		if params[:user_id]
			@party = Party.find(params[:id])
			@party.users << current_user
			redirect_to user_path(current_user)
		end
	end

	def destroy
		if params[:user_id]
			@party = current_user.parties.find(params[:id])
			current_user.parties.delete(@party)
			flash[:alert] = "You just gave up tickets to this party."
			redirect_to party_path(@party)
		else
			@party = Party.find(params[:id])
			Party.delete(@party)
			redirect_to user_path(current_user)
		end
	end

	private

	def party_params
		params.require(:party).permit(:id, :name, :date, :time, :location, :organizer, :users, :description, :category_name, :tickets[:num_of_attendees])
	end

end
