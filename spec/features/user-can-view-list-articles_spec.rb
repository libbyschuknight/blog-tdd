require 'rails_helper'

feature "User can view a list of articles" do
  background do
    Article.destroy_all
    FactoryGirl.create(:article, title: "First post!", description: "Kia ora.. Morningside for life, this cool housie is as kiwi as as a pretty suss hongi. Mean while, in West Auckland, Jim Hickey and Rhys Darby were up to no good with a bunch of crook mates. The outrageously awesome force of his cooking up a feed was on par with James and the Giant Peach's bung cookie time. Put the jug on will you bro, all these random hangis can wait till later.")
    FactoryGirl.create(:article, title: "Last post!")
  end

  scenario "it shows a list of articles" do
    visit articles_path(@artciles)

    expect(page).to have_content("First post!")
    expect(page).to have_content("Last post!")
    expect(page).to have_content("Kia ora.. Morningside for life, this cool...")
  end

  scenario "user clicks title and is redirected to article page" do
    visit articles_path(@articles)

    click_on("First post!")

    expect(page).to have_content("First post!")
    expect(page).to have_content("Kia ora.. Morningside for life, this cool housie is as kiwi as as a pretty suss hongi. Mean while, in West Auckland, Jim Hickey and Rhys Darby were up to no good with a bunch of crook mates. The outrageously awesome force of his cooking up a feed was on par with James and the Giant Peach's bung cookie time. Put the jug on will you bro, all these random hangis can wait till later.")
  end

end




## would all of this actually be view testing not controller testing??
# expect to have on the page title text
  # and a place for user to write in title
# expect to have on the page descriptuon text
  #and a place for the user to write in the description (content) of the article
# need form for user to add in title and description
