# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

references_form = FormConfig.create!(title: 'references')
references_form.field_configs.create!(
  name: 'strengths_and_weaknesses',
  label: "What are the applicant’s major strengths and weaknesses?",
  field_type: :text_area,
  options: nil,
  position: 1,
  required: true
)
references_form.field_configs.create!(
  name: 'rating',
  label: "How would you rate this applicant amongst his/her peers?",
  field_type: :select,
  options: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
  position: 2,
  required: false
)
references_form.field_configs.create!(
  name: 'other_comments',
  label: 'Other comments',
  field_type: :text_area,
  options: nil,
  position: 3,
  required: true,
  repeatable: true
)
