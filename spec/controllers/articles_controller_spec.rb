require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  describe '#show' do

    before do
      @article = FactoryGirl.create(:article)
    end

    it 'finds an article' do
      get :show, id: @article.id
      expect(assigns(:article).id).to eq(@article.id)
    end

    context "when article doesn't exist" do
      before {get :show, id: @article.id-1}

      it 'redirects to home page' do
        expect(response).to redirect_to(root_path)
      end

      it 'sets an error message in flash' do
        expect(flash[:error]).to_not be_nil
      end
    end


  end

end
