class Pokemon
  attr_accessor :id, :name, :type, :db, :hp
<<<<<<< HEAD

  def initialize (id:, name:, type:, db:, hp: nil)
    @id = id
=======
  
<<<<<<< HEAD
  def initialize (id:, name:, type:, db:, hp: nil)
=======
  def initialize (id:, name:, type:, db:, hp: 60)
>>>>>>> c1ebca52eeed757b38c28cba562af67c62147e03
    @id = id 
>>>>>>> 4e36e32281cbdee97482301fe205d34d3bf3a477
    @name = name
    @type = type
    @db = db
    @hp = hp
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

  def self.find(id, db)
<<<<<<< HEAD
    pokemon = db.execute("SELECT * FROM pokemon WHERE pokemon.id = ?", id).flatten
    #binding.pry
    new_pokemon = Pokemon.new(id: id, name: pokemon[1], type: pokemon[2], db: db, hp: pokemon[3])
    #binding.pry
<<<<<<< HEAD
  end
=======
=======
    pokemon = db.execute("SELECT * FROM pokemon WHERE pokemon.id = ?", id).flatten!
    new_pokemon = Pokemon.new(id: id, name: pokemon[1], type: pokemon[2], db: db)
>>>>>>> c1ebca52eeed757b38c28cba562af67c62147e03
  end 
>>>>>>> 4e36e32281cbdee97482301fe205d34d3bf3a477

  def alter_hp(new_hp, db)
    db.execute("UPDATE pokemon SET hp = ? WHERE id = ?", new_hp, self.id)
<<<<<<< HEAD
=======
    self.hp = new_hp
>>>>>>> c1ebca52eeed757b38c28cba562af67c62147e03
    #binding.pry
  end
end
