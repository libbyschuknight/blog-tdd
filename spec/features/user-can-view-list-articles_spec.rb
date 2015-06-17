require 'rails_helper'

feature "User can view a list of articles" do
  background do
    Article.destroy_all
    @articles = FactoryGirl.create_list(:article, 10)
  end

  scenario "it shows a list of articles" do
    visit articles_path(@artciles)
    # expect page to have a list of 10 titles??
    # or just test that last article is showing
    # can you test for all to show?
    # or would first and last be good, or would just having last be fine??

    puts body

    # expect(page).to have_selector("id", @articles.last.id)

    expect(page).to have_content("id='#{@articles.last.id}'")



  end



end
