class WeaponsController < ApplicationController
  def index
  		@weapons = Weapon.all
  end

  def show
  	@weapon = Weapon.find(params[:id])
  end

  def new
  	@weapon = Weapon.new
  end

  def create
		@weapon = Weapon.new
		@weapon.name = params[:weapon][:name]
		@weapon.value = params[:weapon][:value]
		
		@weapon.save
		redirect_to"/weapons/#{@weapon.id}"
	end

	def edit
		@weapon = Weapon.find(params[:id])
	end

	def update
		@weapon = Weapon.find(params[:id])

		@weapon.update({:name => params[:weapon][:name], :value => params[:weapon][:value]})

		redirect_to '/weapons/'		
	end

	def delete
		@weapon = Weapon.find(params[:id])
		@weapon.destroy

		redirect_to '/weapons/'
	end
end
