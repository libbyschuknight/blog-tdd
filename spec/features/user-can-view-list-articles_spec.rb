require 'rails_helper'

feature "User can view a list of articles" do
  background do
    Article.destroy_all
    @articles = FactoryGirl.create_list(:article, 10)
  end

  scenario "it shows a list of articles" do
    visit articles_path(@artciles)
    # expect page to have a list of 10 titles
    expect(page).to have_selector('class', 'title')
  end



end
