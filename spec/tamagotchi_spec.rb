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
      my_pet.time_passes()
      expect(my_pet.food_level()).to(eq(9))
    end
  end

  describe("#is_alive?") do
    it("is alive if the food level is above 0") do
      my_pet = Tamagotchi.new("lil Otto III")
      expect(my_pet.is_alive?()).to(eq("still kicking"))
    end
  end

  describe("#is_dead?") do
    it("is dead if the food level is at 0") do
      my_pet = Tamagotchi.new("lil Otto III")
      expect(my_pet.is_dead?()).to(eq("not yet"))
    end
  end

  describe("#feeding_time") do
    it("resets the food level back to 10") do
      my_pet = Tamagotchi.new("lil Otto III")
      expect(my_pet.food_level()).to(eq(10))
    end
  end
