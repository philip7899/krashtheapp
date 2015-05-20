class QuestionsController < ApplicationController
	
	def new
		@question = Question.new
	end

	def create
		@question = Question.new(question_params)
		@question.save
		render 'new'
	end

	private

	def question_params
		return params.require('question').permit('content')
	end
	
end
