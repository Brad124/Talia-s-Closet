class CategoriesController < ApplicationController
    
     def index
        @category = Category.find(params[:id])
        @category_listings = @category.listings
        
     end
    
    
    def new
        @category = Category.new
        
    end
    
    def create
       
        
    end
    
    def edit
       
        
    end
    
    
    def update
       
            
    end
    
        
        
        
    
    def show
        @category = Category.find(params[:id])
        @category_listings = @category.listings
        
    end
    
  
        
    
    

    
    
    
end
