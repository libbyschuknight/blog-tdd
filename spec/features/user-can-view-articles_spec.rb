require 'rails_helper'

feature "User can view articles" do
  background do
    @article = FactoryGirl.create(:article)
  end

  scenario "it shows an article details" do
    visit article_path(@article)
    expect(page).to have_content(@article.title)
    expect(page).to have_content(@article.description)
  end

end
