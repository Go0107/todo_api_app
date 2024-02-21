todos = ["寝る", "起きる", "顔を洗う"]

todos.each do |title|
    Todo.create(title: title)
end