require 'rails_helper'

RSpec.describe Question, type: :model do
  describe '#title' do
    context '新規の質問を投稿した場合' do
      let(:question) { Question.new(title:'Hello World!')}

      it '質問が正しく保存されること' do
        expect(question.title).to eq 'Hello World!'
      end
    end
  end  
end
