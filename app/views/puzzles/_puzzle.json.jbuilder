json.extract! puzzle, :id, :puzzle_number, :published_on, :name, :submitted_by, :created_at, :updated_at
json.url puzzle_url(puzzle, format: :json)
