# frozen_string_literal: true

class ConcertsController < ApplicationController
  def index
    @concerts = Concert.all
  end

  def show
    @concert = Concert.find_by(id: params[:id])
  end
end
