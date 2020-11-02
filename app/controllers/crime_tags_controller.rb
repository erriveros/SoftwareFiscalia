class CrimeTagController < ApplicationController
  @crime_tags ||= CrimeTag.all
  # GET /crime_tags
  # GET /crime_tags.json
  def index
    @crime_tags ||= CrimeTag.all
  end
end
