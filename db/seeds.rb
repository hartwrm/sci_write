# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])


#   Character.create(name: 'Luke', movie: movies.first)
# Prompt.create([{writing_prompt: "It’s not really a fly. If you swat it, they’ll just fine you and send two more."}, {writing_prompt: "We’re headed to Madam Maxime’s at the edge of the universe."}, {writing_prompt: "Why grieve when you can keep your loved one encased in Forever Glass™?"}, {writing_prompt: "A group of intelligence-enhanced lab animals must find a way to communicate before their turn in the euthanization chamber."}])
#
#
CrowdStory.create([
  {story: "Chapter 1: Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.", prompt_id: 1},
  {story: "Chapter 2: It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", prompt_id: 1},
  {story: "Prologue: Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.", prompt_id: 2},
  {story: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.", prompt_id: 2}])
p "seeded db"
