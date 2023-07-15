class ExhibitionsController < ApplicationController
  
  def index
    @museums = Museum.all.map do |museum|
      {
        "name":        museum.name,
        "address":     museum.address,
        "exhibitions": museum.exhibitions.all.map { |e| e.title },
      }
    end
  end

end
