require 'rails_helper'

RSpec.describe Article, type: :model do

  describe "#translate_description" do

    let(:article) { FactoryGirl.build(:article) }

    it "will translate the description to spanish if passed in 'spanish'" do
      allow(Translate).to receive(:text).and_return("Ola")
      allow(Logger).to receive(:log)
      expect(article.translate_description("spanish")).to eq("Ola")
    end

    it "will log the translation" do
      allow(Translate).to receive(:text).and_return("Ola")
      expect(Logger).to receive(:log).with("Hello", "Ola")
      article.translate_description("spanish")
    end

  end

end
