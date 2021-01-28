# == Schema Information
#
# Table name: courses
#
#  id            :bigint           not null, primary key
#  name          :string
#  prereq_id     :integer
#  instructor_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Course < ApplicationRecord


    has_many :enrollments,
        primary_key: :id,
        foreign_key: :enrollment_id,
        class_name: :Enrollment

    has_many  :users,
        primary_key: :id,
        foreign_key: :enrollment_id,
        class_name: :User


    validates :name, null: false
    validates :prereq_id, null: false
    validates :instructor_id, null: false







end
