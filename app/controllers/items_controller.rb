class ItemsController < ApplicationController
  def index
    @items = ItemsFacade.items
  end

  def show
  end
end
