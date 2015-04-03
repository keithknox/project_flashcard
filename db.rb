require 'active_record'


ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :database => "flashcards_db"
)

  class CreateFlashcards < ActiveRecord::Migration

    def initialize
      create_table :subjects do |column|
        column.string :name
      end

      create_table :cards do |column|
        column.belongs_to :subject
        column.string :question
        column.string :answer
        column.boolean :correct
        column.boolean :incorrect
        column.string :timestamp
      end
    end
end
# CreateFlashcards.new
