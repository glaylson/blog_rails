Article.delete_all

user = User.find(14)
text = "asdfasdfasdfasdf"

p 'Iniciando ...'

Category.all.each do |category|
    30.times do
        Article.create!(
            title: "Article #{rand(10000)}",
            body: text,
            category_id: category.id,
            user_id: user.id,
            created_at: rand(365).days.ago
        )
    end    
end 

p 'Terminou!...'