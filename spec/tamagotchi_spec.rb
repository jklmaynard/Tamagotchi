require('rspec')
require('tamagotchi')
require('pry')

describe("Tamagotchi")

  describe("#initialize") do
    it("sets the name and a few other properties") do
      my_pet = Tamagotchi.new("lil Otto III")
      expect(my_pet.name()).to(eq("lil Otto III"))
      expect(my_pet.food_level()).to(eq(10))
      expect(my_pet.sleep_level()).to(eq(10))
      expect(my_pet.activity_level()).to(eq(10))
    end
  end

  describe("#time_passes") do
    it("decreases the amount of food the Tamagotchi has left by 1") do
      my_pet = Tamagotchi.new("lil Otto III")
      expect(my_pet.food_level()).to(eq(9))
    end
  end
