class ArticlesController < ApplicationController
  def index
    render status: :ok, json: { asdasdasda: 'dsaasd', asdasda: "asdasd" }
  end
end
