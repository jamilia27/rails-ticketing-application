class TicketsController < ApplicationController
  belongs_to :concert
  belongs_to :user
end
