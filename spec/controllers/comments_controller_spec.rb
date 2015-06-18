require 'rails_helper'

RSpec.describe CommentsController, type: :controller do

  before do
    # destroy comments??
  end

  describe "#create" do
    before do
      # @valid_params = FactoryGirl.attributes_for(:comment)
      # post :create, {:comment => @valid_params}

      @article = FactoryGirl.create(:article)
      new_comment = FactoryGirl.


      @comment = Comment.find_by(@va)
    end

    it "a new comment is created" do
      expect(@comment).to be_truthy
    end

  end
end
