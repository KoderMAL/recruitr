# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Clearing all models
Recruiter.destroy_all
Participant.destroy_all
AvailablePosition.destroy_all
Skill.destroy_all

skills = Skill.create!([{
    content:'ruby'},{
        content:'management'},{
            content:'marketing'}])

available_positions = AvailablePosition.create!([{
    content:'developer', 
    skills:[skills.first]}, {
        content:'community manager',
        skills:[skills.second]}])

Participant.create!({
    first_name:'Amine',
    last_name:'Lalaoui',
    email:'amine@sykxlab.com',
    social_media:'github.com/KoderMAL', available_position: available_positions.first})

Recruiter.create!([{
    first_name:'Sandjiv',
    last_name:'Parassouramanaick',
    email:'sandjiv@drawbotics.com',
    position:'lead developer',
    seniority_score: 32
},{
    first_name:'Chiara',
    last_name:'Floreanini',
    email:'chiara@drawbotics.com',
    position:'human resources',
    seniority_score:32
},{
    first_name:'Stanislas',
    last_name:'Boyet',
    email:'stan@drawbotics.com',
    position:'cto',
    seniority_score:35
}])

p "Created #{Skill.count} skill(s) & #{AvailablePosition.count} position(s) & #{Participant.count} participant(s) & #{Recruiter.count} recruiter(s)"