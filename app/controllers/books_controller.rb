class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @books = Book.all
  end

  def new
    redirect_to user_session_path unless user_signed_in?
    @book = Book.new
    @book.questions.build
  end

  def create
    @book = Book.create(book_params)
    # @book_questions = @book.questions.create(book_params)

    if @book.save
      redirect_to new_book_path, notice: "保存しました"
    else
      pp @book.errors.full_messages
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :overview, :genre, questions_attributes: [:item, :id, :book_id]).merge(user_id: current_user.id)
  end

end
