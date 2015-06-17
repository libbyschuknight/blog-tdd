require 'rails_helper'

RSpec.feature "User can add new article" do

  background do

  end

  scenario "user can add title to form" do
    visit new_article_path

    fill_in "Title", with: "First new blog post"
    fill_in "Description", with: "This is the content part of my first blog post. This is where the main part of the blog post is wrtitten"
    click_button "Submit Article"

    expect do
      expect(page).to

    end





  end




end
