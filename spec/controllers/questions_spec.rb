require 'rails_helper'

RSpec.describe QuestionsController, type: :controller do
  describe 'POST #create' do
    context '正しい質問データが渡ってきた場合' do
      let(:params) do
        { question: {
          title: 'hello world!',
          content: '最初の質問です。',
          solved_status: "1",
          created_user_id: 1,
          created_at: '2023-01-08 10:36:53.296135000 +0000',
          updated_at: '2023-01-08 10:36:53.296135000 +0000'
        }
        }
      end

      it '質問が1つ増えていること' do
        expect { post :create, params: params }.to change(Question, :count).by(1)
      end

      # it '詳細ページにリダイレクトされること' do
      #   expect(post :create, params: params).to redirect_to(question_path[:id])
      # end
    end 
  end
end
