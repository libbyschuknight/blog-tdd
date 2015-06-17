require 'rails_helper'

RSpec.describe Article, type: :model do

  describe "#translate_description" do

    let(:article) { FactoryGirl.build(:article, description: "Hello") }
    let(:spanish_translator) { double(:spanish_translator, text: "Ola") }

    it "will translate the description to spanish if given a spanish translator" do
      allow(Logger).to receive(:log)
      expect(article.translate_description(spanish_translator)).to eq("Ola")
    end

    it "will log the translation" do
      allow(BadTranslator).to receive(:text).and_return("Ola")
      expect(Logger).to receive(:log).with("Hello", "Ola")
      article.translate_description(spanish_translator)
    end

  end

end
