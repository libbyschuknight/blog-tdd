require 'rails_helper'

RSpec.feature "User can add new article" do

  background do

  end

  scenario "user can add title & description to form and submit" do
    visit new_article_path

    fill_in "Title", with: "First new blog post"
    fill_in "Description", with: "This is the content part of my first blog post. This is where the main part of the blog post is written"

    click_link("Submit Article")

    expect do
      expect(page).to have_content("First new blog post")
      p page


    end


  end
end
