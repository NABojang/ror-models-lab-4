class FoodController < ApplicationController
  # def chef
  #   @chef = Chef.all
  # end
  #
  # def dish
  #   @dish = Dish.all
  # end
  #
  # def name
  #   @name = params[:name]
  #
  # end
  def list
    @chefs= CreateChef.all
   end

# The show method's @book = food.find(params[:id]) line tells Rails to find only the food that has the id defined in params[:id].
   def show
     @chef= CreateChef.find(params[:name])
   end

# The new method lets Rails know that you will create a new object.
   def new
   @chef = CreateChef.new
   @dishs = Dishes.all
   end

   def create
   @chef = CreateChef.new(chef_params)
   if @chef.save
      redirect_to :action => 'list'
   else
      @dishs = Dish.all
      render :action => 'new'
   end

end

def chef_params
   params.require(:chefs).permit(:first_name, :last_name, :age)
end

   def edit
     @chef= CreateChef.find(params[:name])
     @dishs = Dish.all
   end

   def update
     @chef= CreateChef.find(params[:name])
     if @chef.update_attributes(chef_param)
     redirect_to :action => 'show', :name => @chef
      else
         @dishs = Dish.all
         render :action => 'edit'
      end

    end

    def chef_param
      params.require(:chefs).permit(:first_name, :last_name, :age)
    end


    def delete
    CreateChef.find(params[:name]).destroy
    redirect_to :action => 'list'
    end


end
