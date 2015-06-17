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

  scenario "and a user click on 'Add comment' for article" do
    visit article_path(article)
    click_on("Add Comment")

    # expect page to redirect to new comment page? is this something that would be tested in here? is it something that the user would be thinking about / expecting to happen?
    p article


    expect(page).to have_content("Bananas")
  end

end
