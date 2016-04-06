class UserLessonAssoc < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.has_and_belongs_to_many :lesson, index: true
    end

    change_table :lessons do |t|
      t.has_and_belongs_to_many :user, index: true
    end
  end
end
