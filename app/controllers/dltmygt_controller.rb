class DltmygtController < ApplicationController
  def index
    @tournaments = Tournament.all
  end
end