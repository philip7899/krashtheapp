class QuestionsController < ApplicationController
	
	def new
		@question = Question.new
	end

	def create
		@question = Question.new(question_params)
		@question.save
		flash['success'] = "You have asked a question"
		redirect_to question_path(@question)
	end

	def show
		@question = Question.find(params['id'])
	end

	private

	def question_params
		return params.require('question').permit('content')
	end
	
end
