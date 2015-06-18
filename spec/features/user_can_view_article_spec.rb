require 'rails_helper'

feature "User can view an article" do
  # background do
  #   @article = FactoryGirl.create(:article, title: "Bananas")
  # end

  # think it needs to be create rather than build because want the title to be put onto the comments page
  # although I won't be accessing the comments page through this test???
  let(:article) { FactoryGirl.create(:article, title: "Bananas") }


  scenario "it shows an articles' details" do
    visit article_path(article)
    expect(page).to have_content(article.title)
    expect(page).to have_content(article.description)
  end

  scenario "it shows a form for adding a comment" do
    visit article_path(article)
    expect(page).to have_content("Add a comment:")
    # can I test if there is a form on the page??
  end


  # now need to test what happens when form is filled in and submit is clicked



end
