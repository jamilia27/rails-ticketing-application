class UsersController < ApplicationController
  has_many :tickets
  has_many :concerts, through: :tickets
end
